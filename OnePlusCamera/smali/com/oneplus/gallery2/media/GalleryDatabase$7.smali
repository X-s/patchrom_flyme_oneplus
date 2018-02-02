.class Lcom/oneplus/gallery2/media/GalleryDatabase$7;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$table:Landroid/util/LongSparseArray;


# direct methods
.method constructor <init>(Landroid/util/LongSparseArray;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$7;->val$table:Landroid/util/LongSparseArray;

    .line 1767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuery(Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1772
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1774
    new-instance v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;-><init>(JJ)V

    .line 1775
    iget-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$7;->val$table:Landroid/util/LongSparseArray;

    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1776
    if-eqz v0, :cond_0

    .line 1781
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1778
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1779
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$7;->val$table:Landroid/util/LongSparseArray;

    iget-wide v4, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    invoke-virtual {v2, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 1783
    :cond_1
    return-void
.end method
