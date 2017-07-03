.class final Lcom/oneplus/gallery2/media/GalleryDatabase$7;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$table:Landroid/util/LongSparseArray;


# direct methods
.method constructor <init>(Landroid/util/LongSparseArray;)V
    .locals 0

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$7;->val$table:Landroid/util/LongSparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuery(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1491
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1493
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;-><init>(JJ)V

    .line 1494
    .local v0, "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$7;->val$table:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1495
    .local v1, "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    if-nez v1, :cond_0

    .line 1497
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1498
    .restart local v1    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$7;->val$table:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    invoke-virtual {v2, v4, v5, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1500
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1502
    .end local v0    # "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    .end local v1    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :cond_1
    return-void
.end method
