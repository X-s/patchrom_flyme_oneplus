.class Lcom/oneplus/gallery2/media/GalleryDatabase$5;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GalleryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .prologue
    .line 1603
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1608
    invoke-static {p1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$6(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1609
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 1614
    invoke-static {p1, p2, p3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$7(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1615
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 1620
    invoke-static {p1, p2, p3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$8(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1621
    return-void
.end method
