.class public Lcom/oneplus/gallery2/media/AlbumManager;
.super Lcom/oneplus/gallery2/media/MediaSourceComponent;
.source "AlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;,
        Lcom/oneplus/gallery2/media/AlbumManager$Album;,
        Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;
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

    const-string v1, "AlbumCreated"

    const-class v2, Lcom/oneplus/gallery2/media/AlbumEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/AlbumManager;->EVENT_ALBUM_CREATED:Lcom/oneplus/base/EventKey;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 2
    .param p1, "app"    # Lcom/oneplus/base/BaseApplication;

    .prologue
    .line 143
    const-string v0, "Album media set manager"

    const-class v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

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

.method static synthetic access$000(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/AlbumMediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/AlbumManager;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/AlbumMediaSet;
    .param p2, "x2"    # Ljava/lang/Integer;
    .param p3, "x3"    # Ljava/lang/Integer;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/AlbumManager;->onMediaSetMediaCountChanged(Lcom/oneplus/gallery2/media/AlbumMediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/AlbumManager;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/AlbumManager;->onAlbumMediaSetListReleased(Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/AlbumManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/AlbumManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/AlbumManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/AlbumManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/AlbumManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createDefaultMediaSets(Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;Lcom/oneplus/gallery2/media/AlbumManager$Album;)V
    .locals 6
    .param p1, "mediaSetList"    # Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;
    .param p2, "album"    # Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .prologue
    .line 244
    if-nez p1, :cond_2

    .line 246
    iget-object v3, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 248
    iget-object v3, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "mediaSetList":Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;
    check-cast p1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    .line 249
    .restart local p1    # "mediaSetList":Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;
    iget-object v2, p1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 250
    .local v2, "mediaType":Lcom/oneplus/gallery2/media/MediaType;
    iget-object v3, p2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    new-instance v1, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-object v4, p2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-direct {v1, v3, p0, v4, v2}, Lcom/oneplus/gallery2/media/AlbumMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 253
    .local v1, "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 254
    iget-object v3, p2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget v3, p1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    .end local v1    # "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 257
    .restart local v1    # "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto :goto_1

    .line 263
    .end local v0    # "i":I
    .end local v1    # "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    .end local v2    # "mediaType":Lcom/oneplus/gallery2/media/MediaType;
    :cond_2
    iget-object v3, p2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    iget-object v4, p1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 264
    .restart local v1    # "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    if-nez v1, :cond_3

    .line 266
    new-instance v1, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .end local v1    # "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-object v4, p2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iget-object v5, p1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    invoke-direct {v1, v3, p0, v4, v5}, Lcom/oneplus/gallery2/media/AlbumMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 267
    .restart local v1    # "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 268
    iget-object v3, p2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    iget-object v4, p1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_3
    iget v3, p1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 274
    .end local v1    # "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    :cond_4
    :goto_2
    return-void

    .line 272
    .restart local v1    # "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto :goto_2
.end method

.method private onAlbumCreationCompleted(Lcom/oneplus/base/CallbackHandle;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)V
    .locals 10
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "albumInfo"    # Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
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
    .local p1, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    if-nez p3, :cond_2

    .line 394
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAlbumCreationCompleted() - Fail to create album \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;->onAlbumCreationCompleted(JZ[Lcom/oneplus/gallery2/media/AlbumMediaSet;I)V

    goto :goto_0

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    iget-wide v2, p3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAlbumCreationCompleted() - Duplicate album ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;->onAlbumCreationCompleted(JZ[Lcom/oneplus/gallery2/media/AlbumMediaSet;I)V

    goto :goto_0

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string v1, "onAlbumCreationCompleted() - Album \'"

    const-string v3, "\' ("

    iget-wide v8, p3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, ") created"

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    new-instance v7, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    invoke-direct {v7, p3}, Lcom/oneplus/gallery2/media/AlbumManager$Album;-><init>(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)V

    .line 411
    .local v7, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    iget-wide v2, v7, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const/4 v0, 0x0

    invoke-direct {p0, v0, v7}, Lcom/oneplus/gallery2/media/AlbumManager;->createDefaultMediaSets(Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;Lcom/oneplus/gallery2/media/AlbumManager$Album;)V

    .line 417
    iget-object v0, v7, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, v7, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oneplus/gallery2/media/AlbumMediaSet;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 418
    .local v5, "mediaSets":[Lcom/oneplus/gallery2/media/AlbumMediaSet;
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 419
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;

    iget-wide v2, v7, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;->onAlbumCreationCompleted(JZ[Lcom/oneplus/gallery2/media/AlbumMediaSet;I)V

    .line 422
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/media/AlbumManager;->EVENT_ALBUM_CREATED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/gallery2/media/AlbumEventArgs;

    iget-wide v2, v7, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/oneplus/gallery2/media/AlbumEventArgs;-><init>(JLjava/util/List;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/AlbumManager;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto/16 :goto_0
.end method

.method private onAlbumMediaSetListReleased(Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;)V
    .locals 7
    .param p1, "mediaSetList"    # Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 430
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 434
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAlbumMediaSetListReleased() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " media set list(s) opened"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string v5, "onAlbumMediaSetListReleased() - All media set lists are released"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 440
    .local v0, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    iget-object v4, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lcom/oneplus/gallery2/media/AlbumMediaSet;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 441
    .local v3, "mediaSets":[Lcom/oneplus/gallery2/media/AlbumMediaSet;
    iget-object v4, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 442
    array-length v4, v3

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 443
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->release()V

    .line 442
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private onAlbumRenamingCompleted(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "albumId"    # J
    .param p3, "oldName"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "success"    # Z

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAlbumRenamingCompleted() - Album ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    if-eqz p5, :cond_0

    .line 456
    iget-object v3, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 457
    .local v0, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    if-nez v0, :cond_2

    .line 459
    iget-object v3, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAlbumRenamingCompleted() - No data for album "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object v3, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 463
    .local v2, "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    invoke-virtual {v2, p3, p4}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->onRenamed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onAlbumsReady()V
    .locals 3

    .prologue
    .line 471
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string v2, "onAlbumsReady()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsReady:Z

    .line 473
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 474
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->ready()V

    .line 473
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 475
    :cond_0
    return-void
.end method

.method private onMediaAddedToAlbum(JLcom/oneplus/gallery2/media/Media;Z)V
    .locals 7
    .param p1, "albumId"    # J
    .param p3, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p4, "success"    # Z

    .prologue
    .line 505
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    if-nez p4, :cond_2

    .line 511
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMediaAddedToAlbum() - Fail to add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to album "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 517
    .local v0, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    if-nez v0, :cond_3

    .line 519
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMediaAddedToAlbum() - No data for album "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_3
    iget-object v4, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->recycledMedia:Ljava/util/Set;

    invoke-interface {v4, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v4, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 525
    iget-object v4, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    invoke-interface {v4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 527
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 528
    .local v3, "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    if-nez v3, :cond_4

    .line 530
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 531
    .restart local v3    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v4, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v4, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 535
    .local v1, "albumMediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    const/4 v4, 0x0

    invoke-virtual {v1, p3, v4}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_1

    .line 540
    .end local v1    # "albumMediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    :cond_5
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 541
    .restart local v3    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    if-nez v3, :cond_6

    .line 543
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 544
    .restart local v3    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v4, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_6
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private onMediaSetMediaCountChanged(Lcom/oneplus/gallery2/media/AlbumMediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/AlbumMediaSet;
    .param p2, "prevMediaCount"    # Ljava/lang/Integer;
    .param p3, "mediaCount"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    .line 616
    invoke-static {p2}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v2

    .line 617
    .local v2, "isPrevEmpty":Z
    invoke-static {p3}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v1

    .line 618
    .local v1, "isEmpty":Z
    if-ne v2, v1, :cond_1

    .line 640
    :cond_0
    return-void

    .line 620
    :cond_1
    if-eqz v1, :cond_3

    .line 622
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 624
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    .line 625
    .local v3, "mediaSetList":Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;
    iget v4, v3, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    .line 622
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 627
    :cond_2
    invoke-virtual {v3, p1, v5}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    goto :goto_1

    .line 632
    .end local v0    # "i":I
    .end local v3    # "mediaSetList":Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_0

    .line 634
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    .line 635
    .restart local v3    # "mediaSetList":Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;
    iget v4, v3, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    .line 632
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 637
    :cond_4
    invoke-virtual {v3, p1, v5}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto :goto_3
.end method

.method private removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;I)Z
    .locals 15
    .param p1, "albumId"    # J
    .param p3, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p4, "flags"    # I

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 740
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 741
    const/4 v9, 0x0

    .line 796
    :goto_0
    return v9

    .line 742
    :cond_0
    if-nez p3, :cond_1

    .line 743
    const/4 v9, 0x0

    goto :goto_0

    .line 746
    :cond_1
    iget-object v9, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 747
    .local v2, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    if-nez v2, :cond_2

    .line 749
    iget-object v9, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeMediaFromAlbum() - Album "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const/4 v9, 0x0

    goto :goto_0

    .line 752
    :cond_2
    iget-object v9, v2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 753
    .local v4, "mediaFound":Z
    sget v9, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int v9, v9, p4

    if-eqz v9, :cond_3

    const/4 v6, 0x1

    .line 755
    .local v6, "recycled":Z
    :goto_1
    if-nez v6, :cond_7

    .line 757
    if-nez v4, :cond_4

    iget-object v9, v2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->recycledMedia:Ljava/util/Set;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 758
    const/4 v9, 0x0

    goto :goto_0

    .line 753
    .end local v6    # "recycled":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 761
    .restart local v6    # "recycled":Z
    :cond_4
    move-object/from16 v0, p3

    instance-of v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v9, :cond_5

    .line 763
    new-instance v8, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    iget-wide v10, v2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    move-object/from16 v9, p3

    check-cast v9, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v9}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v12

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;-><init>(JJ)V

    .line 764
    .local v8, "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v9

    new-instance v10, Lcom/oneplus/gallery2/media/AlbumManager$6;

    invoke-direct {v10, p0, v8}, Lcom/oneplus/gallery2/media/AlbumManager$6;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;)V

    invoke-static {v9, v10}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 773
    iget-object v9, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeMediaFromAlbum() - Fail to post to media content thread to remove media "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from album "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 777
    .end local v8    # "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    :cond_5
    iget-object v9, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 778
    .local v7, "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    if-eqz v7, :cond_6

    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 779
    iget-object v9, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    :cond_6
    move-object/from16 v0, p3

    instance-of v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v9, :cond_8

    move-object/from16 v9, p3

    check-cast v9, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v9}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 782
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 787
    .end local v7    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    :cond_7
    iget-object v9, v2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->recycledMedia:Ljava/util/Set;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 788
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 792
    :cond_8
    iget-object v9, v2, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 793
    .local v5, "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v9}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_2

    .line 796
    .end local v5    # "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private setupAlbum(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;Ljava/util/List;)V
    .locals 30
    .param p1, "albumInfo"    # Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
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
    .local p2, "relations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v26

    if-nez v26, :cond_0

    .line 974
    :goto_0
    return-void

    .line 854
    :cond_0
    new-instance v5, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/oneplus/gallery2/media/AlbumManager$Album;-><init>(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)V

    .line 855
    .local v5, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    move-object/from16 v26, v0

    iget-wide v0, v5, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 856
    .local v16, "prevAlbum":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    if-eqz v16, :cond_1

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "setupAlbum() - Duplicate album : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 864
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 865
    .local v24, "time":J
    const/4 v13, 0x0

    .line 866
    .local v13, "mediaCount":I
    const/4 v4, 0x0

    .line 867
    .local v4, "addingRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    const/16 v21, 0x0

    .line 868
    .local v21, "removingRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 869
    .local v6, "checkedMediaIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 870
    .local v8, "groupedMediaToCheck":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/BaseGroupedMedia;>;"
    if-eqz p2, :cond_8

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/AlbumManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v22

    check-cast v22, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 873
    .local v22, "source":Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v26

    add-int/lit8 v9, v26, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_8

    .line 875
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    .line 876
    .local v18, "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(J)Lcom/oneplus/gallery2/media/MediaStoreMedia;

    move-result-object v12

    .line 877
    .local v12, "media":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    if-nez v12, :cond_4

    .line 879
    if-nez v21, :cond_2

    .line 880
    new-instance v21, Ljava/util/ArrayList;

    .end local v21    # "removingRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .restart local v21    # "removingRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :cond_2
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 884
    :cond_4
    invoke-virtual {v12}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual {v12}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v26

    if-nez v26, :cond_6

    .line 887
    iget-object v0, v5, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    .line 890
    .local v17, "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    if-nez v17, :cond_5

    .line 892
    new-instance v17, Ljava/util/HashSet;

    .end local v17    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 893
    .restart local v17    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    :cond_5
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 896
    add-int/lit8 v13, v13, 0x1

    .line 897
    goto :goto_2

    .line 901
    .end local v17    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    .line 902
    .restart local v17    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    if-nez v17, :cond_7

    .line 904
    new-instance v17, Ljava/util/HashSet;

    .end local v17    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 905
    .restart local v17    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    :cond_7
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 908
    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v12, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getGroupedMedia(Lcom/oneplus/gallery2/media/Media;I)[Lcom/oneplus/gallery2/media/GroupedMedia;

    move-result-object v7

    .line 909
    .local v7, "groupedMedia":[Lcom/oneplus/gallery2/media/GroupedMedia;
    if-eqz v7, :cond_3

    .line 910
    const/16 v26, 0x0

    aget-object v26, v7, v26

    check-cast v26, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 914
    .end local v7    # "groupedMedia":[Lcom/oneplus/gallery2/media/GroupedMedia;
    .end local v9    # "i":I
    .end local v12    # "media":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    .end local v17    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    .end local v18    # "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    .end local v22    # "source":Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    :cond_8
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 916
    .local v7, "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    iget-object v0, v5, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    .line 919
    .restart local v17    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    if-nez v17, :cond_a

    .line 921
    new-instance v17, Ljava/util/HashSet;

    .end local v17    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 922
    .restart local v17    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    :cond_a
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v13, v13, 0x1

    .line 926
    invoke-virtual {v7}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSubMedia()Ljava/lang/Iterable;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/oneplus/gallery2/media/Media;

    .line 928
    .local v23, "subMedia":Lcom/oneplus/gallery2/media/Media;
    check-cast v23, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .end local v23    # "subMedia":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual/range {v23 .. v23}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v14

    .line 929
    .local v14, "mediaId":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b

    .line 931
    if-nez v4, :cond_c

    .line 932
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "addingRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 933
    .restart local v4    # "addingRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :cond_c
    new-instance v26, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    iget-wide v0, v5, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;-><init>(JJ)V

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 937
    .end local v7    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "mediaId":J
    .end local v17    # "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    sub-long v24, v26, v24

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "setupAlbum() - Take "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ms to create album "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-wide v0, v5, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " with "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " media"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    if-eqz v4, :cond_e

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "setupAlbum() - Add "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " album-media relations for album "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-wide v0, v5, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    move-object/from16 v19, v4

    .line 945
    .local v19, "relationsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v26

    new-instance v27, Lcom/oneplus/gallery2/media/AlbumManager$8;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/media/AlbumManager$8;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Ljava/util/List;)V

    invoke-static/range {v26 .. v27}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 957
    .end local v19    # "relationsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :cond_e
    if-eqz v21, :cond_f

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "setupAlbum() - Remove "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " album-media relations for album "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-wide v0, v5, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    move-object/from16 v20, v21

    .line 961
    .local v20, "relationsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v26

    new-instance v27, Lcom/oneplus/gallery2/media/AlbumManager$9;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/media/AlbumManager$9;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Ljava/util/List;)V

    invoke-static/range {v26 .. v27}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 973
    .end local v20    # "relationsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :cond_f
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/media/AlbumManager;->createDefaultMediaSets(Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;Lcom/oneplus/gallery2/media/AlbumManager$Album;)V

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
    .param p1, "albumId"    # J
    .param p3, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 152
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 192
    :goto_0
    return v2

    .line 154
    :cond_0
    if-nez p3, :cond_1

    .line 156
    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string v4, "addMediaToAlbum() - No media to add"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 157
    goto :goto_0

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 162
    .local v0, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    if-nez v0, :cond_2

    .line 164
    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMediaToAlbum() - No data for album "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 165
    goto :goto_0

    .line 167
    :cond_2
    iget-object v2, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    .line 168
    goto :goto_0

    .line 171
    :cond_3
    instance-of v2, p3, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v2, :cond_4

    .line 173
    new-instance v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    move-object v2, p3

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;-><init>(JJ)V

    .line 174
    .local v1, "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    new-instance v5, Lcom/oneplus/gallery2/media/AlbumManager$2;

    invoke-direct {v5, p0, v1, p3}, Lcom/oneplus/gallery2/media/AlbumManager$2;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;Lcom/oneplus/gallery2/media/Media;)V

    invoke-static {v2, v5}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 184
    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMediaToAlbum() - Fail to post to media content thread to add media "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to album "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 185
    goto/16 :goto_0

    .line 189
    .end local v1    # "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    :cond_4
    iget-wide v2, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-direct {p0, v2, v3, p3, v4}, Lcom/oneplus/gallery2/media/AlbumManager;->onMediaAddedToAlbum(JLcom/oneplus/gallery2/media/Media;Z)V

    :cond_5
    move v2, v4

    .line 192
    goto/16 :goto_0
.end method

.method public createAlbum(Ljava/lang/String;Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 206
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/AlbumManager$3;

    const-string v2, "CreateAlbum"

    invoke-direct {v0, p0, v2, p2, v1}, Lcom/oneplus/gallery2/media/AlbumManager$3;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Ljava/lang/String;Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;Landroid/os/Handler;)V

    .line 216
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;>;"
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery2/media/AlbumManager$4;

    invoke-direct {v3, p0, v0, p1}, Lcom/oneplus/gallery2/media/AlbumManager$4;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/base/CallbackHandle;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string v3, "createAlbum() - Fail to post to media content thread"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 233
    goto :goto_0
.end method

.method deleteAlbum(J)Z
    .locals 9
    .param p1, "albumId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 282
    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v5

    .line 286
    :cond_1
    iget-object v7, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 287
    .local v0, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    if-eqz v0, :cond_0

    .line 291
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v7

    new-instance v8, Lcom/oneplus/gallery2/media/AlbumManager$5;

    invoke-direct {v8, p0, p1, p2}, Lcom/oneplus/gallery2/media/AlbumManager$5;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;J)V

    invoke-static {v7, v8}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 301
    iget-object v6, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteAlbum() - Fail to post to media content thread to delete album "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object v5, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 308
    .local v3, "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 310
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    .line 311
    .local v4, "mediaSetList":Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;
    iget-object v5, v4, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v7

    if-ne v5, v7, :cond_3

    .line 312
    invoke-virtual {v4, v3, v6}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    .line 308
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 314
    .end local v4    # "mediaSetList":Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;
    :cond_4
    sget-object v5, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v7, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v3, v5, v7}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 315
    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->release()V

    goto :goto_1

    .line 317
    .end local v1    # "i":I
    .end local v3    # "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    :cond_5
    iget-object v5, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 318
    iget-object v5, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 319
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string v7, "deleteAlbum() - Delete album "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v5, v6

    .line 323
    goto/16 :goto_0
.end method

.method getMedia(JLcom/oneplus/gallery2/media/MediaType;)Ljava/lang/Iterable;
    .locals 3
    .param p1, "albumId"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery2/media/MediaType;
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
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 332
    .local v0, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    if-eqz v0, :cond_0

    .line 333
    new-instance v1, Lcom/oneplus/gallery2/media/MediaIterable;

    iget-object v2, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    invoke-direct {v1, p3, v2}, Lcom/oneplus/gallery2/media/MediaIterable;-><init>(Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    .line 334
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 343
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 378
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->handleMessage(Landroid/os/Message;)V

    .line 381
    :goto_0
    return-void

    .line 347
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 348
    .local v0, "params":[Ljava/lang/Object;
    aget-object v1, v0, v7

    check-cast v1, Lcom/oneplus/base/CallbackHandle;

    aget-object v2, v0, v6

    check-cast v2, Ljava/lang/String;

    aget-object v3, v0, v5

    check-cast v3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/gallery2/media/AlbumManager;->onAlbumCreationCompleted(Lcom/oneplus/base/CallbackHandle;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)V

    goto :goto_0

    .line 354
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 355
    .restart local v0    # "params":[Ljava/lang/Object;
    aget-object v1, v0, v7

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v4, v0, v6

    check-cast v4, Ljava/lang/String;

    aget-object v5, v0, v5

    check-cast v5, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    :goto_1
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery2/media/AlbumManager;->onAlbumRenamingCompleted(JLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move v6, v7

    goto :goto_1

    .line 360
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->onAlbumsReady()V

    goto :goto_0

    .line 365
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 366
    .restart local v0    # "params":[Ljava/lang/Object;
    aget-object v1, v0, v7

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v1, v0, v6

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    :goto_2
    invoke-direct {p0, v2, v3, v1, v6}, Lcom/oneplus/gallery2/media/AlbumManager;->onMediaAddedToAlbum(JLcom/oneplus/gallery2/media/Media;Z)V

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_2

    .line 372
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 373
    .restart local v0    # "params":[Ljava/lang/Object;
    aget-object v1, v0, v7

    check-cast v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    aget-object v2, v0, v6

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/gallery2/media/AlbumManager;->setupAlbum(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;Ljava/util/List;)V

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
    .locals 7

    .prologue
    .line 483
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 484
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->clearMediaSetLists(Z)V

    .line 483
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 485
    :cond_0
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 488
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 490
    .local v0, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    iget-object v5, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 491
    .local v4, "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->release()V

    goto :goto_1

    .line 493
    .end local v0    # "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    :cond_2
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 494
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 497
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onDeinitialize()V

    .line 498
    return-void
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 14
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 555
    iget-object v10, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 556
    .local v6, "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    if-nez v6, :cond_1

    .line 558
    instance-of v10, p1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    if-eqz v10, :cond_4

    move-object v10, p1

    .line 560
    check-cast v10, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    invoke-virtual {v10}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSubMedia()Ljava/lang/Iterable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery2/media/Media;

    .line 562
    .local v8, "subMedia":Lcom/oneplus/gallery2/media/Media;
    iget-object v10, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 563
    .local v9, "subMediaAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    if-eqz v9, :cond_0

    .line 565
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Lcom/oneplus/gallery2/media/AlbumManager$Album;

    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .local v1, "arr$":[Lcom/oneplus/gallery2/media/AlbumManager$Album;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 567
    .local v0, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    iget-wide v10, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    const/4 v12, 0x1

    invoke-direct {p0, v10, v11, p1, v12}, Lcom/oneplus/gallery2/media/AlbumManager;->onMediaAddedToAlbum(JLcom/oneplus/gallery2/media/Media;Z)V

    .line 565
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 575
    .end local v0    # "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    .end local v1    # "arr$":[Lcom/oneplus/gallery2/media/AlbumManager$Album;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "subMedia":Lcom/oneplus/gallery2/media/Media;
    .end local v9    # "subMediaAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 576
    .local v7, "source":Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Lcom/oneplus/gallery2/media/AlbumManager$Album;

    invoke-interface {v6, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .restart local v1    # "arr$":[Lcom/oneplus/gallery2/media/AlbumManager$Album;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v0, v1, v3

    .line 578
    .restart local v0    # "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    invoke-virtual {v7, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 580
    const/4 v10, 0x0

    invoke-virtual {v7, p1, v10}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getGroupedMedia(Lcom/oneplus/gallery2/media/Media;I)[Lcom/oneplus/gallery2/media/GroupedMedia;

    move-result-object v2

    .line 581
    .local v2, "groupedMedia":[Lcom/oneplus/gallery2/media/GroupedMedia;
    if-eqz v2, :cond_2

    array-length v10, v2

    if-lez v10, :cond_2

    .line 582
    iget-wide v10, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    const/4 v12, 0x0

    aget-object v12, v2, v12

    const/4 v13, 0x1

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/oneplus/gallery2/media/AlbumManager;->onMediaAddedToAlbum(JLcom/oneplus/gallery2/media/Media;Z)V

    .line 576
    .end local v2    # "groupedMedia":[Lcom/oneplus/gallery2/media/GroupedMedia;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 585
    :cond_3
    iget-wide v10, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    const/4 v12, 0x1

    invoke-direct {p0, v10, v11, p1, v12}, Lcom/oneplus/gallery2/media/AlbumManager;->onMediaAddedToAlbum(JLcom/oneplus/gallery2/media/Media;Z)V

    goto :goto_2

    .line 589
    .end local v0    # "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    .end local v1    # "arr$":[Lcom/oneplus/gallery2/media/AlbumManager$Album;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "source":Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    :cond_4
    return-void
.end method

.method protected onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 8
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 597
    instance-of v5, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-nez v5, :cond_1

    .line 610
    :cond_0
    return-void

    .line 600
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 603
    .local v4, "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    if-eqz v4, :cond_0

    .line 605
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Lcom/oneplus/gallery2/media/AlbumManager$Album;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .local v1, "arr$":[Lcom/oneplus/gallery2/media/AlbumManager$Album;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 607
    .local v0, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    iget-wide v6, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    invoke-direct {p0, v6, v7, p1, p2}, Lcom/oneplus/gallery2/media/AlbumManager;->removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;I)Z

    .line 605
    add-int/lit8 v2, v2, 0x1

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
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 663
    sget v5, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_1

    .line 676
    :cond_0
    return-void

    .line 667
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsByMedia:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 668
    .local v4, "relatedAlbums":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/AlbumManager$Album;>;"
    if-eqz v4, :cond_0

    .line 670
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 672
    .local v0, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    iget-object v5, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 673
    .local v3, "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    invoke-virtual {v3, p1, p2}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method

.method public openAlbumMediaSetList(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 4
    .param p1, "comparator"    # Lcom/oneplus/gallery2/media/MediaSetComparator;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p3, "flags"    # I

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 708
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 709
    sget-object v2, Lcom/oneplus/gallery2/media/MediaSetList;->EMPTY:Lcom/oneplus/gallery2/media/MediaSetList;

    .line 724
    :cond_0
    :goto_0
    return-object v2

    .line 712
    :cond_1
    new-instance v2, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)V

    .line 713
    .local v2, "mediaSetList":Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;
    iget-object v3, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    iget-object v3, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 717
    .local v0, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    invoke-direct {p0, v2, v0}, Lcom/oneplus/gallery2/media/AlbumManager;->createDefaultMediaSets(Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;Lcom/oneplus/gallery2/media/AlbumManager$Album;)V

    goto :goto_1

    .line 720
    .end local v0    # "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    :cond_2
    iget-boolean v3, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_AlbumsReady:Z

    if-eqz v3, :cond_0

    .line 721
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->ready()V

    goto :goto_0
.end method

.method public openAlbumMediaSetList(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 1
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p2, "flags"    # I

    .prologue
    .line 690
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/AlbumManager;->openAlbumMediaSetList(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    return-object v0
.end method

.method removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;)Z
    .locals 1
    .param p1, "albumId"    # J
    .param p3, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 731
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/gallery2/media/AlbumManager;->removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    return v0
.end method

.method renameAlbum(JLjava/lang/String;)Z
    .locals 11
    .param p1, "albumId"    # J
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 809
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumManager;->verifyAccess()V

    .line 810
    invoke-virtual {p0, v8}, Lcom/oneplus/gallery2/media/AlbumManager;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v7

    .line 842
    :goto_0
    return v1

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 815
    .local v0, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    if-nez v0, :cond_1

    .line 817
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameAlbum() - No data for album "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v7

    .line 818
    goto :goto_0

    .line 822
    :cond_1
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iget-object v1, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 824
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iget-object v6, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    .line 825
    .local v6, "oldName":Ljava/lang/String;
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iput-object p3, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    .line 826
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    .line 827
    iget-object v1, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v3

    .line 828
    .local v3, "albumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v9

    new-instance v1, Lcom/oneplus/gallery2/media/AlbumManager$7;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery2/media/AlbumManager$7;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;JLjava/lang/String;)V

    invoke-static {v9, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 838
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    const-string v2, "renameAlbum() - Fail to post to media content thread to rename"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v7

    .line 839
    goto :goto_0

    .end local v3    # "albumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    .end local v6    # "oldName":Ljava/lang/String;
    :cond_2
    move v1, v8

    .line 842
    goto :goto_0
.end method

.method updateLastMediaAddedTime(JJ)V
    .locals 7
    .param p1, "albumId"    # J
    .param p3, "time"    # J

    .prologue
    .line 1019
    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager;->m_Albums:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;

    .line 1020
    .local v0, "album":Lcom/oneplus/gallery2/media/AlbumManager$Album;
    if-nez v0, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLastMediaAddedTime() - No data for album "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :goto_0
    return-void

    .line 1025
    :cond_0
    iget-object v2, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iput-wide p3, v2, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastMediaAddedTime:J

    .line 1026
    iget-object v2, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iget-object v3, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iget-wide v4, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    .line 1027
    iget-object v2, v0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v1

    .line 1028
    .local v1, "albumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery2/media/AlbumManager$11;

    invoke-direct {v3, p0, v1}, Lcom/oneplus/gallery2/media/AlbumManager$11;-><init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
