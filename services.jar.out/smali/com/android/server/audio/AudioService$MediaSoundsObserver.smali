.class final Lcom/android/server/audio/AudioService$MediaSoundsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSoundsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_MEDIA_PRIORITY_MANUAL:Landroid/net/Uri;

.field private final ZEN_MODE_MEDIA_SILENT_MANUAL:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1

    .prologue
    .line 7351
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7352
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7346
    const-string v0, "oem_zen_media_silent_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->ZEN_MODE_MEDIA_SILENT_MANUAL:Landroid/net/Uri;

    .line 7348
    const-string v0, "oem_zen_media_priority_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->ZEN_MODE_MEDIA_PRIORITY_MANUAL:Landroid/net/Uri;

    .line 7353
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7356
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->ZEN_MODE_MEDIA_SILENT_MANUAL:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7357
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->ZEN_MODE_MEDIA_PRIORITY_MANUAL:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->update(Landroid/net/Uri;)V

    .line 7359
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 7363
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->update(Landroid/net/Uri;)V

    .line 7364
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7367
    iget-object v3, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "oem_zen_media_priority_switch"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lcom/android/server/audio/AudioService;->mMuteMediaPriority:Z
    invoke-static {v3, v0}, Lcom/android/server/audio/AudioService;->access$10902(Lcom/android/server/audio/AudioService;Z)Z

    .line 7369
    iget-object v3, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "oem_zen_media_silent_switch"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    # setter for: Lcom/android/server/audio/AudioService;->mMuteMediaSilent:Z
    invoke-static {v3, v0}, Lcom/android/server/audio/AudioService;->access$11002(Lcom/android/server/audio/AudioService;Z)Z

    .line 7371
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7372
    iget-object v3, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {}, Lcom/android/server/audio/AudioService;->isASBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/audio/AudioService;->isASWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    # &= operator for: Lcom/android/server/audio/AudioService;->mMuteMediaPriority:Z
    invoke-static {v3, v0}, Lcom/android/server/audio/AudioService;->access$10972(Lcom/android/server/audio/AudioService;I)Z

    .line 7373
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {}, Lcom/android/server/audio/AudioService;->isASBluetoothA2dpOn()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/server/audio/AudioService;->isASWiredHeadsetOn()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_3
    # &= operator for: Lcom/android/server/audio/AudioService;->mMuteMediaSilent:Z
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$11072(Lcom/android/server/audio/AudioService;I)Z

    .line 7375
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->maybeMuteMusic()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11100(Lcom/android/server/audio/AudioService;)V

    .line 7376
    return-void

    :cond_1
    move v0, v2

    .line 7367
    goto :goto_0

    :cond_2
    move v0, v2

    .line 7369
    goto :goto_1

    :cond_3
    move v0, v2

    .line 7372
    goto :goto_2

    :cond_4
    move v1, v2

    .line 7373
    goto :goto_3
.end method
