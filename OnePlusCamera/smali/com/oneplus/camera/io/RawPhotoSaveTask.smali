.class public Lcom/oneplus/camera/io/RawPhotoSaveTask;
.super Lcom/oneplus/camera/io/MediaSaveTask;
.source "RawPhotoSaveTask.java"


# instance fields
.field protected final m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

.field protected final m_Context:Landroid/content/Context;

.field private m_DngCreator:Landroid/hardware/camera2/DngCreator;

.field private m_MediaSize:Ljava/lang/Long;

.field private final m_PictureId:Ljava/lang/String;

.field private final m_TakenTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;Landroid/hardware/camera2/DngCreator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;
    .param p4, "dngCreator"    # Landroid/hardware/camera2/DngCreator;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/io/MediaSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;)V

    .line 38
    iput-object p1, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_Context:Landroid/content/Context;

    .line 39
    iput-object p4, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_DngCreator:Landroid/hardware/camera2/DngCreator;

    .line 40
    if-eqz p3, :cond_0

    .line 42
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clone()Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    .line 43
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_PictureId:Ljava/lang/String;

    .line 44
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getTakenTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_TakenTime:J

    .line 35
    :goto_0
    return-void

    .line 48
    :cond_0
    iput-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    .line 49
    iput-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_PictureId:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_TakenTime:J

    goto :goto_0
.end method


# virtual methods
.method public getMediaSize()J
    .locals 4

    .prologue
    .line 59
    iget-object v1, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_MediaSize:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_MediaSize:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_MediaSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/lang/Throwable;
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_MediaSize:Ljava/lang/Long;

    goto :goto_0
.end method

.method public getPictureId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_PictureId:Ljava/lang/String;

    return-object v0
.end method

