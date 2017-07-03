.class public Lcom/oneplus/gallery2/PhotoViewerActivity;
.super Lcom/oneplus/gallery2/GalleryActivity;
.source "PhotoViewerActivity.java"


# static fields
.field private static final FRAGMENT_TAG_FILMSTRIP:Ljava/lang/String; = "com.oneplus.gallery.PhotoViewerActivity.Filmstrip"

.field private static final INTENT_EXTRAS_LOAD_MEDIA_SET:Ljava/lang/String; = "load_media_set"

.field private static final STATE_KEY_IS_READ_ONLY:Ljava/lang/String; = "com.oneplus.gallery.PhotoViewerActivity.IsReadOnly"

.field private static final STATE_KEY_MEDIA:Ljava/lang/String; = "com.oneplus.gallery.PhotoViewerActivity.Media"

.field private static final STATE_KEY_MEDIA_LIST:Ljava/lang/String; = "com.oneplus.gallery.PhotoViewerActivity.MediaList"

.field private static final STATE_KEY_MEDIA_SET:Ljava/lang/String; = "com.oneplus.gallery.PhotoViewerActivity.MediaSet"


# instance fields
.field private m_DirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

.field private m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

.field private m_IsInstanceStateSaved:Z

.field private m_Media:Lcom/oneplus/gallery2/media/Media;

.field private m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

.field private final m_MediaObtainCallback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

.field private m_MediaObtainHandle:Lcom/oneplus/base/Handle;

.field private m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

.field private m_MediaStoreMediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

