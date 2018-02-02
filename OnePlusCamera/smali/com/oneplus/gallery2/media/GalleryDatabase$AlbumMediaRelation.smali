.class public final Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumMediaRelation"
.end annotation


# instance fields
.field public volatile albumId:J

.field public volatile mediaId:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-wide p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    .line 311
    iput-wide p3, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    .line 312
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    .locals 2

    .prologue
    .line 320
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 324
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 332
    instance-of v0, p1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    if-nez v0, :cond_0

    .line 337
    return v4

    .line 334
    :cond_0
    check-cast p1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    .line 335
    iget-wide v0, p1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v4
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 344
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    const-wide/32 v2, -0x10000

    and-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    long-to-int v1, v2

    or-int/2addr v0, v1

    return v0
.end method
