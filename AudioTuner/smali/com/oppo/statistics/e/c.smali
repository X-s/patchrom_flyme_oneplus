.class public Lcom/oppo/statistics/e/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static a:Lcom/oppo/statistics/e/c;

.field private static b:Landroid/database/sqlite/SQLiteDatabase;

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/oppo/statistics/e/c;->c:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "NearMeSTAT.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    sget-object v1, Lcom/oppo/statistics/e/c;->c:[B

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oppo/statistics/e/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/statistics/e/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/oppo/statistics/e/c;->a:Lcom/oppo/statistics/e/c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/oppo/statistics/e/c;

    invoke-direct {v2, v0}, Lcom/oppo/statistics/e/c;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/oppo/statistics/e/c;->a:Lcom/oppo/statistics/e/c;

    :cond_1
    sget-object v0, Lcom/oppo/statistics/e/c;->a:Lcom/oppo/statistics/e/c;

    invoke-virtual {v0}, Lcom/oppo/statistics/e/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/oppo/statistics/e/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_2
    sget-object v0, Lcom/oppo/statistics/e/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE table_special_app_start (_id INTEGER PRIMARY KEY AUTOINCREMENT,special_app_start_appId INTEGER,special_app_start_ssoid Text,special_app_start_time Text,special_app_start_record_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE table_action (_id INTEGER PRIMARY KEY AUTOINCREMENT ,action_id INTEGER ,action_amount INTEGER ,action_date Text ,action_record_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE table_app_start (_id INTEGER PRIMARY KEY AUTOINCREMENT ,app_start_ssoid Text,app_start_time Text , app_start_record_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE table_app_log (_id INTEGER PRIMARY KEY AUTOINCREMENT,app_log_type Text,app_log_event_time INTEGER,app_log_body Text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE table_page_visit (_id INTEGER PRIMARY KEY AUTOINCREMENT,page_visit_type Text,page_visit_event_time INTEGER,page_visit_body Text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE table_exception (_id INTEGER PRIMARY KEY AUTOINCREMENT,exception_count INTEGER,exception_event_time INTEGER,exception_app_version Text,exception_md5 Text,exception_body Text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE table_special_app_start (_id INTEGER PRIMARY KEY AUTOINCREMENT,special_app_start_appId INTEGER,special_app_start_ssoid Text,special_app_start_time Text,special_app_start_record_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS app_start"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS download"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS special_click"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS share"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS actions"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS act_location"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS table_action"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS table_app_start"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS table_app_log"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS table_page_visit"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS table_exception"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS table_special_app_start"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oppo/statistics/e/c;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS table_exception"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE table_exception (_id INTEGER PRIMARY KEY AUTOINCREMENT,exception_count INTEGER,exception_event_time INTEGER,exception_app_version Text,exception_md5 Text,exception_body Text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/statistics/e/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/statistics/e/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/oppo/statistics/e/c;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/oppo/statistics/e/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/oppo/statistics/e/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/oppo/statistics/e/c;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/statistics/e/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
