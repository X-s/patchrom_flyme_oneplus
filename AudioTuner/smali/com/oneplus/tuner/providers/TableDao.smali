.class public abstract Lcom/oneplus/tuner/providers/TableDao;
.super Ljava/lang/Object;
.source "TableDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TableDao"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

.field protected final mLock:Ljava/lang/Object;

.field protected final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/oneplus/tuner/manager/DatabaseHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "handler"    # Lcom/oneplus/tuner/manager/DatabaseHandler;

    .prologue
    .line 32
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/tuner/providers/TableDao;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/oneplus/tuner/providers/TableDao;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/providers/TableDao;->mResolver:Landroid/content/ContentResolver;

    .line 35
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/providers/TableDao;->mLock:Ljava/lang/Object;

    .line 36
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/manager/DatabaseHandler;

    iput-object v0, p0, Lcom/oneplus/tuner/providers/TableDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    .line 37
    return-void
.end method

.method private cursorToList(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 71
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Lcom/oneplus/tuner/providers/Cursors;->isNullOrEmpty(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/providers/TableDao;->newRecord(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    return-object v0
.end method

.method private queryImpl(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    iget-object v2, p0, Lcom/oneplus/tuner/providers/TableDao;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/tuner/providers/TableDao;->primeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 61
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/oneplus/tuner/providers/TableDao;->cursorToList(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 63
    :try_start_2
    invoke-static {v0}, Lcom/oneplus/tuner/providers/Cursors;->close(Landroid/database/Cursor;)V

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/oneplus/tuner/providers/Cursors;->close(Landroid/database/Cursor;)V

    throw v1

    .line 65
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public abstract contentUri()Landroid/net/Uri;
.end method

.method public delete(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v3, -0x1

    .line 263
    sget-boolean v1, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-nez v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v1, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 265
    new-instance v1, Lcom/oneplus/tuner/providers/TableDao$5;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/providers/TableDao$5;-><init>(Lcom/oneplus/tuner/providers/TableDao;)V

    invoke-static {v1}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnable(Ljava/lang/Runnable;)V

    .line 289
    :goto_0
    return v3

    .line 276
    :cond_0
    new-instance v0, Lcom/oneplus/tuner/providers/BatchOperation;

    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/TableDao;->contentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/tuner/providers/BatchOperation;-><init>(Landroid/net/Uri;)V

    .line 277
    .local v0, "batch":Lcom/oneplus/tuner/providers/BatchOperation;
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/providers/TableDao;->queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/tuner/providers/BatchOperation;->newDelete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/oneplus/tuner/providers/TableDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v2, Lcom/oneplus/tuner/providers/TableDao$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/oneplus/tuner/providers/TableDao$6;-><init>(Lcom/oneplus/tuner/providers/TableDao;Lcom/oneplus/tuner/providers/BatchOperation;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    .local p1, "list":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 147
    const/4 v1, 0x0

    .line 172
    :goto_0
    return v1

    .line 150
    :cond_0
    new-instance v0, Lcom/oneplus/tuner/providers/BatchOperation;

    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/TableDao;->contentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/tuner/providers/BatchOperation;-><init>(Landroid/net/Uri;)V

    .line 152
    .local v0, "batch":Lcom/oneplus/tuner/providers/BatchOperation;
    if-eqz p2, :cond_1

    const-string v1, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 153
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/tuner/providers/BatchOperation;->newDelete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/providers/TableDao;->newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/providers/BatchOperation;->newInsert(Landroid/content/ContentValues;)V

    .line 158
    iget-object v1, p0, Lcom/oneplus/tuner/providers/TableDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v2, Lcom/oneplus/tuner/providers/TableDao$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/oneplus/tuner/providers/TableDao$2;-><init>(Lcom/oneplus/tuner/providers/TableDao;Lcom/oneplus/tuner/providers/BatchOperation;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    .line 172
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public insert(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_0

    .line 109
    const/4 v3, 0x0

    .line 142
    :goto_0
    return v3

    .line 112
    :cond_0
    new-instance v0, Lcom/oneplus/tuner/providers/BatchOperation;

    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/TableDao;->contentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/oneplus/tuner/providers/BatchOperation;-><init>(Landroid/net/Uri;)V

    .line 114
    .local v0, "batch":Lcom/oneplus/tuner/providers/BatchOperation;
    if-eqz p2, :cond_1

    const-string v3, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 115
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/tuner/providers/BatchOperation;->newDelete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 119
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_2

    .line 120
    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/providers/TableDao;->newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/tuner/providers/BatchOperation;->newInsert(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 124
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    iget-object v3, p0, Lcom/oneplus/tuner/providers/TableDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v4, Lcom/oneplus/tuner/providers/TableDao$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/oneplus/tuner/providers/TableDao$1;-><init>(Lcom/oneplus/tuner/providers/TableDao;Ljava/util/List;Lcom/oneplus/tuner/providers/BatchOperation;)V

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    .line 142
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected abstract newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method protected abstract newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method

.method protected primeQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 89
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/TableDao;->sortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/tuner/providers/TableDao;->primeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected primeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 82
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    iget-object v6, p0, Lcom/oneplus/tuner/providers/TableDao;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/tuner/providers/TableDao;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/TableDao;->contentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/TableDao;->projection()[Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    monitor-exit v6

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract projection()[Ljava/lang/String;
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "projections"    # [Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 45
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    iget-object v6, p0, Lcom/oneplus/tuner/providers/TableDao;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/tuner/providers/TableDao;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/TableDao;->contentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/TableDao;->sortOrder()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    monitor-exit v6

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/TableDao;->sortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/tuner/providers/TableDao;->queryImpl(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/tuner/providers/TableDao;->queryImpl(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryRecord(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 293
    iget-object v3, p0, Lcom/oneplus/tuner/providers/TableDao;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 294
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/providers/TableDao;->queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/tuner/providers/TableDao;->primeQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 297
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-static {v0}, Lcom/oneplus/tuner/providers/Cursors;->isNullOrEmpty(Landroid/database/Cursor;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 299
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/providers/TableDao;->newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 303
    :try_start_2
    invoke-static {v0}, Lcom/oneplus/tuner/providers/Cursors;->close(Landroid/database/Cursor;)V

    monitor-exit v3

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/oneplus/tuner/providers/Cursors;->close(Landroid/database/Cursor;)V

    monitor-exit v3

    goto :goto_0

    .line 305
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 303
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "whereClause":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-static {v0}, Lcom/oneplus/tuner/providers/Cursors;->close(Landroid/database/Cursor;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected abstract queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public final size(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 93
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    iget-object v2, p0, Lcom/oneplus/tuner/providers/TableDao;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/tuner/providers/TableDao;->primeQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 96
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-static {v0}, Lcom/oneplus/tuner/providers/Cursors;->size(Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 98
    :try_start_2
    invoke-static {v0}, Lcom/oneplus/tuner/providers/Cursors;->close(Landroid/database/Cursor;)V

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/oneplus/tuner/providers/Cursors;->close(Landroid/database/Cursor;)V

    throw v1

    .line 100
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected abstract sortOrder()Ljava/lang/String;
.end method

.method public update(Ljava/lang/Object;JLjava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p2, "id"    # J
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    .local p1, "list":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 224
    const/4 v1, 0x0

    .line 249
    :goto_0
    return v1

    .line 227
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-nez v1, :cond_1

    .line 228
    const-string v1, "TableDao"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    :cond_1
    new-instance v0, Lcom/oneplus/tuner/providers/BatchOperation;

    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/TableDao;->contentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/tuner/providers/BatchOperation;-><init>(Landroid/net/Uri;)V

    .line 233
    .local v0, "batch":Lcom/oneplus/tuner/providers/BatchOperation;
    if-eqz p4, :cond_2

    const-string v1, ""

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 234
    invoke-virtual {v0, p4, p5}, Lcom/oneplus/tuner/providers/BatchOperation;->newDelete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 237
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/providers/TableDao;->newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/oneplus/tuner/providers/BatchOperation;->newUpdate(JLandroid/content/ContentValues;)V

    .line 239
    iget-object v1, p0, Lcom/oneplus/tuner/providers/TableDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v2, Lcom/oneplus/tuner/providers/TableDao$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/oneplus/tuner/providers/TableDao$4;-><init>(Lcom/oneplus/tuner/providers/TableDao;Lcom/oneplus/tuner/providers/BatchOperation;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    .line 249
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public update(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao;, "Lcom/oneplus/tuner/providers/TableDao<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Lcom/oneplus/tuner/utillty/Utilities;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    const/4 v4, 0x0

    .line 217
    :goto_0
    return v4

    .line 188
    :cond_0
    new-instance v0, Lcom/oneplus/tuner/providers/BatchOperation;

    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/TableDao;->contentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/oneplus/tuner/providers/BatchOperation;-><init>(Landroid/net/Uri;)V

    .line 190
    .local v0, "batch":Lcom/oneplus/tuner/providers/BatchOperation;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 191
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/providers/TableDao;->queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/tuner/providers/BatchOperation;->newDelete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/providers/TableDao;->queryRecord(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 194
    .local v3, "old":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_1

    .line 195
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/tuner/providers/TableDao;->onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 199
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    .end local v3    # "old":Ljava/lang/Object;, "TT;"
    :cond_2
    if-eqz p2, :cond_3

    const-string v4, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_3

    .line 200
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/tuner/providers/BatchOperation;->newDelete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 203
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 204
    .restart local v2    # "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/providers/TableDao;->newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oneplus/tuner/providers/BatchOperation;->newInsert(Landroid/content/ContentValues;)V

    goto :goto_2

    .line 207
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_4
    iget-object v4, p0, Lcom/oneplus/tuner/providers/TableDao;->mHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v5, Lcom/oneplus/tuner/providers/TableDao$3;

    invoke-direct {v5, p0, v0, p1}, Lcom/oneplus/tuner/providers/TableDao$3;-><init>(Lcom/oneplus/tuner/providers/TableDao;Lcom/oneplus/tuner/providers/BatchOperation;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    .line 217
    const/4 v4, 0x1

    goto :goto_0
.end method