.method protected onGenerateFilePath(Z)Ljava/lang/String;
    .locals 11
    .param p1, "checkExistentFile"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 86
    new-instance v1, Ljava/io/File;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/camera/io/RawPhotoSaveTask;->getDcimPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string/jumbo v5, "Camera"

    aput-object v5, v4, v10

    invoke-static {v4}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_TakenTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".dng"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v2, "file":Ljava/io/File;
    if-eqz p1, :cond_2

    .line 96
    const/4 v3, 0x1

    .line 97
    .local v3, "suffix":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_TakenTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".dng"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .restart local v2    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "suffix":I
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onGenerateFilePath() - Fail to create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v4, 0x0

    return-object v4

    .line 103
    .restart local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v2    # "file":Ljava/io/File;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onGenerateFilePath() - File path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "preparedValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 112
    new-array v2, v6, [Ljava/lang/String;

    aput-object p1, v2, v5

    .line 113
    .local v2, "paths":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v4, "image/x-adobe-dng"

    aput-object v4, v1, v5

    .line 115
    .local v1, "mimeTypes":[Ljava/lang/String;
    new-array v3, v6, [Landroid/net/Uri;

    aput-object v7, v3, v5

    .line 116
    .local v3, "result":[Landroid/net/Uri;
    monitor-enter v3

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_Context:Landroid/content/Context;

    new-instance v5, Lcom/oneplus/camera/io/RawPhotoSaveTask$1;

    invoke-direct {v5, p0, v3}, Lcom/oneplus/camera/io/RawPhotoSaveTask$1;-><init>(Lcom/oneplus/camera/io/RawPhotoSaveTask;[Landroid/net/Uri;)V

    invoke-static {v4, v2, v1, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onInsertToMediaStore() - Wait for MediaScannerConnection [start]"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 138
    iget-object v4, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onInsertToMediaStore() - Wait for MediaScannerConnection [end]"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v4, 0x0

    aget-object v4, v3, v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v4

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v4, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onInsertToMediaStore() - Interrupted"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 144
    return-object v7

    .line 116
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method protected onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveToFile(Ljava/lang/String;)Z
    .locals 14
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 170
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSaveToFile()"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v7, "file":Ljava/io/File;
    const/4 v8, 0x0

    .line 175
    .local v8, "rawData":[B
    const/4 v9, 0x0

    .local v9, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 177
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .local v10, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_DngCreator:Landroid/hardware/camera2/DngCreator;

    if-nez v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSaveToFile() - dng creator is null"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 220
    if-eqz v10, :cond_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    if-eqz v11, :cond_3

    :try_start_3
    throw v11
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    .end local v8    # "rawData":[B
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/Throwable;
    move-object v9, v10

    .line 210
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSaveToFile() - Fail to write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 217
    :cond_1
    if-eqz v8, :cond_2

    .line 218
    const/4 v8, 0x0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clearImagePlane()V

    .line 213
    return v12

    .line 220
    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "rawData":[B
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v11

    goto :goto_0

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clearImagePlane()V

    .line 180
    return v12

    .line 183
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    if-eqz v0, :cond_a

    .line 185
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_7

    .line 188
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v8

    .line 189
    .local v8, "rawData":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v1, "memoryStream":Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_DngCreator:Landroid/hardware/camera2/DngCreator;

    iget-object v2, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V

    .line 193
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 206
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSaveToFile() - Picture saved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 220
    if-eqz v10, :cond_5

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    :goto_2
    if-eqz v11, :cond_10

    :try_start_7
    throw v11
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 216
    .end local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "rawData":[B
    :catchall_0
    move-exception v0

    move-object v9, v10

    .line 217
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v8, :cond_6

    .line 218
    const/4 v8, 0x0

    .line 219
    :cond_6
    iget-object v2, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clearImagePlane()V

    .line 216
    throw v0

    .line 197
    .local v8, "rawData":[B
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    :cond_7
    :try_start_8
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSaveToFile() - Unknown picture format : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 220
    if-eqz v10, :cond_8

    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_8
    :goto_4
    if-eqz v11, :cond_9

    :try_start_a
    throw v11
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_2
    move-exception v11

    goto :goto_4

    .line 219
    :cond_9
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clearImagePlane()V

    .line 198
    return v12

    .line 203
    :cond_a
    :try_start_b
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSaveToFile() - No picture to save "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 220
    if-eqz v10, :cond_b

    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_b
    :goto_5
    if-eqz v11, :cond_c

    :try_start_d
    throw v11
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catch_3
    move-exception v11

    goto :goto_5

    .line 219
    :cond_c
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clearImagePlane()V

    .line 204
    return v12

    .line 220
    .restart local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .local v8, "rawData":[B
    :catch_4
    move-exception v11

    goto :goto_2

    .end local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .local v8, "rawData":[B
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .end local v8    # "rawData":[B
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catchall_1
    move-exception v2

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    :goto_7
    if-eqz v9, :cond_d

    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_d
    :goto_8
    if-eqz v2, :cond_f

    :try_start_10
    throw v2

    .line 209
    :catch_6
    move-exception v6

    .restart local v6    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_1

    .line 220
    .end local v6    # "ex":Ljava/lang/Throwable;
    :catch_7
    move-exception v3

    if-nez v2, :cond_e

    move-object v2, v3

    goto :goto_8

    :cond_e
    if-eq v2, v3, :cond_d

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 216
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 220
    :cond_f
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 217
    .restart local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .local v8, "rawData":[B
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    :cond_10
    if-eqz v8, :cond_11

    .line 218
    const/4 v8, 0x0

    .line 219
    .end local v8    # "rawData":[B
    :cond_11
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clearImagePlane()V

    .line 222
    const/4 v0, 0x1

    return v0

    .line 220
    .end local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .local v8, "rawData":[B
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v0

    move-object v2, v11

    goto :goto_7

    .end local v8    # "rawData":[B
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v0

    move-object v2, v11

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .local v9, "stream":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    goto :goto_6
.end method
