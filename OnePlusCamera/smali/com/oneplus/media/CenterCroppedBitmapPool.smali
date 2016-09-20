.class public Lcom/oneplus/media/CenterCroppedBitmapPool;
.super Lcom/oneplus/media/BitmapPool;
.source "CenterCroppedBitmapPool.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "capacity"    # J
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;
    .param p5, "decodingThreadCount"    # I

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "capacity"    # J
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;
    .param p5, "decodingThreadCount"    # I
    .param p6, "flags"    # I

    .prologue
    .line 45
    invoke-direct/range {p0 .. p6}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;II)V

    .line 46
    return-void
.end method


# virtual methods
.method protected decodePhoto(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, "stream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/media/CenterCroppedBitmapPool;->preferQualityOverSpeed()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/media/CenterCroppedBitmapPool;->getTargetConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v3, v5, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/oneplus/media/CenterCroppedBitmapPool;->getDecodeFlags()I

    move-result v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p3, p4, v3, v5}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/oneplus/media/CenterCroppedBitmapPool;->getTargetConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 61
    if-eqz v1, :cond_0

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v3

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 60
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/oneplus/media/CenterCroppedBitmapPool;->getDecodeFlags()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/media/CenterCroppedBitmapPool;->getTargetConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v1, p3, p4, v3, v5}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 61
    if-eqz v1, :cond_0

    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 53
    :catch_2
    move-exception v3

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_1
    if-eqz v1, :cond_4

    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_2
    throw v3

    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_1
.end method

.method protected decodePhoto(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/oneplus/media/CenterCroppedBitmapPool;->preferQualityOverSpeed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/media/CenterCroppedBitmapPool;->getTargetConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/oneplus/media/CenterCroppedBitmapPool;->getDecodeFlags()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v1, v2}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/oneplus/media/CenterCroppedBitmapPool;->getTargetConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 71
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/media/CenterCroppedBitmapPool;->getDecodeFlags()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/media/CenterCroppedBitmapPool;->getTargetConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {p1, p2, p3, v1, v2}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected decodeVideo(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    const-string v4, "r"

    invoke-virtual {p1, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    .line 82
    :try_start_1
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 83
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 84
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, p3, p4}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v4

    .line 85
    if-eqz v0, :cond_0

    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_1
    return-object v4

    .line 85
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 88
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    move-object v1, v2

    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_1
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_2
    throw v4

    .line 85
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 80
    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_1
    move-exception v4

    :goto_2
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 85
    :catchall_1
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v5, :cond_5

    :try_start_7
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_4
    :goto_4
    :try_start_8
    throw v4

    .line 88
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_2
    move-exception v4

    goto :goto_1

    .line 85
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_3
    move-exception v4

    goto :goto_3

    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_3

    .line 80
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_2
.end method

.method protected decodeVideo(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 99
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 105
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_0
    return-object v2

    .line 105
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_1
    throw v2

    .line 105
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_0
.end method
