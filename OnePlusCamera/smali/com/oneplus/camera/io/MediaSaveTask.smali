.class public abstract Lcom/oneplus/camera/io/MediaSaveTask;
.super Ljava/lang/Object;
.source "MediaSaveTask.java"


# static fields
.field private static final CONTENT_URI_STRING_FILE:Ljava/lang/String;

.field private static final CONTENT_URI_STRING_IMAGE:Ljava/lang/String;

.field private static final CONTENT_URI_STRING_VIDEO:Ljava/lang/String;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private volatile m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private volatile m_ContentUri:Landroid/net/Uri;

.field private volatile m_Context:Landroid/content/Context;

.field private volatile m_CreatedTime:J

.field private volatile m_FilePath:Ljava/lang/String;

.field private volatile m_FrameIndex:I

.field private volatile m_IsHdrActive:Ljava/lang/Boolean;

.field private volatile m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

.field private volatile m_Location:Landroid/location/Location;

.field private volatile m_SceneMode:Ljava/lang/Integer;

.field private volatile m_StorageType:Lcom/oneplus/io/Storage$Type;

.field protected volatile m_Thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/io/MediaSaveTask;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    .line 38
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/io/MediaSaveTask;->CONTENT_URI_STRING_IMAGE:Ljava/lang/String;

    .line 39
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/io/MediaSaveTask;->CONTENT_URI_STRING_VIDEO:Ljava/lang/String;

    .line 28
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/camera/io/MediaSaveTask;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_Context:Landroid/content/Context;

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_CreatedTime:J

    .line 60
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/camera/io/MediaSaveTask;-><init>(Landroid/content/Context;)V

    .line 75
    iput-object p2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 72
    return-void
.end method


# virtual methods
.method public final getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method public final getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_CreatedTime:J

    return-wide v0
.end method

