.class public abstract Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;
.super Lcom/oppo/tribune/provider/forum/dao/TableDao;
.source "PrimeTableDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oppo/tribune/provider/forum/dao/TableDao",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;, "Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/TableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public primeQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 34
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;, "Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao<TT;>;"
    iget-object v2, p0, Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 35
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->primeQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 36
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->isNullOrEmpty(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->close(Landroid/database/Cursor;)V

    .line 38
    const/4 v0, 0x0

    monitor-exit v2

    .line 42
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 41
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 42
    monitor-exit v2

    goto :goto_0

    .line 43
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 48
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;, "Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao<TT;>;"
    iget-object v1, p0, Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;->contentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, p3, p1, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
