.class final Lcom/oneplus/gallery2/media/GalleryDatabase$5;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GalleryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "x3"    # I

    .prologue
    .line 1318
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1322
    # invokes: Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$600(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1323
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1328
    # invokes: Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    invoke-static {p1, p2, p3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$700(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1329
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1334
    # invokes: Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    invoke-static {p1, p2, p3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$800(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1335
    return-void
.end method
