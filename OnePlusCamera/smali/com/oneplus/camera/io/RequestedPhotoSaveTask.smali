.class public Lcom/oneplus/camera/io/RequestedPhotoSaveTask;
.super Lcom/oneplus/camera/io/PhotoSaveTask;
.source "RequestedPhotoSaveTask.java"


# instance fields
.field private m_ContentUri:Landroid/net/Uri;

.field private m_Context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Landroid/net/Uri;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p4}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    .line 27
    iput-object p3, p0, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;->m_ContentUri:Landroid/net/Uri;

    .line 28
    iput-object p1, p0, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;->m_Context:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method protected onGenerateFilePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 37
    iget-object v2, p0, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-static {v1}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    .end local v0    # "directory":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v1

    .line 44
    .restart local v0    # "directory":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGenerateFilePath() - Fail to create "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "preparedValues"    # Landroid/content/ContentValues;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->recycle()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onSaveToFile(Ljava/lang/String;)Z
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 65
    const/4 v3, 0x1

    .line 66
    .local v3, "success":Z
    const/4 v0, 0x0

    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, p0, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;->m_ContentUri:Landroid/net/Uri;

    const-string/jumbo v7, "w"

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 75
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 71
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 72
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    :goto_1
    const/4 v3, 0x0

    .line 73
    iget-object v4, p0, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onSaveToFile() - Open output stream error"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 76
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return v3

    .line 75
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v5

    goto :goto_0

    :cond_1
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v4

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_4
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_5
    if-eqz v5, :cond_4

    :try_start_6
    throw v5

    .line 71
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 75
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    if-nez v5, :cond_3

    move-object v5, v6

    goto :goto_5

    :cond_3
    if-eq v5, v6, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    goto :goto_4

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_3
.end method
