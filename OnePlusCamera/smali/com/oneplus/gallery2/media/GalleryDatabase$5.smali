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
    .line 1317
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1322
    invoke-static {p1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$6(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1323
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 1328
    invoke-static {p1, p2, p3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$7(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1329
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 1334
    invoke-static {p1, p2, p3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$8(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1335
    return-void
.end method
