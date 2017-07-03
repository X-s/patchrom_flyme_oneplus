.class public Lcom/oneplus/gallery/cache/ImageCacheKey;
.super Ljava/lang/Object;
.source "ImageCacheKey.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x590debc3be80385fL


# instance fields
.field public final contentUri:Landroid/net/Uri;

.field public final filePath:Ljava/lang/String;

.field public final fileSize:J

.field public final lastModifiedTime:J


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/Media;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    .line 44
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->fileSize:J

    .line 45
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getLastModifiedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    .line 46
    iget-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->fileSize:J

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    instance-of v3, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;

    if-eqz v3, :cond_b

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/oneplus/gallery/cache/ImageCacheKey;

    .line 70
    .local v0, "anotherKey":Lcom/oneplus/gallery/cache/ImageCacheKey;
    if-ne v0, p0, :cond_1

    .line 82
    .end local v0    # "anotherKey":Lcom/oneplus/gallery/cache/ImageCacheKey;
    :cond_0
    :goto_0
    return v1

    .line 72
    .restart local v0    # "anotherKey":Lcom/oneplus/gallery/cache/ImageCacheKey;
    :cond_1
    iget-wide v4, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-wide v4, v0, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3

    :cond_2
    move v1, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-wide v4, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    iget-wide v6, v0, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->fileSize:J

    iget-wide v6, v0, Lcom/oneplus/gallery/cache/ImageCacheKey;->fileSize:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    iget-object v3, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    iget-object v4, v0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    if-eqz v3, :cond_8

    :cond_7
    move v1, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_8
    iget-object v3, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    :cond_a
    move v1, v2

    .line 79
    goto :goto_0

    .end local v0    # "anotherKey":Lcom/oneplus/gallery/cache/ImageCacheKey;
    :cond_b
    move v1, v2

    .line 82
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 90
    iget-wide v2, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v0, v2

    .line 91
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LMT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
