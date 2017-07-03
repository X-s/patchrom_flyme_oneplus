.class final Lcom/oneplus/gallery2/media/GalleryDatabase$9;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z
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
    .line 1588
    iput-object p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$9;->val$table:Landroid/util/LongSparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuery(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1592
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1594
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;-><init>(Landroid/database/Cursor;)V

    .line 1595
    .local v0, "extraInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$9;->val$table:Landroid/util/LongSparseArray;

    iget-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 1597
    .end local v0    # "extraInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :cond_0
    return-void
.end method
