.class Lcom/netease/filterenginelibrary/a/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final a:I = 0x1

.field public static final b:Ljava/lang/String; = "AppKey.db"

.field private static final c:Ljava/lang/String; = " TEXT"

.field private static final d:Ljava/lang/String; = ","

.field private static final e:Ljava/lang/String; = "CREATE TABLE app_key_list (_id INTEGER PRIMARY KEY,entry_id TEXT,used_object TEXT,key TEXT,limited_time TEXT )"

.field private static final f:Ljava/lang/String; = "DROP TABLE IF EXISTS app_key_list"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "AppKey.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE app_key_list (_id INTEGER PRIMARY KEY,entry_id TEXT,used_object TEXT,key TEXT,limited_time TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS app_key_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/netease/filterenginelibrary/a/d;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
