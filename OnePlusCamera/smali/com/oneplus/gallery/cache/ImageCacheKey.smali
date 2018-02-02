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
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    .line 44
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFileSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->fileSize:J

    .line 45
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getLastModifiedTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    .line 46
    iget-object v1, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    .line 47
    return-void

    .line 46
    :cond_0
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 54
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

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    instance-of v0, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;

    if-nez v0, :cond_0

    .line 82
    return v2

    .line 69
    :cond_0
    check-cast p1, Lcom/oneplus/gallery/cache/ImageCacheKey;

    .line 70
    if-eq p1, p0, :cond_2

    .line 72
    iget-wide v4, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-wide v4, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    .line 73
    :cond_1
    return v2

    .line 71
    :cond_2
    return v1

    :cond_3
    move v0, v2

    .line 72
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 74
    :cond_5
    iget-wide v4, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    iget-wide v6, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    iget-wide v4, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->fileSize:J

    iget-wide v6, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->fileSize:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7

    .line 75
    :cond_6
    return v2

    .line 76
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    if-nez v0, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 78
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    if-nez v0, :cond_d

    :cond_9
    iget-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    if-eqz v0, :cond_f

    .line 80
    :goto_3
    return v1

    .line 76
    :cond_a
    iget-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 77
    :cond_b
    return v2

    .line 76
    :cond_c
    iget-object v0, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_2

    .line 78
    :cond_d
    iget-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 79
    :cond_e
    return v2

    .line 78
    :cond_f
    iget-object v0, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    if-nez v0, :cond_e

    goto :goto_3
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 91
    iget-object v1, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 95
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 94
    :cond_1
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

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[LMT="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
