.class final Lcom/oneplus/gallery/providers/GalleryDatabaseManager$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GalleryDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/providers/GalleryDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private m_Context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x0

    # invokes: Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getDatabaseVersion(Landroid/content/Context;)I
    invoke-static {p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->access$000(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 204
    iput-object p1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$DatabaseHelper;->m_Context:Landroid/content/Context;

    .line 205
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$DatabaseHelper;->m_Context:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$DatabaseHelper;->m_Context:Landroid/content/Context;

    # invokes: Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getDatabaseVersion(Landroid/content/Context;)I
    invoke-static {v2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->access$000(Landroid/content/Context;)I

    move-result v2

    # invokes: Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    invoke-static {v0, p1, v1, v2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->access$100(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 212
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 218
    # getter for: Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDowngrade() - DB downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$DatabaseHelper;->m_Context:Landroid/content/Context;

    # invokes: Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->access$100(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 226
    return-void
.end method