.method protected getDcimPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 113
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v4

    const-class v5, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/io/StorageManager;

    .line 114
    .local v2, "storageManager":Lcom/oneplus/io/StorageManager;
    iget-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_StorageType:Lcom/oneplus/io/Storage$Type;

    .line 115
    .local v3, "type":Lcom/oneplus/io/Storage$Type;
    invoke-static {v2, v3}, Lcom/oneplus/io/StorageUtils;->findStorage(Lcom/oneplus/io/StorageManager;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v1

    .line 116
    .local v1, "storage":Lcom/oneplus/io/Storage;
    invoke-static {v1}, Lcom/oneplus/io/StorageUtils;->getDcimPath(Lcom/oneplus/io/Storage;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 118
    return-object v0

    .line 119
    :cond_0
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public final declared-synchronized getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/io/MediaSaveTask;->onGenerateFilePath(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getFilePathSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrameIndex()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FrameIndex:I

    return v0
.end method

.method public getLensFacing()Lcom/oneplus/camera/Camera$LensFacing;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_Location:Landroid/location/Location;

    return-object v0
.end method

.method public abstract getMediaSize()J
.end method

.method public abstract getPictureId()Ljava/lang/String;
.end method

.method public getSceneMode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_SceneMode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStorageType()Lcom/oneplus/io/Storage$Type;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_StorageType:Lcom/oneplus/io/Storage$Type;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public insertToMediaStore()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 224
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 226
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "insertToMediaStore() - No media file path"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return v8

    .line 231
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 234
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/oneplus/camera/io/MediaSaveTask;->onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 236
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "insertToMediaStore() - Fail to prepare values"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    return v8

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "insertToMediaStore() - Fail to prepare values"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    return v8

    .line 249
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/oneplus/camera/io/MediaSaveTask;->onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    .line 250
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    if-eqz v5, :cond_5

    .line 252
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "uriString":Ljava/lang/String;
    sget-object v5, Lcom/oneplus/camera/io/MediaSaveTask;->CONTENT_URI_STRING_IMAGE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/oneplus/camera/io/MediaSaveTask;->CONTENT_URI_STRING_VIDEO:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    if-eqz v5, :cond_3

    .line 257
    :cond_2
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/oneplus/camera/io/MediaSaveTask;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 264
    :cond_3
    :goto_0
    :try_start_3
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "insertToMediaStore() - Content URI : "

    iget-object v7, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 281
    :try_start_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .local v1, "galleryContentValues":Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {p0, v5, v6, v1}, Lcom/oneplus/camera/io/MediaSaveTask;->onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 284
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 286
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {p0, v5, v6, v1}, Lcom/oneplus/camera/io/MediaSaveTask;->onInsertToGalleryDatabase(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 287
    .local v2, "galleryMediaUri":Landroid/net/Uri;
    if-eqz v2, :cond_6

    .line 288
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "insertToMediaStore() - Gallery media Uri: "

    invoke-static {v5, v6, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 300
    .end local v1    # "galleryContentValues":Landroid/content/ContentValues;
    .end local v2    # "galleryMediaUri":Landroid/net/Uri;
    :cond_4
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 260
    :catch_1
    move-exception v0

    .line 261
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :try_start_5
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertToMediaStore() - Fail to convert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 273
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "uriString":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 274
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "insertToMediaStore() - Fail to insert"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    return v8

    .line 268
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_5
    :try_start_6
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "insertToMediaStore() - Fail to insert"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 269
    return v8

    .line 290
    .restart local v1    # "galleryContentValues":Landroid/content/ContentValues;
    .restart local v2    # "galleryMediaUri":Landroid/net/Uri;
    .restart local v3    # "uriString":Ljava/lang/String;
    :cond_6
    :try_start_7
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "insertToMediaStore() - Fail to insert prepared gallery media content values"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 295
    .end local v1    # "galleryContentValues":Landroid/content/ContentValues;
    .end local v2    # "galleryMediaUri":Landroid/net/Uri;
    :catch_3
    move-exception v0

    .line 296
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "insertToMediaStore() - Fail to insert gallery database"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isHdrActive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_IsHdrActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected abstract onGenerateFilePath(Z)Ljava/lang/String;
.end method

.method protected onInsertToGalleryDatabase(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "preparedValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x0

    .line 331
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onInsertToGalleryDatabase() - File path: "

    const-string/jumbo v3, ", content Uri: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ", content values: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 335
    :cond_0
    return-object v9

    .line 338
    :cond_1
    const-string/jumbo v0, "media_id"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 339
    .local v7, "mediaId":Ljava/lang/Long;
    if-nez v7, :cond_2

    .line 343
    :try_start_0
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 344
    const-string/jumbo v0, "media_id"

    invoke-virtual {p3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :cond_2
    :try_start_1
    new-instance v8, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    invoke-direct {v8, p3}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;-><init>(Landroid/content/ContentValues;)V

    .line 357
    .local v8, "mediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    invoke-static {v8}, Lcom/oneplus/gallery2/media/GalleryDatabase;->updateExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->createExtraMediaInfoUri(J)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 347
    .end local v8    # "mediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :catch_0
    move-exception v6

    .line 348
    .local v6, "ex":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInsertToGalleryDatabase() - Fail to get media ID from URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    return-object v9

    .line 359
    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "mediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInsertToGalleryDatabase() - Fail to insert for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 360
    return-object v9

    .line 363
    .end local v8    # "mediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :catch_1
    move-exception v6

    .line 364
    .restart local v6    # "ex":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInsertToGalleryDatabase() - Fail to insert for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    return-object v9
.end method

.method protected abstract onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected onPrepareFileSave(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
.end method

.method protected abstract onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
.end method

.method protected abstract onSaveToFile(Ljava/lang/String;)Z
.end method

.method public final saveMediaToFile()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 426
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/io/MediaSaveTask;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    .line 427
    iget-object v1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveMediaToFile() - File path : "

    iget-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/io/MediaSaveTask;->onPrepareFileSave(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveMediaToFile() - Fail to prepare media save"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    return v4

    .line 431
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveMediaToFile() - No available file path"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 432
    return v4

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveMediaToFile() - No available file path"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    return v4

    .line 451
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 452
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveMediaToFile() - Fail to prepare media save"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    return v4

    .line 459
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveMediaToFile() - Save to file [start]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/io/MediaSaveTask;->onSaveToFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 462
    iget-object v1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveMediaToFile() - Fail to save media to file"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return v4

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveMediaToFile() - Save to file [end]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 475
    const/4 v1, 0x1

    return v1

    .line 469
    :catch_2
    move-exception v0

    .line 470
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveMediaToFile() - Fail to save media to file"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    return v4
.end method

.method public setFrameIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 485
    iput p1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FrameIndex:I

    .line 483
    return-void
.end method

.method public setIsHdrActive(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "active"    # Ljava/lang/Boolean;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_IsHdrActive:Ljava/lang/Boolean;

    .line 493
    return-void
.end method

.method public setLensFacing(Lcom/oneplus/camera/Camera$LensFacing;)V
    .locals 0
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    .line 503
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_Location:Landroid/location/Location;

    .line 513
    return-void
.end method

.method public setSceneMode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "sceneMode"    # Ljava/lang/Integer;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_SceneMode:Ljava/lang/Integer;

    .line 523
    return-void
.end method

.method public setStorageType(Lcom/oneplus/io/Storage$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/oneplus/io/Storage$Type;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_StorageType:Lcom/oneplus/io/Storage$Type;

    .line 533
    return-void
.end method
