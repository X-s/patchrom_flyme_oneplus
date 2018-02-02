.class public Lcom/oneplus/gallery2/media/AlbumManager;
.super Lcom/oneplus/gallery2/media/MediaSourceComponent;
.source "AlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/AlbumManager$Album;,
        Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;,
        Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/gallery2/media/MediaSourceComponent",
        "<",
        "Lcom/oneplus/gallery2/media/MediaStoreMediaSource;",
        ">;"
    }
.end annotation


# static fields
.field public static EVENT_ALBUM_CREATED:Lcom/oneplus/base/EventKey; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/media/AlbumEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_NO_EMPTY_ALBUMS:I = 0x1

.field private static final MSG_ALBUMS_READY:I = 0x2711

.field private static final MSG_ALBUM_CREATED:I = 0x271a

.field private static final MSG_ALBUM_RENAMED:I = 0x271f

.field private static final MSG_MEDIA_ADDED_TO_ALBUM:I = 0x2724

.field private static final MSG_SETUP_ALBUM:I = 0x2710


# instance fields
.field private final m_Albums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/gallery2/media/AlbumManager$Album;",
            ">;"
        }
    .end annotation
.end field

.field private final m_AlbumsByMedia:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/AlbumManager$Album;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_AlbumsReady:Z

.field private final m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_OpenedMediaSetLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "AlbumCreated"

    const-class v2, Lcom/oneplus/gallery2/media/AlbumEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/AlbumManager;->EVENT_ALBUM_CREATED:Lcom/oneplus/base/EventKey;

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "Album media set manager"

    const-class v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 143
    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    .line 63
    new-instance v0, Lcom/oneplus/gallery2/media/AlbumManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/AlbumManager$1;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 144
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/AlbumMediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/AlbumManager;->onMediaSetMediaCountChanged(Lcom/oneplus/gallery2/media/AlbumMediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/AlbumManager;->onAlbumMediaSetListReleased(Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createDefaultMediaSets(Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;Lcom/oneplus/gallery2/media/AlbumManager$Album;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 244
    if-eqz p1, :cond_2

    .line 263
    iget-object v0, p2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    iget-object v1, p1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 264
    if-eqz v0, :cond_6

    .line 270
    :goto_0
    iget v1, p1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_7

    .line 272
    :cond_0
    invoke-virtual {p1, v0, v4}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 274
    :cond_1
    return-void

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_1

    .line 248
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    .line 249
    iget-object v3, v0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 250
    iget-object v1, p2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    :cond_3
    :goto_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 252
    :cond_4
    new-instance v4, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-object v5, p2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-direct {v4, v1, p0, v5, v3}, Lcom/oneplus/gallery2/media/AlbumMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 253
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v4, v1, v5}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 254
    iget-object v1, p2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_5

    .line 257
    :goto_3
    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto :goto_2

    .line 255
    :cond_5
    invoke-static {v4}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    .line 266
    :cond_6
    new-instance v1, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-object v2, p2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iget-object v3, p1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/oneplus/gallery2/media/AlbumMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 267
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 268
    iget-object v0, p2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    .line 270
    :cond_7
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    return-void
.end method

.method private onAlbumCreationCompleted(Lcom/oneplus/base/CallbackHandle;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    if-eqz p3, :cond_1

    .line 399
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    iget-wide v2, p3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAlbumCreationCompleted() - Album \'"

    const-string/jumbo v3, "\' ("

    iget-wide v4, p3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, ") created"

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    new-instance v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    invoke-direct {v0, p3}, Lcom/oneplus/gallery2/media/AlbumManager$Album;-><init>(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)V

    .line 411
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    iget-wide v2, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 414
    invoke-direct {p0, v1, v0}, Lcom/oneplus/gallery2/media/AlbumManager;->createDefaultMediaSets(Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;Lcom/oneplus/gallery2/media/AlbumManager$Album;)V

    .line 417
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/oneplus/gallery2/media/AlbumMediaSet;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 418
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 422
    :goto_0
    sget-object v1, Lcom/oneplus/gallery2/media/AlbumManager;->EVENT_ALBUM_CREATED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/gallery2/media/AlbumEventArgs;

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v6, v7, v0}, Lcom/oneplus/gallery2/media/AlbumEventArgs;-><init>(JLjava/util/List;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/media/AlbumManager;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 423
    return-void

    .line 389
    :cond_0
    return-void

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAlbumCreationCompleted() - Fail to create album \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 397
    :goto_1
    return-void

    .line 396
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;->onAlbumCreationCompleted(JZ[Lcom/oneplus/gallery2/media/AlbumMediaSet;I)V

    goto :goto_1

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAlbumCreationCompleted() - Duplicate album ID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 404
    :goto_2
    return-void

    .line 403
    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;->onAlbumCreationCompleted(JZ[Lcom/oneplus/gallery2/media/AlbumMediaSet;I)V

    goto :goto_2

    .line 419
    :cond_5
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;

    iget-wide v2, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;->onAlbumCreationCompleted(JZ[Lcom/oneplus/gallery2/media/AlbumMediaSet;I)V

    goto :goto_0
.end method

.method private onAlbumMediaSetListReleased(Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;)V
    .locals 4

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 430
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAlbumMediaSetListReleased() - All media set lists are released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 440
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/oneplus/gallery2/media/AlbumMediaSet;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 441
    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 442
    array-length v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 443
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->release()V

    goto :goto_0

    .line 431
    :cond_1
    return-void

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAlbumMediaSetListReleased() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " media set list(s) opened"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void

    .line 445
    :cond_3
    return-void
.end method

.method private onAlbumRenamingCompleted(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAlbumRenamingCompleted() - Album ID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    if-nez p5, :cond_2

    .line 465
    :cond_0
    return-void

    .line 452
    :cond_1
    return-void

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 457
    if-eqz v0, :cond_3

    .line 462
    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 463
    invoke-virtual {v0, p3, p4}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->onRenamed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAlbumRenamingCompleted() - No data for album "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method private onAlbumsReady()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAlbumsReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsReady:Z

    .line 473
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->ready()V

    .line 473
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 475
    :cond_0
    return-void
.end method

.method private onMediaAddedToAlbum(JLcom/oneplus/gallery2/media/Media;Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    if-eqz p4, :cond_2

    .line 516
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 517
    if-eqz v0, :cond_3

    .line 522
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->recycledMedia:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v1, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 540
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 541
    if-eqz v1, :cond_6

    .line 546
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_0
    return-void

    .line 506
    :cond_1
    return-void

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onMediaAddedToAlbum() - Fail to add "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to album "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void

    .line 519
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onMediaAddedToAlbum() - No data for album "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void

    .line 525
    :cond_4
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 528
    if-eqz v1, :cond_5

    .line 533
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 535
    invoke-virtual {v0, p3, v3}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_2

    .line 530
    :cond_5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 531
    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 543
    :cond_6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 544
    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private onMediaSetMediaCountChanged(Lcom/oneplus/gallery2/media/AlbumMediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 616
    invoke-static {p2}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v0

    .line 617
    invoke-static {p3}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v1

    .line 618
    if-eq v0, v1, :cond_1

    .line 620
    if-nez v1, :cond_2

    .line 632
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_4

    .line 634
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    .line 635
    iget v2, v0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 637
    invoke-virtual {v0, p1, v3}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 632
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 619
    :cond_1
    return-void

    .line 622
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 624
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    .line 625
    iget v2, v0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 627
    invoke-virtual {v0, p1, v3}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    .line 622
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 640
    :cond_4
    return-void
.end method

.method private removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;I)Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 739
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 740
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    if-eqz p3, :cond_2

    .line 746
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 747
    if-eqz v0, :cond_3

    .line 752
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 753
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v1, p4

    if-nez v1, :cond_4

    move v1, v2

    .line 755
    :goto_0
    if-eqz v1, :cond_5

    .line 787
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->recycledMedia:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 792
    :cond_0
    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 793
    invoke-virtual {v0, p3, v2}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_1

    .line 741
    :cond_1
    return v2

    .line 743
    :cond_2
    return v2

    .line 749
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeMediaFromAlbum() - Album "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " not found"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    return v2

    :cond_4
    move v1, v3

    .line 753
    goto :goto_0

    .line 757
    :cond_5
    if-eqz v4, :cond_9

    .line 761
    :cond_6
    instance-of v1, p3, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v1, :cond_a

    .line 777
    :cond_7
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 778
    if-nez v1, :cond_b

    .line 781
    :cond_8
    :goto_2
    instance-of v1, p3, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    return v3

    .line 757
    :cond_9
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->recycledMedia:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 758
    return v2

    .line 763
    :cond_a
    new-instance v4, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    move-object v1, p3

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;-><init>(JJ)V

    .line 764
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v5, Lcom/oneplus/gallery2/media/AlbumManager$6;

    invoke-direct {v5, p0, v4}, Lcom/oneplus/gallery2/media/AlbumManager$6;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;)V

    invoke-static {v1, v5}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    .line 771
    if-nez v1, :cond_7

    .line 773
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeMediaFromAlbum() - Fail to post to media content thread to remove media "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from album "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    return v2

    .line 778
    :cond_b
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 779
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 788
    :cond_c
    return v2

    .line 796
    :cond_d
    return v3
.end method

.method private setupAlbum(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 850
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 854
    new-instance v8, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/oneplus/gallery2/media/AlbumManager$Album;-><init>(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    iget-wide v4, v8, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 856
    if-nez v2, :cond_4

    .line 864
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 868
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 869
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 870
    if-nez p2, :cond_5

    .line 914
    :cond_0
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object/from16 v18, v6

    move v6, v5

    move-object/from16 v5, v18

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 916
    iget-object v3, v8, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 919
    if-eqz v3, :cond_d

    .line 924
    :goto_1
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v6, v6, 0x1

    .line 926
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSubMedia()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v3, v5

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 928
    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v14

    .line 929
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 931
    if-eqz v3, :cond_e

    move-object v2, v3

    .line 933
    :goto_3
    new-instance v3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    iget-wide v0, v8, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v3, v0, v1, v14, v15}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v2

    goto :goto_2

    .line 851
    :cond_3
    return-void

    .line 858
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setupAlbum() - Duplicate album : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    iget-wide v4, v2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    return-void

    .line 872
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/AlbumManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 873
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v7, v3

    :goto_4
    if-ltz v7, :cond_0

    .line 875
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    .line 876
    iget-wide v14, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    invoke-virtual {v2, v14, v15}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(J)Lcom/oneplus/gallery2/media/MediaStoreMedia;

    move-result-object v13

    .line 877
    if-eqz v13, :cond_6

    .line 884
    invoke-virtual {v13}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual {v13}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 902
    if-eqz v3, :cond_b

    .line 907
    :goto_5
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 908
    invoke-virtual {v2, v13, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getGroupedMedia(Lcom/oneplus/gallery2/media/Media;I)[Lcom/oneplus/gallery2/media/GroupedMedia;

    move-result-object v3

    .line 909
    if-nez v3, :cond_c

    move v3, v5

    .line 873
    :goto_6
    add-int/lit8 v5, v7, -0x1

    move v7, v5

    move v5, v3

    goto :goto_4

    .line 879
    :cond_6
    if-eqz v4, :cond_7

    .line 881
    :goto_7
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    .line 882
    goto :goto_6

    .line 880
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_7

    .line 887
    :cond_8
    iget-object v3, v8, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v5

    goto :goto_6

    .line 889
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 890
    if-eqz v3, :cond_a

    .line 895
    :goto_8
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 896
    add-int/lit8 v3, v5, 0x1

    goto :goto_6

    .line 892
    :cond_a
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 893
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v14, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 904
    :cond_b
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 905
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v14, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_c
    const/4 v13, 0x0

    .line 910
    aget-object v3, v3, v13

    check-cast v3, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_6

    .line 921
    :cond_d
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 922
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 932
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_3

    .line 937
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v10

    .line 938
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setupAlbum() - Take "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms to create album "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v10, v8, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " media"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    if-nez v5, :cond_10

    .line 957
    :goto_9
    if-nez v4, :cond_11

    :goto_a
    const/4 v2, 0x0

    .line 973
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/oneplus/gallery2/media/AlbumManager;->createDefaultMediaSets(Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;Lcom/oneplus/gallery2/media/AlbumManager$Album;)V

    .line 974
    return-void

    .line 943
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setupAlbum() - Add "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " album-media relations for album "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v8, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery2/media/AlbumManager$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5}, Lcom/oneplus/gallery2/media/AlbumManager$8;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Ljava/util/List;)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_9

    .line 959
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setupAlbum() - Remove "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " album-media relations for album "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v8, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery2/media/AlbumManager$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/oneplus/gallery2/media/AlbumManager$9;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Ljava/util/List;)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_a

    :cond_12
    move-object v5, v3

    goto/16 :goto_0
.end method

.method private setupAlbums()V
    .locals 2

    .prologue
    .line 980
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/AlbumManager$10;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/media/AlbumManager$10;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1009
    return-void
.end method


# virtual methods
.method addMediaToAlbum(JLcom/oneplus/gallery2/media/Media;)Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 152
    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    if-eqz p3, :cond_2

    .line 161
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 162
    if-eqz v0, :cond_3

    .line 167
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 171
    instance-of v1, p3, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v1, :cond_5

    .line 189
    iget-wide v0, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-direct {p0, v0, v1, p3, v9}, Lcom/oneplus/gallery2/media/AlbumManager;->onMediaAddedToAlbum(JLcom/oneplus/gallery2/media/Media;Z)V

    .line 192
    :cond_0
    return v9

    .line 153
    :cond_1
    return v8

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMediaToAlbum() - No media to add"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return v8

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addMediaToAlbum() - No data for album "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return v8

    .line 168
    :cond_4
    return v9

    .line 173
    :cond_5
    new-instance v2, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    move-object v1, p3

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;-><init>(JJ)V

    .line 174
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v3, Lcom/oneplus/gallery2/media/AlbumManager$2;

    invoke-direct {v3, p0, v2, p3}, Lcom/oneplus/gallery2/media/AlbumManager$2;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;Lcom/oneplus/gallery2/media/Media;)V

    invoke-static {v1, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    .line 182
    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addMediaToAlbum() - Fail to post to media content thread to add media "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to album "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return v8
.end method

.method public createAlbum(Ljava/lang/String;Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;)Lcom/oneplus/base/Handle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Lcom/oneplus/gallery2/media/AlbumManager$3;

    const-string/jumbo v1, "CreateAlbum"

    invoke-direct {v0, p0, v1, p2, v3}, Lcom/oneplus/gallery2/media/AlbumManager$3;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Ljava/lang/String;Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;Landroid/os/Handler;)V

    .line 216
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/AlbumManager$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/oneplus/gallery2/media/AlbumManager$4;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/base/CallbackHandle;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    .line 230
    if-eqz v1, :cond_1

    .line 237
    return-object v0

    .line 207
    :cond_0
    return-object v3

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createAlbum() - Fail to post to media content thread"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-object v3
.end method

.method deleteAlbum(J)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 282
    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 287
    if-eqz v0, :cond_1

    .line 291
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/AlbumManager$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/gallery2/media/AlbumManager$5;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;J)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    .line 299
    if-eqz v1, :cond_2

    .line 306
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 308
    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_1
    if-ltz v3, :cond_4

    .line 310
    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    .line 311
    iget-object v5, v2, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v6

    if-eq v5, v6, :cond_3

    .line 308
    :goto_2
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_1

    .line 283
    :cond_0
    return v3

    .line 288
    :cond_1
    return v3

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "deleteAlbum() - Fail to post to media content thread to delete album "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return v3

    .line 312
    :cond_3
    invoke-virtual {v2, v1, v7}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    goto :goto_2

    .line 314
    :cond_4
    sget-object v2, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 315
    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->release()V

    goto :goto_0

    .line 317
    :cond_5
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 318
    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 319
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteAlbum() - Delete album "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    return v7
.end method

.method getMedia(JLcom/oneplus/gallery2/media/MediaType;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/oneplus/gallery2/media/MediaType;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 332
    if-nez v0, :cond_0

    .line 334
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 333
    :cond_0
    new-instance v1, Lcom/oneplus/gallery2/media/MediaIterable;

    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    invoke-direct {v1, p3, v0}, Lcom/oneplus/gallery2/media/MediaIterable;-><init>(Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    return-object v1
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 343
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 378
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->handleMessage(Landroid/os/Message;)V

    .line 381
    :goto_0
    return-void

    .line 347
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 348
    aget-object v1, v0, v6

    check-cast v1, Lcom/oneplus/base/CallbackHandle;

    aget-object v2, v0, v7

    check-cast v2, Ljava/lang/String;

    aget-object v0, v0, v5

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-direct {p0, v1, v2, v0}, Lcom/oneplus/gallery2/media/AlbumManager;->onAlbumCreationCompleted(Lcom/oneplus/base/CallbackHandle;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)V

    goto :goto_0

    .line 354
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 355
    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v4, v0, v7

    check-cast v4, Ljava/lang/String;

    aget-object v5, v0, v5

    check-cast v5, Ljava/lang/String;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    :goto_1
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery2/media/AlbumManager;->onAlbumRenamingCompleted(JLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move v6, v7

    goto :goto_1

    .line 360
    :sswitch_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->onAlbumsReady()V

    goto :goto_0

    .line 365
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 366
    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v0, v0, v7

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    :goto_2
    invoke-direct {p0, v2, v3, v0, v6}, Lcom/oneplus/gallery2/media/AlbumManager;->onMediaAddedToAlbum(JLcom/oneplus/gallery2/media/Media;Z)V

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_2

    .line 372
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 373
    aget-object v1, v0, v6

    check-cast v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    aget-object v0, v0, v7

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/gallery2/media/AlbumManager;->setupAlbum(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;Ljava/util/List;)V

    goto :goto_0

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_4
        0x2711 -> :sswitch_2
        0x271a -> :sswitch_0
        0x271f -> :sswitch_1
        0x2724 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDeinitialize()V
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->clearMediaSetLists(Z)V

    .line 483
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 488
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 490
    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 491
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->release()V

    goto :goto_1

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 494
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 497
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onDeinitialize()V

    .line 498
    return-void
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 555
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 556
    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 576
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lcom/oneplus/gallery2/media/AlbumManager$Album;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/AlbumManager$Album;

    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    .line 578
    invoke-virtual {v1, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 585
    iget-wide v6, v5, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-direct {p0, v6, v7, p1, v10}, Lcom/oneplus/gallery2/media/AlbumManager;->onMediaAddedToAlbum(JLcom/oneplus/gallery2/media/Media;Z)V

    .line 576
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 558
    :cond_1
    instance-of v0, p1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    if-nez v0, :cond_3

    .line 589
    :cond_2
    return-void

    :cond_3
    move-object v0, p1

    .line 560
    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSubMedia()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 562
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 563
    if-eqz v0, :cond_4

    .line 565
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oneplus/gallery2/media/AlbumManager$Album;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/AlbumManager$Album;

    array-length v4, v0

    move v1, v3

    :goto_2
    if-ge v1, v4, :cond_4

    aget-object v5, v0, v1

    .line 567
    iget-wide v6, v5, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-direct {p0, v6, v7, p1, v10}, Lcom/oneplus/gallery2/media/AlbumManager;->onMediaAddedToAlbum(JLcom/oneplus/gallery2/media/Media;Z)V

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 580
    :cond_5
    invoke-virtual {v1, p1, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getGroupedMedia(Lcom/oneplus/gallery2/media/Media;I)[Lcom/oneplus/gallery2/media/GroupedMedia;

    move-result-object v6

    .line 581
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 582
    iget-wide v8, v5, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    aget-object v5, v6, v3

    invoke-direct {p0, v8, v9, v5, v10}, Lcom/oneplus/gallery2/media/AlbumManager;->onMediaAddedToAlbum(JLcom/oneplus/gallery2/media/Media;Z)V

    goto :goto_1
.end method

.method protected onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 597
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 603
    if-nez v0, :cond_2

    .line 610
    :cond_0
    return-void

    .line 598
    :cond_1
    return-void

    .line 605
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lcom/oneplus/gallery2/media/AlbumManager$Album;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/AlbumManager$Album;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 607
    iget-wide v4, v3, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-direct {p0, v4, v5, p1, p2}, Lcom/oneplus/gallery2/media/AlbumManager;->removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;I)Z

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMediaTableReady()V
    .locals 0

    .prologue
    .line 648
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onMediaTableReady()V

    .line 651
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->setupAlbums()V

    .line 654
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->enableMediaChangeCallback()V

    .line 655
    return-void
.end method

.method protected onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 3

    .prologue
    .line 663
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 668
    if-nez v0, :cond_2

    .line 676
    :cond_0
    return-void

    .line 664
    :cond_1
    return-void

    .line 670
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 672
    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 673
    invoke-virtual {v0, p1, p2}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method

.method public openAlbumMediaSetList(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 3

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 708
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    new-instance v1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)V

    .line 713
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 717
    invoke-direct {p0, v1, v0}, Lcom/oneplus/gallery2/media/AlbumManager;->createDefaultMediaSets(Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;Lcom/oneplus/gallery2/media/AlbumManager$Album;)V

    goto :goto_0

    .line 709
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EMPTY:Lcom/oneplus/gallery2/media/MediaSetList;

    return-object v0

    .line 720
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsReady:Z

    if-nez v0, :cond_2

    .line 724
    :goto_1
    return-object v1

    .line 721
    :cond_2
    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->ready()V

    goto :goto_1
.end method

.method public openAlbumMediaSetList(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 1

    .prologue
    .line 690
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/AlbumManager;->openAlbumMediaSetList(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    return-object v0
.end method

.method removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 731
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/gallery2/media/AlbumManager;->removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    return v0
.end method

.method renameAlbum(JLjava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 809
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 810
    invoke-virtual {p0, v8}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 815
    if-eqz v0, :cond_2

    .line 822
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iget-object v1, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 842
    :cond_0
    return v8

    .line 811
    :cond_1
    return v7

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "renameAlbum() - No data for album "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    return v7

    .line 824
    :cond_3
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iget-object v6, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    .line 825
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iput-object p3, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    .line 826
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    .line 827
    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v3

    .line 828
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/AlbumManager$7;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery2/media/AlbumManager$7;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;JLjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    .line 836
    if-nez v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "renameAlbum() - Fail to post to media content thread to rename"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    return v7
.end method

.method updateLastMediaAddedTime(JJ)V
    .locals 5

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 1020
    if-eqz v0, :cond_0

    .line 1025
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iput-wide p3, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastMediaAddedTime:J

    .line 1026
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iget-object v2, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iget-wide v2, v2, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    .line 1027
    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v0

    .line 1028
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/AlbumManager$11;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery2/media/AlbumManager$11;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1036
    return-void

    .line 1022
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateLastMediaAddedTime() - No data for album "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    return-void
.end method
