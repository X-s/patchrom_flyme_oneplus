.class final Lcom/oneplus/gallery2/media/GalleryDatabase$8;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraDirectoryInfoTable()Z
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
    .line 1540
    iput-object p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$8;->val$table:Landroid/util/LongSparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuery(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1544
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1546
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1547
    .local v0, "dirId":J
    new-instance v2, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;-><init>(JJ)V

    .line 1548
    .local v2, "dirInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    iget-object v3, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$8;->val$table:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 1550
    .end local v0    # "dirId":J
    .end local v2    # "dirInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    :cond_0
    return-void
.end method
