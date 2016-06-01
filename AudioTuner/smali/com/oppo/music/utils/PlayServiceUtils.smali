.class public Lcom/oppo/music/utils/PlayServiceUtils;
.super Ljava/lang/Object;
.source "PlayServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayServiceUtils"

.field public static mService:Lcom/oppo/music/service/IMediaPlaybackService;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static addTracks([Lcom/oppo/music/media/PlaylistItem;I)I
    .locals 5
    .param p0, "items"    # [Lcom/oppo/music/media/PlaylistItem;
    .param p1, "action"    # I

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 259
    .local v1, "result":I
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2, p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService;->addTracks([Lcom/oppo/music/media/PlaylistItem;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 267
    :cond_0
    :goto_0
    return v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTracks() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Landroid/content/ServiceConnection;

    .prologue
    const/4 v6, 0x1

    .line 67
    const-string v2, "PlayServiceUtils"

    const-string v3, "bindToService() context=%s, callback=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oppo.music.service.command"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    new-instance v0, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 73
    .local v0, "binder":Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, v1, v0, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    return v2
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Landroid/content/ServiceConnection;
    .param p2, "isApplicationContext"    # Z

    .prologue
    const/4 v6, 0x0

    .line 79
    const-string v1, "PlayServiceUtils"

    const-string v2, "bindToService() context=%s, callback=%s, isApplicationContext=%S"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz p2, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.music.service.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    invoke-virtual {p0, v0, p1, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 87
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p1}, Lcom/oppo/music/utils/PlayServiceUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v1

    goto :goto_0
.end method

.method public static checkServiceEnable()Z
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAlbumUnknownString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 604
    const/4 v1, 0x0

    .line 606
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->getAlbumUnknownString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 614
    :cond_0
    :goto_0
    return-object v1

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAlbumUnknownString() fail! e + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getArtistUnknownString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 590
    const/4 v1, 0x0

    .line 592
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->getArtistUnknownString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 600
    :cond_0
    :goto_0
    return-object v1

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArtistUnknownString() fail! e + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getBufferingPercent()I
    .locals 5

    .prologue
    .line 435
    const/4 v1, -0x1

    .line 437
    .local v1, "result":I
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->getBufferingPercent()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 445
    :cond_0
    :goto_0
    return v1

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBufferingPercent() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCueInnerPosition()I
    .locals 5

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 273
    .local v1, "result":I
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->getCueInnerPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 281
    :cond_0
    :goto_0
    return v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCueInnerPosition() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCurrentCueTrack(Landroid/content/Context;)Lcom/oppo/music/media/Track;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 522
    const/4 v1, 0x0

    .line 539
    .local v1, "result":Lcom/oppo/music/media/Track;
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->getCurrentCueTrack()Lcom/oppo/music/media/Track;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 547
    :cond_0
    :goto_0
    return-object v1

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentCueTrack() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;
    .locals 5

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 231
    .local v1, "result":Lcom/oppo/music/media/PlaylistItem;
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 239
    :cond_0
    :goto_0
    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPlaylistItem() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCurrentPosition()J
    .locals 6

    .prologue
    .line 383
    const-wide/16 v2, -0x1

    .line 385
    .local v2, "result":J
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/oppo/music/service/IMediaPlaybackService;->getCurrentPosition()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 393
    :cond_0
    :goto_0
    return-wide v2

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentPosition() fail! e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCurrentTrack(Landroid/content/Context;)Lcom/oppo/music/media/Track;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 502
    const/4 v1, 0x0

    .line 510
    .local v1, "result":Lcom/oppo/music/media/Track;
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->getCurrentTrack()Lcom/oppo/music/media/Track;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 517
    :cond_0
    :goto_0
    return-object v1

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentTrack() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCurrentTrackID()J
    .locals 4

    .prologue
    .line 565
    const-wide/16 v2, -0x1

    .line 567
    .local v2, "result":J
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;

    move-result-object v0

    .line 568
    .local v0, "item":Lcom/oppo/music/media/PlaylistItem;
    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0}, Lcom/oppo/music/media/PlaylistItem;->getID()J

    move-result-wide v2

    .line 572
    :cond_0
    return-wide v2
.end method

.method public static getDuration()J
    .locals 6

    .prologue
    .line 369
    const-wide/16 v2, -0x1

    .line 371
    .local v2, "result":J
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/oppo/music/service/IMediaPlaybackService;->getDuration()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 379
    :cond_0
    :goto_0
    return-wide v2

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDuration() fail! e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLyricPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;
    .locals 5
    .param p0, "item"    # Lcom/oppo/music/media/PlaylistItem;

    .prologue
    .line 487
    const/4 v1, 0x0

    .line 489
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->getLyricPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 497
    :cond_0
    :goto_0
    return-object v1

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLyricPath() fail! e + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMediaMountedCount()I
    .locals 5

    .prologue
    .line 449
    const/4 v1, -0x1

    .line 451
    .local v1, "result":I
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->getMediaMountedCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 459
    :cond_0
    :goto_0
    return v1

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMediaMountedCount() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPlayMode()I
    .locals 5

    .prologue
    .line 407
    const/4 v1, -0x1

    .line 409
    .local v1, "result":I
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlayMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 417
    :cond_0
    :goto_0
    return v1

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlayMode() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPlaylist()Lcom/oppo/music/media/Playlist;
    .locals 5

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 203
    .local v1, "result":Lcom/oppo/music/media/Playlist;
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlaylist()Lcom/oppo/music/media/Playlist;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 211
    :cond_0
    :goto_0
    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlaylist() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPlaylistCurrentPosition()I
    .locals 5

    .prologue
    .line 173
    const/4 v1, -0x1

    .line 175
    .local v1, "result":I
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlaylistCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 183
    :cond_0
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlaylistCurrentPosition() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;
    .locals 5
    .param p0, "position"    # I

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 217
    .local v1, "result":Lcom/oppo/music/media/PlaylistItem;
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 225
    :cond_0
    :goto_0
    return-object v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlaylistItem() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPlaylistItemPosition(JI)I
    .locals 6
    .param p0, "id"    # J
    .param p2, "type"    # I

    .prologue
    const/4 v3, -0x1

    .line 576
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getPlaylist()Lcom/oppo/music/media/Playlist;

    move-result-object v2

    .line 577
    .local v2, "list":Lcom/oppo/music/media/Playlist;
    if-nez v2, :cond_1

    move v0, v3

    .line 586
    :cond_0
    :goto_0
    return v0

    .line 580
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 581
    invoke-virtual {v2, v0}, Lcom/oppo/music/media/Playlist;->getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;

    move-result-object v1

    .line 582
    .local v1, "item":Lcom/oppo/music/media/PlaylistItem;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oppo/music/media/PlaylistItem;->getType()I

    move-result v4

    if-ne v4, p2, :cond_2

    invoke-virtual {v1}, Lcom/oppo/music/media/PlaylistItem;->getID()J

    move-result-wide v4

    cmp-long v4, v4, p0

    if-eqz v4, :cond_0

    .line 580
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "item":Lcom/oppo/music/media/PlaylistItem;
    :cond_3
    move v0, v3

    .line 586
    goto :goto_0
.end method

.method public static getPlaylistLength()I
    .locals 5

    .prologue
    .line 187
    const/4 v1, -0x1

    .line 189
    .local v1, "result":I
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlaylistLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    :cond_0
    :goto_0
    return v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlaylistLength() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getTrack(Landroid/content/Context;Lcom/oppo/music/media/PlaylistItem;)Lcom/oppo/music/media/Track;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/oppo/music/media/PlaylistItem;

    .prologue
    .line 552
    const/4 v1, 0x0

    .line 553
    .local v1, "result":Lcom/oppo/music/media/Track;
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2, p1}, Lcom/oppo/music/service/IMediaPlaybackService;->getTrack(Lcom/oppo/music/media/PlaylistItem;)Lcom/oppo/music/media/Track;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 561
    :cond_0
    :goto_0
    return-object v1

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTrack() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getTrackThumbPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;
    .locals 5
    .param p0, "item"    # Lcom/oppo/music/media/PlaylistItem;

    .prologue
    .line 473
    const/4 v1, 0x0

    .line 475
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->getTrackThumbPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 483
    :cond_0
    :goto_0
    return-object v1

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTrackThumbPath() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isBufferingBlocked()Z
    .locals 5

    .prologue
    .line 421
    const/4 v1, 0x0

    .line 423
    .local v1, "result":Z
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->isBufferingBlocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 431
    :cond_0
    :goto_0
    return v1

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBufferingBlocked() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPlaying()Z
    .locals 5

    .prologue
    .line 295
    const/4 v1, 0x0

    .line 297
    .local v1, "result":Z
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 305
    :cond_0
    :goto_0
    return v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPlaying() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static next()V
    .locals 4

    .prologue
    .line 349
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/oppo/music/service/IMediaPlaybackService;->next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 352
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 353
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static openPlaylist(Lcom/oppo/music/media/Playlist;)V
    .locals 4
    .param p0, "list"    # Lcom/oppo/music/media/Playlist;

    .prologue
    .line 153
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/oppo/music/service/IMediaPlaybackService;->openPlaylist(Lcom/oppo/music/media/Playlist;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openPlaylist() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static openPlaylistItem(Lcom/oppo/music/media/PlaylistItem;)V
    .locals 4
    .param p0, "item"    # Lcom/oppo/music/media/PlaylistItem;

    .prologue
    .line 143
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->openPlaylistItem(Lcom/oppo/music/media/PlaylistItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openPlaylistItem() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static pause()V
    .locals 4

    .prologue
    .line 319
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/oppo/music/service/IMediaPlaybackService;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 323
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static play()V
    .locals 4

    .prologue
    .line 329
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/oppo/music/service/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 333
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static playAll(Lcom/oppo/music/media/Playlist;I)V
    .locals 8
    .param p0, "list"    # Lcom/oppo/music/media/Playlist;
    .param p1, "position"    # I

    .prologue
    .line 118
    const-string v3, "PlayServiceUtils"

    const-string v4, "playAll() list=%s, position=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 123
    :try_start_0
    sget-object v3, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlaylist()Lcom/oppo/music/media/Playlist;

    move-result-object v1

    .line 124
    .local v1, "serviceList":Lcom/oppo/music/media/Playlist;
    sget-object v3, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlaylistCurrentPosition()I

    move-result v2

    .line 126
    .local v2, "servicePosition":I
    invoke-virtual {p0, v1}, Lcom/oppo/music/media/Playlist;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    if-eq p1, v2, :cond_0

    .line 128
    sget-object v3, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v3, p1}, Lcom/oppo/music/service/IMediaPlaybackService;->setPlaylistCurrentPosition(I)V

    .line 134
    :cond_0
    :goto_0
    sget-object v3, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/oppo/music/service/IMediaPlaybackService;->play()V

    .line 140
    .end local v1    # "serviceList":Lcom/oppo/music/media/Playlist;
    .end local v2    # "servicePosition":I
    :cond_1
    :goto_1
    return-void

    .line 131
    .restart local v1    # "serviceList":Lcom/oppo/music/media/Playlist;
    .restart local v2    # "servicePosition":I
    :cond_2
    sget-object v3, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v3, p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService;->openPlaylist(Lcom/oppo/music/media/Playlist;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1    # "serviceList":Lcom/oppo/music/media/Playlist;
    .end local v2    # "servicePosition":I
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PlayServiceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playAll() fail! e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static previous()V
    .locals 4

    .prologue
    .line 339
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/oppo/music/service/IMediaPlaybackService;->previous()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 343
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previous() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeTracks([J)I
    .locals 5
    .param p0, "positionList"    # [J

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 245
    .local v1, "result":I
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    :try_start_0
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->removeTracks([J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTracks() fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static seekTo(I)V
    .locals 4
    .param p0, "msec"    # I

    .prologue
    .line 359
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekTo() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setCueInnerPosition(I)V
    .locals 4
    .param p0, "position"    # I

    .prologue
    .line 285
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->setCueInnerPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCueInnerPosition() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setPlayMode(I)V
    .locals 4
    .param p0, "mode"    # I

    .prologue
    .line 397
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->setPlayMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayMode() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setPlayerAutoSave()V
    .locals 4

    .prologue
    .line 619
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/oppo/music/service/IMediaPlaybackService;->setPlayerAutoSave()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 622
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 623
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayerAutoSave() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setPlayerVolume(F)V
    .locals 4
    .param p0, "volume"    # F

    .prologue
    .line 630
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->setPlayerVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayerVolume() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setPlaylistCurrentPosition(I)V
    .locals 4
    .param p0, "position"    # I

    .prologue
    .line 163
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->setPlaylistCurrentPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlaylistCurrentPosition() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static shakeSwitch(Z)V
    .locals 3
    .param p0, "on"    # Z

    .prologue
    .line 463
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->shakeSwitch(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    const-string v2, "shakeSwitch() fail!"

    invoke-static {v1, v2, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static stop()V
    .locals 4

    .prologue
    .line 309
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/oppo/music/service/IMediaPlaybackService;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 313
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "PlayServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unbindService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const-string v1, "PlayServiceUtils"

    const-string v2, "unbindService() context=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;

    .line 95
    .local v0, "binder":Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;
    if-nez v0, :cond_1

    .line 96
    const-string v1, "PlayServiceUtils"

    const-string v2, "unbindService() try to unbind from unknown context."

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 102
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x0

    sput-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    goto :goto_0
.end method
