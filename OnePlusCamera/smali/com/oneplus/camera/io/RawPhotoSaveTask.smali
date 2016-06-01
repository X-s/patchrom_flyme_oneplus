.class public Lcom/oneplus/camera/io/RawPhotoSaveTask;
.super Lcom/oneplus/camera/io/MediaSaveTask;
.source "RawPhotoSaveTask.java"


# static fields
.field private static suffix:I


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected final args:Lcom/oneplus/camera/CameraCaptureEventArgs;

.field protected final context:Landroid/content/Context;

.field private m_DngCreator:Landroid/hardware/camera2/DngCreator;

.field private final m_TakenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->suffix:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;Landroid/hardware/camera2/DngCreator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;
    .param p4, "dngCreator"    # Landroid/hardware/camera2/DngCreator;

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lcom/oneplus/camera/io/MediaSaveTask;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->context:Landroid/content/Context;

    .line 36
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clone()Lcom/oneplus/base/EventArgs;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraCaptureEventArgs;

    :goto_0
    iput-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    .line 37
    iput-object p4, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_DngCreator:Landroid/hardware/camera2/DngCreator;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_TakenTime:J

    .line 39
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onGenerateFilePath()Ljava/lang/String;
    .locals 10

    .prologue
    .line 44
    invoke-static {}, Lcom/oneplus/io/Path;->getDefaultCameraFolder()Ljava/io/File;

    move-result-object v1

    .line 45
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    iget-object v4, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGenerateFilePath() - Fail to create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x0

    .line 59
    :goto_0
    return-object v4

    .line 50
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_TakenTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dng"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x1

    .line 53
    .local v3, "suffix":I
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_TakenTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dng"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .restart local v2    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 58
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGenerateFilePath() - Write picture to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method protected onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "preparedValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    new-array v2, v7, [Ljava/lang/String;

    aput-object p1, v2, v6

    .line 67
    .local v2, "paths":[Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    const-string v5, "image/x-adobe-dng"

    aput-object v5, v1, v6

    .line 69
    .local v1, "mimeTypes":[Ljava/lang/String;
    new-array v3, v7, [Landroid/net/Uri;

    aput-object v4, v3, v6

    .line 70
    .local v3, "result":[Landroid/net/Uri;
    monitor-enter v3

    .line 72
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->context:Landroid/content/Context;

    new-instance v6, Lcom/oneplus/camera/io/RawPhotoSaveTask$1;

    invoke-direct {v6, p0, v3}, Lcom/oneplus/camera/io/RawPhotoSaveTask$1;-><init>(Lcom/oneplus/camera/io/RawPhotoSaveTask;[Landroid/net/Uri;)V

    invoke-static {v5, v2, v1, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "onInsertToMediaStore() - Wait for MediaScannerConnection [start]"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 92
    iget-object v5, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "onInsertToMediaStore() - Wait for MediaScannerConnection [end]"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v5, 0x0

    aget-object v4, v3, v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    .line 98
    :goto_0
    return-object v4

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "onInsertToMediaStore() - Interrupted"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    monitor-exit v3

    goto :goto_0

    .line 100
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method protected onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveToFile(Ljava/lang/String;)Z
    .locals 14
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 110
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v2, "onSaveToFile()"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v7, "file":Ljava/io/File;
    const/4 v8, 0x0

    .line 115
    .local v8, "rawData":[B
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v9, "stream":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_DngCreator:Landroid/hardware/camera2/DngCreator;

    if-nez v0, :cond_6

    .line 119
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v2, "onSaveToFile() - dng creator is null"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 147
    if-eqz v9, :cond_0

    if-eqz v12, :cond_4

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 158
    const/4 v8, 0x0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clearImagePlane()V

    move v0, v11

    .line 162
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return v0

    .line 147
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    .local v10, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 148
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .end local v10    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 150
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_4
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveToFile() - Fail to write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    :cond_2
    if-eqz v8, :cond_3

    .line 158
    const/4 v8, 0x0

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clearImagePlane()V

    move v0, v11

    goto :goto_1

    .line 147
    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 157
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 158
    const/4 v8, 0x0

    .line 159
    :cond_5
    iget-object v2, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clearImagePlane()V

    throw v0

    .line 123
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    if-eqz v0, :cond_d

    .line 125
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_9

    .line 128
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v8

    .line 129
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .local v1, "memoryStream":Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->m_DngCreator:Landroid/hardware/camera2/DngCreator;

    iget-object v2, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V

    .line 133
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 146
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveToFile() - Picture saved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 147
    if-eqz v9, :cond_7

    if-eqz v12, :cond_11

    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 157
    :cond_7
    :goto_2
    if-eqz v8, :cond_8

    .line 158
    const/4 v8, 0x0

    .line 159
    :cond_8
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clearImagePlane()V

    .line 162
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 137
    .end local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_9
    :try_start_8
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveToFile() - Unknown picture format : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 147
    if-eqz v9, :cond_a

    if-eqz v12, :cond_c

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 157
    :cond_a
    :goto_3
    if-eqz v8, :cond_b

    .line 158
    const/4 v8, 0x0

    .line 159
    :cond_b
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clearImagePlane()V

    move v0, v11

    goto/16 :goto_1

    .line 147
    :catch_2
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 143
    :cond_d
    :try_start_b
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveToFile() - No picture to save "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 147
    if-eqz v9, :cond_e

    if-eqz v12, :cond_10

    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 157
    :cond_e
    :goto_4
    if-eqz v8, :cond_f

    .line 158
    const/4 v8, 0x0

    .line 159
    :cond_f
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clearImagePlane()V

    move v0, v11

    goto/16 :goto_1

    .line 147
    :catch_3
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    :try_start_d
    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_10
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4

    .restart local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_11
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2

    .line 115
    .end local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 147
    :catchall_1
    move-exception v2

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    :goto_5
    if-eqz v9, :cond_12

    if-eqz v2, :cond_13

    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_12
    :goto_6
    :try_start_10
    throw v0

    :catch_6
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_13
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v12

    goto :goto_5
.end method
