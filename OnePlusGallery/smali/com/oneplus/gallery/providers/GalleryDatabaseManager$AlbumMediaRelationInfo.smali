.class public final Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
.super Ljava/lang/Object;
.source "GalleryDatabaseManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/providers/GalleryDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumMediaRelationInfo"
.end annotation


# instance fields
.field public albumId:J

.field public mediaId:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "albumId"    # J
    .param p3, "mediaId"    # J

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->set(JJ)V

    .line 282
    return-void
.end method

.method public static getAlbumList(Ljava/util/LinkedList;J)Ljava/util/List;
    .locals 7
    .param p1, "mediaId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "albumMediaInfos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p0, :cond_1

    .line 319
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 320
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .line 323
    .local v0, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    iget-wide v4, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 324
    iget-wide v4, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->albumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v0    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_1
    return-object v2
.end method

.method public static getMediaList(Ljava/util/LinkedList;J)Ljava/util/List;
    .locals 7
    .param p1, "albumId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "albumMediaInfos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p0, :cond_1

    .line 335
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 336
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .line 339
    .local v0, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    iget-wide v4, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->albumId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 340
    iget-wide v4, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    .end local v0    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_1
    return-object v2
.end method

.method public static removeAlbum(Ljava/util/LinkedList;J)Ljava/util/List;
    .locals 7
    .param p1, "albumId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "albumMediaInfos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    const/4 v2, 0x0

    .line 359
    .local v2, "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    if-eqz p0, :cond_2

    .line 361
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 362
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 364
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .line 365
    .local v0, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    iget-wide v4, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->albumId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 367
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 368
    if-nez v2, :cond_1

    .line 369
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .restart local v2    # "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    .end local v0    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_2
    return-object v2
.end method

.method public static removeAlbumMediaRelation(Ljava/util/LinkedList;JJ)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    .locals 5
    .param p1, "albumId"    # J
    .param p3, "mediaId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
            ">;JJ)",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "albumMediaInfos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    if-eqz p0, :cond_1

    .line 381
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 382
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .line 385
    .local v0, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    iget-wide v2, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->albumId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_0

    .line 387
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 392
    .end local v0    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeMedia(Ljava/util/LinkedList;J)Ljava/util/List;
    .locals 7
    .param p1, "mediaId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "albumMediaInfos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    const/4 v2, 0x0

    .line 398
    .local v2, "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    if-eqz p0, :cond_2

    .line 400
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 401
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 403
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .line 404
    .local v0, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    iget-wide v4, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 406
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 407
    if-nez v2, :cond_1

    .line 408
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .restart local v2    # "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    .end local v0    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_2
    return-object v2
.end method


# virtual methods
.method public clone()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    .locals 3

    .prologue
    .line 305
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-object v1

    .line 307
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Throwable;
    # getter for: Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clone() - Error when clone album media info"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->clone()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 287
    if-nez p1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v1

    .line 289
    :cond_1
    instance-of v2, p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 291
    check-cast v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .line 292
    .local v0, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    iget-wide v2, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->albumId:J

    iget-wide v4, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->albumId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    iget-wide v4, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 294
    const/4 v1, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 349
    iget-wide v6, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->albumId:J

    const-wide/16 v8, 0xff

    and-long v4, v6, v8

    .line 350
    .local v4, "pre8Bits":J
    iget-wide v6, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    const-wide/32 v8, 0xffffff

    and-long v2, v6, v8

    .line 351
    .local v2, "post24Bits":J
    const/16 v1, 0x18

    shl-long v6, v4, v1

    long-to-int v0, v6

    .line 352
    .local v0, "hashCode":I
    long-to-int v1, v2

    or-int/2addr v0, v1

    .line 353
    return v0
.end method

.method public set(JJ)V
    .locals 1
    .param p1, "albumId"    # J
    .param p3, "mediaId"    # J

    .prologue
    .line 418
    iput-wide p1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->albumId:J

    .line 419
    iput-wide p3, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    .line 420
    return-void
.end method
