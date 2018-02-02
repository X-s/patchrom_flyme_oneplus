.class Lcom/oneplus/gallery2/media/GalleryDatabase$6;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumInfoTable()Z
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
    iput-object p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$6;->val$table:Landroid/util/LongSparseArray;

    .line 1720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuery(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 1725
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;-><init>(Landroid/database/Cursor;)V

    .line 1728
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$6;->val$table:Landroid/util/LongSparseArray;

    iget-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 1730
    :cond_0
    return-void
.end method
