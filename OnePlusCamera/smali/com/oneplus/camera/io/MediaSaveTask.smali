.class public abstract Lcom/oneplus/camera/io/MediaSaveTask;
.super Ljava/lang/Object;
.source "MediaSaveTask.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private volatile m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private volatile m_ContentUri:Landroid/net/Uri;

.field private volatile m_FilePath:Ljava/lang/String;

.field protected volatile m_Thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CaptureHandle;)V
    .locals 0
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/oneplus/camera/io/MediaSaveTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 44
    return-void
.end method


# virtual methods
.method public final getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method public final getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final declared-synchronized getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/oneplus/camera/io/MediaSaveTask;->onGenerateFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final insertToMediaStore()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v4, "insertToMediaStore() - No media file path"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return v2

    .line 100
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v1, "values":Landroid/content/ContentValues;
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/camera/io/MediaSaveTask;->onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v4, "insertToMediaStore() - Fail to prepare values"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v4, "insertToMediaStore() - Fail to prepare values"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/camera/io/MediaSaveTask;->onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    .line 119
    iget-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v4, "insertToMediaStore() - Content URI : "

    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const/4 v2, 0x1

    goto :goto_0

    .line 123
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v4, "insertToMediaStore() - Fail to insert"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    .line 129
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v4, "insertToMediaStore() - Fail to insert"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract onGenerateFilePath()Ljava/lang/String;
.end method

.method protected abstract onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected onPrepareFileSave(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
.end method

.method protected abstract onSaveToFile(Ljava/lang/String;)Z
.end method

.method public final saveMediaToFile()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/io/MediaSaveTask;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    .line 192
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - File path : "

    iget-object v4, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/io/MediaSaveTask;->onPrepareFileSave(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - Fail to prepare media save"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    :goto_0
    return v1

    .line 196
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - No available file path"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - No available file path"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 217
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - Fail to prepare media save"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 224
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - Save to file [start]"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/io/MediaSaveTask;->onSaveToFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 227
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - Fail to save media to file"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 233
    :catch_2
    move-exception v0

    .line 235
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - Fail to save media to file"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 230
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - Save to file [end]"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 240
    const/4 v1, 0x1

    goto :goto_0
.end method
