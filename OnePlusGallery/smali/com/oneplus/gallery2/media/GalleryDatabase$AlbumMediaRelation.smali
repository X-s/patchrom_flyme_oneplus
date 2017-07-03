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
    .param p1, "albumId"    # J
    .param p3, "mediaId"    # J

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-wide p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    .line 265
    iput-wide p3, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    .line 266
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    .locals 2

    .prologue
    .line 274
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 276
    :catch_0
    move-exception v0

    .line 278
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
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
    .line 255
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 286
    instance-of v2, p1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 288
    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    .line 289
    .local v0, "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    iget-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    iget-wide v4, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    iget-wide v4, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 291
    .end local v0    # "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 298
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
