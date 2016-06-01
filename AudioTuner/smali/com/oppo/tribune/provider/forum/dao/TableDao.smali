.class public abstract Lcom/oppo/tribune/provider/forum/dao/TableDao;
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
.field public static final UNREADABLE_CONDITION:Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mLock:Ljava/lang/Object;

.field protected final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "_id"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    .line 196
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v1, "_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 197
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oppo/tribune/provider/forum/dao/TableDao;->UNREADABLE_CONDITION:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/TableDao;, "Lcom/oppo/tribune/provider/forum/dao/TableDao<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mResolver:Landroid/content/ContentResolver;

    .line 43
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mLock:Ljava/lang/Object;

    .line 44
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
    .line 68
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/TableDao;, "Lcom/oppo/tribune/provider/forum/dao/TableDao<TT;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Lcom/oppo/tribune/util/Cursors;->isNullOrEmpty(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->newRecord(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
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
    .line 57
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/TableDao;, "Lcom/oppo/tribune/provider/forum/dao/TableDao<TT;>;"
    iget-object v2, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 58
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->primeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 60
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->cursorToList(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 62
    :try_start_2
    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->close(Landroid/database/Cursor;)V

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->close(Landroid/database/Cursor;)V

    throw v1

    .line 64
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

.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 159
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/TableDao;, "Lcom/oppo/tribune/provider/forum/dao/TableDao<TT;>;"
    iget-object v1, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->contentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 106
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/TableDao;, "Lcom/oppo/tribune/provider/forum/dao/TableDao<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_0

    .line 107
    const/4 v3, 0x0

    .line 120
    :goto_0
    return v3

    .line 110
    :cond_0
    iget-object v4, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 111
    :try_start_0
    new-instance v0, Lcom/oppo/tribune/util/BatchOperation;

    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->contentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/oppo/tribune/util/BatchOperation;-><init>(Landroid/net/Uri;)V

    .line 113
    .local v0, "batch":Lcom/oppo/tribune/util/BatchOperation;
    invoke-virtual {v0, p2, p3}, Lcom/oppo/tribune/util/BatchOperation;->newDelete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 115
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {p0, v2}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oppo/tribune/util/BatchOperation;->newInsert(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 121
    .end local v0    # "batch":Lcom/oppo/tribune/util/BatchOperation;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 120
    .restart local v0    # "batch":Lcom/oppo/tribune/util/BatchOperation;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/oppo/tribune/util/BatchOperation;->apply(Landroid/content/Context;)Z

    move-result v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    .line 88
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/TableDao;, "Lcom/oppo/tribune/provider/forum/dao/TableDao<TT;>;"
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->sortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->primeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected primeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 81
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/TableDao;, "Lcom/oppo/tribune/provider/forum/dao/TableDao<TT;>;"
    iget-object v6, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->contentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->projection()[Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    monitor-exit v6

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract projection()[Ljava/lang/String;
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
    .line 47
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/TableDao;, "Lcom/oppo/tribune/provider/forum/dao/TableDao<TT;>;"
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->sortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->queryImpl(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
    .line 52
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/TableDao;, "Lcom/oppo/tribune/provider/forum/dao/TableDao<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->queryImpl(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

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
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/TableDao;, "Lcom/oppo/tribune/provider/forum/dao/TableDao<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 165
    iget-object v3, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 166
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->primeQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 169
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->isNullOrEmpty(Landroid/database/Cursor;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 170
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 171
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 175
    :try_start_2
    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->close(Landroid/database/Cursor;)V

    monitor-exit v3

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->close(Landroid/database/Cursor;)V

    monitor-exit v3

    goto :goto_0

    .line 177
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 175
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "whereClause":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->close(Landroid/database/Cursor;)V

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
    .line 92
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/TableDao;, "Lcom/oppo/tribune/provider/forum/dao/TableDao<TT;>;"
    iget-object v2, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->primeQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 95
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->size(Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 97
    :try_start_2
    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->close(Landroid/database/Cursor;)V

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->close(Landroid/database/Cursor;)V

    throw v1

    .line 99
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

.method public update(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
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
    .line 132
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/TableDao;, "Lcom/oppo/tribune/provider/forum/dao/TableDao<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    const/4 v4, 0x0

    .line 154
    :goto_0
    return v4

    .line 136
    :cond_0
    iget-object v5, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 137
    :try_start_0
    new-instance v0, Lcom/oppo/tribune/util/BatchOperation;

    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->contentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/oppo/tribune/util/BatchOperation;-><init>(Landroid/net/Uri;)V

    .line 139
    .local v0, "batch":Lcom/oppo/tribune/util/BatchOperation;
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

    .line 140
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/oppo/tribune/util/BatchOperation;->newDelete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v2}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->queryRecord(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 143
    .local v3, "old":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_1

    .line 144
    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 155
    .end local v0    # "batch":Lcom/oppo/tribune/util/BatchOperation;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    .end local v3    # "old":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 148
    .restart local v0    # "batch":Lcom/oppo/tribune/util/BatchOperation;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/oppo/tribune/util/BatchOperation;->newDelete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 151
    .restart local v2    # "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lcom/oppo/tribune/provider/forum/dao/TableDao;->newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oppo/tribune/util/BatchOperation;->newInsert(Landroid/content/ContentValues;)V

    goto :goto_2

    .line 154
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    iget-object v4, p0, Lcom/oppo/tribune/provider/forum/dao/TableDao;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/oppo/tribune/util/BatchOperation;->apply(Landroid/content/Context;)Z

    move-result v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