.field private m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;-><init>()V

    .line 59
    new-instance v0, Lcom/oneplus/gallery2/PhotoViewerActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/PhotoViewerActivity$1;-><init>(Lcom/oneplus/gallery2/PhotoViewerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaObtainCallback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/PhotoViewerActivity;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoViewerActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/PhotoViewerActivity;->onMediaObtained(Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/PhotoViewerActivity;)Lcom/oneplus/gallery2/media/MediaList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoViewerActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/PhotoViewerActivity;)Lcom/oneplus/gallery2/media/MediaSet;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoViewerActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/PhotoViewerActivity;)Lcom/oneplus/gallery2/FilmstripFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoViewerActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/PhotoViewerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoViewerActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/PhotoViewerActivity;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoViewerActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/PhotoViewerActivity;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method private isMediaScreenshot(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 104
    if-nez p1, :cond_0

    .line 106
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v5, "isMediaScreenshot() - path is null!"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 124
    :goto_0
    return v3

    .line 109
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_DirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    if-nez v3, :cond_1

    .line 111
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    const-class v5, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    invoke-virtual {v3, v5}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_DirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    .line 112
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_DirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    if-nez v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v5, "isMediaScreenshot() - No MediaStoreDirectoryManager"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_DirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    sget-object v5, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->SCREENSHOTS:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    invoke-virtual {v3, v5}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getSystemDirectoryPaths(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;)Ljava/util/List;

    move-result-object v2

    .line 119
    .local v2, "specialPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, "dirPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .end local v0    # "dirPath":Ljava/lang/String;
    :cond_4
    move v3, v4

    .line 124
    goto :goto_0
.end method

.method private onMediaDeleted(Lcom/oneplus/gallery2/media/Media;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    if-ne v0, p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaDeleted() - Media deleted, finish activity, media:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->finish()V

    .line 247
    :cond_0
    return-void
.end method

.method private onMediaObtained(Lcom/oneplus/gallery2/media/Media;)V
    .locals 9
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 254
    if-nez p1, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 258
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 259
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "mimeType":Ljava/lang/String;
    :cond_0
    new-instance p1, Lcom/oneplus/gallery2/media/InvalidPhotoMedia;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p1, v0, v4}, Lcom/oneplus/gallery2/media/InvalidPhotoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 261
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v6, "onMediaObtained() - media is null, create a invalid media!"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v6, "onMediaObtained() - Media : "

    invoke-static {v5, v6, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/PhotoViewerActivity;->shouldShowAllScreenshotMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaStoreMediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v5, :cond_7

    .line 267
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-nez v5, :cond_2

    .line 268
    new-instance v5, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;

    iget-object v6, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaStoreMediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v5, v6}, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    iput-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 269
    :cond_2
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v5, :cond_3

    .line 270
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v6, Lcom/oneplus/gallery2/media/MediaComparator;->TAKEN_TIME_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7, v8}, Lcom/oneplus/gallery2/media/MediaSet;->openMediaList(Lcom/oneplus/gallery2/media/MediaComparator;II)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 272
    :cond_3
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 273
    .local v2, "mediaContentUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v6, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 274
    .local v3, "mediaIndex":I
    if-gez v3, :cond_4

    .line 276
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5, p1}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 277
    if-ltz v3, :cond_6

    .line 279
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v6, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    iget-object v7, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 280
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v6, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v7, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 281
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v6, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 304
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v6, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v7, Lcom/oneplus/gallery2/PhotoViewerActivity$3;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery2/PhotoViewerActivity$3;-><init>(Lcom/oneplus/gallery2/PhotoViewerActivity;)V

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 318
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v6, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 333
    .end local v2    # "mediaContentUri":Landroid/net/Uri;
    .end local v3    # "mediaIndex":I
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->enableBeam()V

    .line 334
    return-void

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_5
    move-object v0, v4

    .line 258
    goto/16 :goto_0

    .line 285
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "mediaContentUri":Landroid/net/Uri;
    .restart local v3    # "mediaIndex":I
    :cond_6
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v6, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v7, Lcom/oneplus/gallery2/PhotoViewerActivity$2;

    invoke-direct {v7, p0, v2}, Lcom/oneplus/gallery2/PhotoViewerActivity$2;-><init>(Lcom/oneplus/gallery2/PhotoViewerActivity;Landroid/net/Uri;)V

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_1

    .line 323
    .end local v2    # "mediaContentUri":Landroid/net/Uri;
    .end local v3    # "mediaIndex":I
    :cond_7
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    .line 324
    new-instance v5, Lcom/oneplus/gallery2/media/SimpleMediaList;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/oneplus/gallery2/media/Media;

    aput-object p1, v6, v8

    invoke-direct {v5, v6}, Lcom/oneplus/gallery2/media/SimpleMediaList;-><init>([Lcom/oneplus/gallery2/media/Media;)V

    iput-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 325
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v6, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v7, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 326
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v6, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 329
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->registerMediaChangeCallback()V

    goto :goto_2
.end method

.method private registerMediaChangeCallback()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/PhotoViewerActivity$4;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/PhotoViewerActivity$4;-><init>(Lcom/oneplus/gallery2/PhotoViewerActivity;)V

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private shouldShowAllScreenshotMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v3, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 381
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 382
    .local v1, "loadMediaSet":Z
    if-eqz v0, :cond_0

    .line 383
    const-string v2, "load_media_set"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 385
    :cond_0
    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/PhotoViewerActivity;->isMediaScreenshot(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/oneplus/gallery2/media/MediaSource;->isRecycledMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 387
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaStoreMediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-nez v2, :cond_1

    .line 388
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    const-class v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v2, v4}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaStoreMediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 389
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaStoreMediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v2, :cond_2

    .line 391
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v3, "isShowAllScreenshotMedia() - true"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v2, 0x1

    .line 397
    :goto_0
    return v2

    .line 394
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v4, "isShowAllScreenshotMedia() - No MediaStoreMediaSource"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v4, "isShowAllScreenshotMedia() - false"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 397
    goto :goto_0
.end method


# virtual methods
.method protected getBeamUris()[Landroid/net/Uri;
    .locals 4

    .prologue
    .line 78
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v3, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 81
    .local v1, "index":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 84
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 85
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 88
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "index":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public goBack()Z
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->finish()V

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 132
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 135
    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/PhotoViewerActivity;->setContentView(I)V

    .line 138
    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/PhotoViewerActivity;->setStatusBarStyle(Z)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "com.oneplus.gallery.PhotoViewerActivity.Filmstrip"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/FilmstripFragment;

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    .line 142
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    if-nez v3, :cond_0

    .line 144
    new-instance v3, Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {v3}, Lcom/oneplus/gallery2/FilmstripFragment;-><init>()V

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    .line 145
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f06000f

    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    const-string v6, "com.oneplus.gallery.PhotoViewerActivity.Filmstrip"

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 150
    if-eqz p2, :cond_1

    .line 152
    const-string v3, "com.oneplus.gallery.PhotoViewerActivity.Media"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    .line 153
    const-string v3, "com.oneplus.gallery.PhotoViewerActivity.MediaSet"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaSet;

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 154
    const-string v3, "com.oneplus.gallery.PhotoViewerActivity.MediaList"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaList;

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 155
    const-string v3, "com.oneplus.gallery.PhotoViewerActivity.IsReadOnly"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    if-nez v3, :cond_6

    .line 160
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 161
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 162
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "mimeType":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_5

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->isInitialPermissionsRequestCompleted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaObtainCallback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    invoke-static {v0, v2, v3, v7}, Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaObtainHandle:Lcom/oneplus/base/Handle;

    .line 168
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaObtainHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 170
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate() - Fail to obtain media for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->finish()V

    .line 193
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_4
    move-object v0, v2

    .line 161
    goto :goto_0

    .line 178
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v2    # "mimeType":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate() - No content URI"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->finish()V

    goto :goto_1

    .line 185
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate() - Use existent media : "

    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->enableBeam()V

    .line 190
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/PhotoViewerActivity;->shouldShowAllScreenshotMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 191
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->registerMediaChangeCallback()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSet;->release()V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 211
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryActivity;->onDestroy()V

    .line 214
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    .line 215
    return-void
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 223
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryActivity;->onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    :goto_0
    return v3

    .line 227
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaObtainHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    if-nez v4, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 231
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "mimeType":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaObtainCallback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    invoke-static {v0, v2, v4, v3}, Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaObtainHandle:Lcom/oneplus/base/Handle;

    .line 235
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    move-object v0, v2

    .line 230
    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v2, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 343
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, v0}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    .line 345
    :cond_0
    const-string v1, "com.oneplus.gallery.PhotoViewerActivity.Media"

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v1, "com.oneplus.gallery.PhotoViewerActivity.MediaSet"

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v1, "com.oneplus.gallery.PhotoViewerActivity.MediaList"

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v1, "com.oneplus.gallery.PhotoViewerActivity.IsReadOnly"

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v3, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery2/PhotoViewerActivity;->m_IsInstanceStateSaved:Z

    .line 353
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 354
    return-void
.end method
