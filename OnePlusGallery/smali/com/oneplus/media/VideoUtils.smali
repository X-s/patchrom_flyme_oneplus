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

    .line 24
    return-void
.end method

.method public static isIsoBaseMediaHeader(Ljava/io/InputStream;)Z
    .locals 8
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 34
    const/4 v4, 0x0

    :try_start_0
    new-instance v2, Lcom/oneplus/io/StreamState;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 36
    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    const/16 v3, 0x8

    :try_start_1
    new-array v1, v3, [B

    .line 37
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-static {v1}, Lcom/oneplus/media/VideoUtils;->isIsoBaseMediaHeader([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 38
    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 42
    .end local v1    # "header":[B
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_0
    :goto_1
    return v3

    .restart local v1    # "header":[B
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v3, v5

    .line 37
    goto :goto_0

    .end local v1    # "header":[B
    :catchall_0
    move-exception v3

    .line 38
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V

    :cond_2
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    if-nez v4, :cond_3

    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "VideoUtils"

    const-string v4, "isIsoBaseMediaHeader() - Unknown error"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v5

    .line 42
    goto :goto_1

    .line 38
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    if-eq v4, v3, :cond_4

    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    move-object v3, v4

    goto :goto_3

    :catchall_2
    move-exception v3

    goto :goto_2
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

    .line 56
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    aget-byte v1, p0, v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_0

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static readMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/oneplus/media/VideoMetadata;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 99
    if-nez p0, :cond_0

    .line 101
    const-string v2, "VideoUtils"

    const-string v3, "readMetadata() - No context"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-object v1

    .line 104
    :cond_0
    if-nez p1, :cond_1

    .line 106
    const-string v2, "VideoUtils"

    const-string v3, "readMetadata() - No content URI"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    :try_start_0
    new-instance v2, Lcom/oneplus/media/GenericVideoMetadata;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/media/GenericVideoMetadata;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "VideoUtils"

    const-string v3, "readMetadata() - Fail to read metadata"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static readMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/VideoMetadata;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 147
    if-nez p0, :cond_1

    .line 149
    const-string v2, "VideoUtils"

    const-string v4, "readMetadata() - No stream to read"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-object v3

    .line 152
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Lcom/oneplus/io/StreamState;

    invoke-direct {v1, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V

    .line 157
    .local v1, "streamState":Lcom/oneplus/io/StreamState;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_0
    move-exception v2

    if-nez v3, :cond_2

    :goto_1
    :try_start_1
    throw v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "VideoUtils"

    const-string v4, "readMetadata() - Fail to read metadata"

    invoke-static {v2, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v2, v3

    goto :goto_1
.end method

.method public static readMetadata(Ljava/lang/String;)Lcom/oneplus/media/VideoMetadata;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 67
    if-nez p0, :cond_1

    .line 69
    const-string v3, "VideoUtils"

    const-string v4, "readMetadata() - No file path"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 85
    :cond_0
    :goto_0
    return-object v1

    .line 74
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/oneplus/media/VideoUtils;->readMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/VideoMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 77
    .local v1, "metadata":Lcom/oneplus/media/VideoMetadata;
    if-eqz v1, :cond_2

    .line 79
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "metadata":Lcom/oneplus/media/VideoMetadata;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    move-object v4, v5

    :goto_1
    if-nez v4, :cond_5

    :goto_2
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "VideoUtils"

    const-string v4, "readMetadata() - Fail to read metadata"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v5

    .line 85
    goto :goto_0

    .line 79
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "metadata":Lcom/oneplus/media/VideoMetadata;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :cond_2
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    :cond_3
    :try_start_5
    new-instance v1, Lcom/oneplus/media/GenericVideoMetadata;

    .end local v1    # "metadata":Lcom/oneplus/media/VideoMetadata;
    invoke-direct {v1, p0}, Lcom/oneplus/media/GenericVideoMetadata;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 79
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_4
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v3

    goto :goto_1

    .end local v2    # "stream":Ljava/io/FileInputStream;
    :cond_5
    if-eq v4, v3, :cond_6

    :try_start_7
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :cond_6
    move-object v3, v4

    goto :goto_2
.end method
