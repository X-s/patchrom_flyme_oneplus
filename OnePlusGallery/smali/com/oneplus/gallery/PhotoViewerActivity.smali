.class public Lcom/oneplus/gallery/PhotoViewerActivity;
.super Lcom/oneplus/gallery/SingleMediaActivity;
.source "PhotoViewerActivity.java"


# static fields
.field private static final FRAGMENT_TAG_FILMSTRIP:Ljava/lang/String; = "com.oneplus.gallery.PhotoViewerActivity.Filmstrip"

.field private static final INTENT_EXTRAS_LOAD_MEDIA_SET:Ljava/lang/String; = "load_media_set"

.field private static final STATE_KEY_MEDIA:Ljava/lang/String; = "com.oneplus.gallery.PhotoViewerActivity.Media"

.field private static final STATE_KEY_MEDIA_LIST:Ljava/lang/String; = "com.oneplus.gallery.PhotoViewerActivity.MediaList"

.field private static final STATE_KEY_MEDIA_SET:Ljava/lang/String; = "com.oneplus.gallery.PhotoViewerActivity.MediaSet"


# instance fields
.field private m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

.field private m_IsInstanceStateSaved:Z

.field private m_Media:Lcom/oneplus/gallery/media/Media;

.field private m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_MediaList:Lcom/oneplus/gallery/media/MediaList;

.field private m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

.field private m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

.field private m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/SingleMediaActivity;-><init>(Z)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/PhotoViewerActivity;)Lcom/oneplus/gallery/media/MediaList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoViewerActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/PhotoViewerActivity;)Lcom/oneplus/gallery/FilmstripFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoViewerActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/PhotoViewerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoViewerActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/PhotoViewerActivity;Lcom/oneplus/gallery/media/Media;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoViewerActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/PhotoViewerActivity;->onMediaDeleted(Lcom/oneplus/gallery/media/Media;)V

    return-void
.end method

