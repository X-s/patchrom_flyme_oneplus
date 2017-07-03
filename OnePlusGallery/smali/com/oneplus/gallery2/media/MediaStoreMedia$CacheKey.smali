.class final Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;
.super Ljava/lang/Object;
.source "MediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaCacheKey;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6bb35174ecf0fe18L


# instance fields
.field public final filePath:Ljava/lang/String;

.field public final fileSize:J

.field public final lastModifiedTime:J


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->filePath:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->fileSize:J

    .line 237
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getLastModifiedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->lastModifiedTime:J

    .line 238
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 244
    instance-of v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 246
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;

    .line 247
    .local v0, "otherKey":Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->fileSize:J

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->fileSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->lastModifiedTime:J

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->lastModifiedTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->filePath:Ljava/lang/String;

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->filePath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 252
    .end local v0    # "otherKey":Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;
    :cond_0
    return v1
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->fileSize:J

    long-to-int v0, v0

    return v0
.end method

.method public isExpired()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 282
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->filePath:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v2

    .line 284
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->filePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "file":Ljava/io/File;
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->fileSize:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget-wide v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->lastModifiedTime:J

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 287
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method
