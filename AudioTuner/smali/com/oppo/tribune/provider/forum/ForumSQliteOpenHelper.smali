.class public Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;
.super Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;
.source "ForumSQliteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "forum2.db"

.field private static final DATABASE_VERSION:I = 0xf

.field private static mSingleton:Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;


# instance fields
.field private final mPersistent:Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v0, "forum2.db"

    const/16 v1, 0xf

    const-string v2, "/assets/forum2.txt"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 50
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;

    invoke-direct {v0}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;->mPersistent:Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;

    .line 51
    return-void
.end method

.method public static declared-synchronized getSingleton(Landroid/content/Context;)Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-class v1, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;->mSingleton:Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;->mSingleton:Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;

    .line 43
    :cond_0
    sget-object v0, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;->mSingleton:Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected onRestoreRecords(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->onRestoreRecords(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 64
    const-string v0, "/assets/forum2_insert.txt"

    invoke-static {p1, v0}, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->executeSqlFromResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;->mPersistent:Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;

    invoke-virtual {v0, p1, p3}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->onRestoreRecord(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 67
    return-void
.end method

.method protected onSaveRecords(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->onSaveRecords(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 57
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;->mPersistent:Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->onSaveRecord(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 58
    return-void
.end method
