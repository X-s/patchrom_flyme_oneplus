.class public final Lcom/oneplus/media/VideoUtils;
.super Ljava/lang/Object;
.source "VideoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoUtils"

.field private static final USE_GENERIC_METADATA_ONLY:Z = true


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isIsoBaseMediaHeader(Ljava/io/InputStream;)Z
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 34
    const/4 v2, 0x0

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v3, Lcom/oneplus/io/StreamState;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    const/16 v4, 0x8

    :try_start_1
    new-array v1, v4, [B

    .line 37
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lcom/oneplus/media/VideoUtils;->isIsoBaseMediaHeader([B)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    .line 43
    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 40
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 41
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    const-string/jumbo v4, "VideoUtils"

    const-string/jumbo v5, "isIsoBaseMediaHeader() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return v7

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v4, v7

    .line 37
    goto :goto_0

    .line 43
    :catch_1
    move-exception v5

    goto :goto_1

    .line 37
    :cond_2
    return v4

    .line 43
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_2
    move-exception v4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
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
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_5
    if-eqz v5, :cond_5

    :try_start_6
    throw v5

    .line 40
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 43
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_5

    :cond_4
    if-eq v5, v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_1
    move-exception v4

    goto :goto_4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_3
.end method

.method public static isIsoBaseMediaHeader([B)Z
    .locals 3
    .param p0, "header"    # [B

    .prologue
    const/4 v0, 0x0

    .line 54
    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 55
    :cond_0
    return v0

    .line 56
    :cond_1
    const/4 v1, 0x4

    aget-byte v1, p0, v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_2

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_2

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_2

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static readMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/oneplus/media/VideoMetadata;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 99
    if-nez p0, :cond_0

    .line 101
    const-string/jumbo v1, "VideoUtils"

    const-string/jumbo v2, "readMetadata() - No context"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v3

    .line 104
    :cond_0
    if-nez p1, :cond_1

    .line 106
    const-string/jumbo v1, "VideoUtils"

    const-string/jumbo v2, "readMetadata() - No content URI"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-object v3

    .line 130
    :cond_1
    :try_start_0
    new-instance v1, Lcom/oneplus/media/GenericVideoMetadata;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/media/GenericVideoMetadata;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v1, "VideoUtils"

    const-string/jumbo v2, "readMetadata() - Fail to read metadata"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    return-object v3
.end method

.method public static readMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/VideoMetadata;
    .locals 8
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    .line 147
    if-nez p0, :cond_0

    .line 149
    const-string/jumbo v3, "VideoUtils"

    const-string/jumbo v4, "readMetadata() - No stream to read"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object v5

    .line 152
    :cond_0
    const/4 v1, 0x0

    .local v1, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v2, Lcom/oneplus/io/StreamState;

    invoke-direct {v2, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    .end local v1    # "streamState":Lcom/oneplus/io/StreamState;
    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_2

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 159
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v2

    .line 160
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_1
    const-string/jumbo v3, "VideoUtils"

    const-string/jumbo v4, "readMetadata() - Fail to read metadata"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    return-object v5

    .line 162
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 156
    :cond_2
    return-object v5

    .line 162
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v1    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_2
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_2
    if-eqz v5, :cond_3

    :try_start_4
    invoke-virtual {v1}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_3
    if-eqz v4, :cond_5

    :try_start_5
    throw v4

    .line 159
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 162
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v4, :cond_4

    move-object v4, v6

    goto :goto_3

    :cond_4
    if-eq v4, v6, :cond_3

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :catchall_1
    move-exception v3

    move-object v4, v5

    goto :goto_2
.end method

.method public static readMetadata(Ljava/lang/String;)Lcom/oneplus/media/VideoMetadata;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 67
    if-nez p0, :cond_0

    .line 69
    const-string/jumbo v4, "VideoUtils"

    const-string/jumbo v5, "readMetadata() - No file path"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v6

    .line 74
    :cond_0
    const/4 v2, 0x0

    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Lcom/oneplus/media/VideoUtils;->readMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/VideoMetadata;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 77
    .local v1, "metadata":Lcom/oneplus/media/VideoMetadata;
    if-eqz v1, :cond_3

    .line 79
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move-object v4, v6

    :goto_0
    if-eqz v4, :cond_2

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 83
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 84
    .end local v1    # "metadata":Lcom/oneplus/media/VideoMetadata;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :goto_1
    const-string/jumbo v4, "VideoUtils"

    const-string/jumbo v5, "readMetadata() - Fail to read metadata"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-object v6

    .line 79
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "metadata":Lcom/oneplus/media/VideoMetadata;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 78
    :cond_2
    return-object v1

    .line 79
    :cond_3
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    move-object v4, v6

    :goto_2
    if-eqz v4, :cond_8

    :try_start_5
    throw v4
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catch_2
    move-exception v4

    goto :goto_2

    .end local v1    # "metadata":Lcom/oneplus/media/VideoMetadata;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_4
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_5
    if-eqz v5, :cond_7

    :try_start_8
    throw v5

    .line 83
    :catch_4
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 79
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_5
    move-exception v7

    if-nez v5, :cond_6

    move-object v5, v7

    goto :goto_5

    :cond_6
    if-eq v5, v7, :cond_5

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    throw v4
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 80
    .restart local v1    # "metadata":Lcom/oneplus/media/VideoMetadata;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :cond_8
    :try_start_9
    new-instance v4, Lcom/oneplus/media/GenericVideoMetadata;

    invoke-direct {v4, p0}, Lcom/oneplus/media/GenericVideoMetadata;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    return-object v4

    .line 79
    .end local v1    # "metadata":Lcom/oneplus/media/VideoMetadata;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v5, v6

    goto :goto_4

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    move-object v5, v6

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_3
.end method
