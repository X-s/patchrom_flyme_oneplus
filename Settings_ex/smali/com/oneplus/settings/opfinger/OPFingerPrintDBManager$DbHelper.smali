.class Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OPFingerPrintDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DbHelper"
.end annotation


# static fields
.field private static final VERSION:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;

    .line 347
    const-string v0, "opfinger_data.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 348
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 352
    const-string v0, "CREATE TABLE opfinger (_id INTEGER PRIMARY KEY AUTOINCREMENT,order_id INTEGER,finger_id INTEGER,finger_name STRING);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 358
    return-void
.end method