.method private isMediaRecycled(Landroid/net/Uri;)Z
    .locals 7
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 88
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v5, "isMediaRecycled() - media uri is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x1

    .line 101
    :goto_0
    return v1

    .line 91
    :cond_0
    const/4 v1, 0x1

    .line 94
    .local v1, "isRecycled":Z
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 95
    .local v2, "id":J
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->isMediaRecycled(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 97
    .end local v2    # "id":J
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMediaRecycled() - e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isMediaScreenshot(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 110
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v5, "isMediaScreenshot() - path is null!"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    return v3

    .line 113
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v2, "specialPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->SCREENSHOT:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    invoke-interface {v4, v5, v2}, Lcom/oneplus/gallery/media/OPMediaManager;->getSpecialDirectoryPaths(Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;Ljava/util/List;)V

    .line 115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, "dirPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private onMediaDeleted(Lcom/oneplus/gallery/media/Media;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    if-ne v0, p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;

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

    .line 238
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->finish()V

    .line 240
    :cond_0
    return-void
.end method

.method private registerMediaChangeCallback()V
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const-class v2, Lcom/oneplus/gallery/media/MediaManager;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManager;

    .line 338
    .local v0, "mediaManager":Lcom/oneplus/gallery/media/MediaManager;
    if-nez v0, :cond_1

    .line 340
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v2, "registerMediaChangeCallback() - No MediaManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 345
    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaManager;->activate()Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 348
    :cond_2
    new-instance v1, Lcom/oneplus/gallery/PhotoViewerActivity$3;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/PhotoViewerActivity$3;-><init>(Lcom/oneplus/gallery/PhotoViewerActivity;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaManager;->registerMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private shouldShowAllScreenshotMedia(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 377
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 378
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 379
    .local v1, "loadMediaSet":Z
    if-eqz v0, :cond_0

    .line 380
    const-string v3, "load_media_set"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 382
    :cond_0
    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/oneplus/gallery/PhotoViewerActivity;->isMediaScreenshot(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2}, Lcom/oneplus/gallery/PhotoViewerActivity;->isMediaRecycled(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 384
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v3, "isShowAllScreenshotMedia() - true"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v2, 0x1

    .line 388
    :goto_0
    return v2

    .line 387
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v4, "isShowAllScreenshotMedia() - false"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getBeamUris()[Landroid/net/Uri;
    .locals 4

    .prologue
    .line 61
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v3, Lcom/oneplus/gallery/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 64
    .local v1, "index":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 67
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 68
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 71
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
    .line 79
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->finish()V

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 7
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

    .line 128
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/SingleMediaActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 131
    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/PhotoViewerActivity;->setContentView(I)V

    .line 134
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/PhotoViewerActivity;->setStatusBarStyle(Z)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    .line 137
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "com.oneplus.gallery.PhotoViewerActivity.Filmstrip"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/FilmstripFragment;

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    .line 138
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    if-nez v3, :cond_0

    .line 140
    new-instance v3, Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {v3}, Lcom/oneplus/gallery/FilmstripFragment;-><init>()V

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f06000f

    iget-object v5, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    const-string v6, "com.oneplus.gallery.PhotoViewerActivity.Filmstrip"

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v4, Lcom/oneplus/gallery/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 146
    if-eqz p2, :cond_1

    .line 148
    const-string v3, "com.oneplus.gallery.PhotoViewerActivity.Media"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/Media;

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    .line 149
    const-string v3, "com.oneplus.gallery.PhotoViewerActivity.MediaSet"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaSet;

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 150
    const-string v3, "com.oneplus.gallery.PhotoViewerActivity.MediaList"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaList;

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    if-nez v3, :cond_6

    .line 154
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 155
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 156
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "mimeType":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_5

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->isInitialPermissionsRequestCompleted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery/PhotoViewerActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 161
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;

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

    .line 162
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->finish()V

    .line 183
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_4
    move-object v0, v2

    .line 155
    goto :goto_0

    .line 168
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v2    # "mimeType":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate() - No content URI"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->finish()V

    goto :goto_1

    .line 175
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate() - Use existent media : "

    iget-object v5, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->enableBeam()V

    .line 180
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v3}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v4}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/oneplus/gallery/PhotoViewerActivity;->shouldShowAllScreenshotMedia(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 181
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->registerMediaChangeCallback()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaSet;->release()V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 201
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 204
    invoke-super {p0}, Lcom/oneplus/gallery/SingleMediaActivity;->onDestroy()V

    .line 207
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    .line 208
    return-void
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/SingleMediaActivity;->onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    const/4 v3, 0x0

    .line 228
    :goto_0
    return v3

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    if-nez v3, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 223
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 224
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "mimeType":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery/PhotoViewerActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;

    .line 228
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    move-object v0, v2

    .line 223
    goto :goto_1
.end method

.method protected onMediaObtained(Lcom/oneplus/gallery/media/Media;)V
    .locals 8
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 248
    if-nez p1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 252
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 253
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "mimeType":Ljava/lang/String;
    :goto_1
    new-instance p1, Lcom/oneplus/gallery/media/InvalidPhotoMedia;

    .end local p1    # "media":Lcom/oneplus/gallery/media/Media;
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {p1, v0, v4, v3, v5}, Lcom/oneplus/gallery/media/InvalidPhotoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 255
    .restart local p1    # "media":Lcom/oneplus/gallery/media/Media;
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v5, "onMediaObtained() - media is null, create a invalid media!"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;

    const-string v5, "onMediaObtained() - Media : "

    invoke-static {v4, v5, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/oneplus/gallery/PhotoViewerActivity;->shouldShowAllScreenshotMedia(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 261
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-nez v4, :cond_1

    .line 262
    new-instance v4, Lcom/oneplus/gallery/media/ScreenshotMediaSet;

    invoke-direct {v4}, Lcom/oneplus/gallery/media/ScreenshotMediaSet;-><init>()V

    iput-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 263
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v4, :cond_2

    .line 264
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v5, Lcom/oneplus/gallery/media/MediaComparator;->TAKEN_TIME:Lcom/oneplus/gallery/media/MediaComparator;

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Lcom/oneplus/gallery/media/MediaSet;->openMediaList(Lcom/oneplus/gallery/media/MediaComparator;II)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 266
    :cond_2
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 267
    .local v2, "mediaContentUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v5, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v6, Lcom/oneplus/gallery/PhotoViewerActivity$1;

    invoke-direct {v6, p0, v2}, Lcom/oneplus/gallery/PhotoViewerActivity$1;-><init>(Lcom/oneplus/gallery/PhotoViewerActivity;Landroid/net/Uri;)V

    invoke-interface {v4, v5, v6}, Lcom/oneplus/gallery/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 283
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v5, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v6, Lcom/oneplus/gallery/PhotoViewerActivity$2;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/PhotoViewerActivity$2;-><init>(Lcom/oneplus/gallery/PhotoViewerActivity;)V

    invoke-interface {v4, v5, v6}, Lcom/oneplus/gallery/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 309
    .end local v2    # "mediaContentUri":Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->enableBeam()V

    .line 310
    return-void

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    move-object v0, v4

    .line 252
    goto :goto_0

    .restart local v0    # "contentUri":Landroid/net/Uri;
    :cond_4
    move-object v3, v4

    .line 253
    goto :goto_1

    .line 299
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    .line 300
    new-instance v4, Lcom/oneplus/gallery/media/SimpleMediaList;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/oneplus/gallery/media/Media;

    aput-object p1, v5, v7

    invoke-direct {v4, v5}, Lcom/oneplus/gallery/media/SimpleMediaList;-><init>([Lcom/oneplus/gallery/media/Media;)V

    iput-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 301
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v5, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 302
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v5, Lcom/oneplus/gallery/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 305
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoViewerActivity;->registerMediaChangeCallback()V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 2
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
    .line 318
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "com.oneplus.gallery.PhotoViewerActivity.Media"

    iget-object v1, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v0, "com.oneplus.gallery.PhotoViewerActivity.MediaSet"

    iget-object v1, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v0, "com.oneplus.gallery.PhotoViewerActivity.MediaList"

    iget-object v1, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity;->m_IsInstanceStateSaved:Z

    .line 325
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/SingleMediaActivity;->onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 326
    return-void
.end method
