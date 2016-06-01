.class public Lcom/oppo/tribune/cache/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/cache/BitmapManager$1;,
        Lcom/oppo/tribune/cache/BitmapManager$GCBitmapTarget;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllocSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oppo/tribune/cache/BitmapEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxSize:J

.field private final mMinSize:J

.field private final mSumSize:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/oppo/tribune/cache/BitmapManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/cache/BitmapManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5
    .param p1, "minSize"    # J
    .param p3, "maxSize"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager;->mAllocSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager;->mMap:Ljava/util/HashMap;

    .line 50
    iput-wide p1, p0, Lcom/oppo/tribune/cache/BitmapManager;->mMinSize:J

    .line 51
    iput-wide p3, p0, Lcom/oppo/tribune/cache/BitmapManager;->mMaxSize:J

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/tribune/cache/BitmapManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/cache/BitmapManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/oppo/tribune/cache/BitmapManager;->realGC(Ljava/util/List;)V

    return-void
.end method

.method private getRightSample(I)I
    .locals 10
    .param p1, "sample"    # I

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 276
    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double v2, v4, v6

    .line 277
    .local v2, "log":D
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 278
    .local v0, "ceil":I
    int-to-double v4, v0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v1, v4

    return v1
.end method

.method public static getTime()J
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private realGC(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/cache/BitmapEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/cache/BitmapEntity;

    .line 175
    .local v0, "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    const/4 v2, 0x0

    .line 176
    .local v2, "result":Z
    invoke-virtual {v0}, Lcom/oppo/tribune/cache/BitmapEntity;->recycle()Z

    move-result v2

    .line 177
    if-eqz v2, :cond_0

    .line 181
    iget-object v4, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v4

    .line 182
    :try_start_0
    iget-object v3, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lcom/oppo/tribune/cache/BitmapEntity;->getBitmapSize()J

    move-result-wide v6

    neg-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 183
    iget-object v3, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 184
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v3, p0, Lcom/oppo/tribune/cache/BitmapManager;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 188
    .end local v0    # "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    .end local v2    # "result":Z
    :cond_1
    return-void
.end method

.method private declared-synchronized requestBitmapEntity(Ljava/lang/String;I)Lcom/oppo/tribune/cache/BitmapEntity;
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "singleMaxSize"    # I

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oppo/tribune/cache/BitmapManager;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/cache/BitmapEntity;

    .line 109
    .local v2, "bitmapEntity":Lcom/oppo/tribune/cache/BitmapEntity;
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v2}, Lcom/oppo/tribune/cache/BitmapEntity;->updateReadTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v2    # "bitmapEntity":Lcom/oppo/tribune/cache/BitmapEntity;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 114
    .restart local v2    # "bitmapEntity":Lcom/oppo/tribune/cache/BitmapEntity;
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/oppo/tribune/cache/BitmapEntity;->calculateBitmapSize(Ljava/lang/String;)J

    move-result-wide v10

    .line 115
    .local v10, "size":J
    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-gez v9, :cond_1

    .line 119
    const/4 v2, 0x0

    goto :goto_0

    .line 123
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    add-long/2addr v12, v10

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oppo/tribune/cache/BitmapManager;->mMaxSize:J

    cmp-long v9, v12, v14

    if-lez v9, :cond_2

    .line 124
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/oppo/tribune/cache/BitmapManager;->requestGCBitmap(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :cond_2
    const/16 v8, 0x800

    .line 131
    .local v8, "singleMaxLength":I
    const/4 v7, 0x1

    .line 133
    .local v7, "sample":I
    move/from16 v0, p2

    int-to-long v12, v0

    cmp-long v9, v10, v12

    if-lez v9, :cond_3

    .line 134
    long-to-float v9, v10

    move/from16 v0, p2

    int-to-float v12, v0

    div-float/2addr v9, v12

    float-to-double v12, v9

    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 138
    :cond_3
    const/4 v5, 0x1

    .line 139
    .local v5, "lengthSample":I
    invoke-static/range {p1 .. p1}, Lcom/oppo/tribune/cache/BitmapEntity;->calculateBitmapLength(Ljava/lang/String;)[I

    move-result-object v6

    .line 140
    .local v6, "lengths":[I
    if-eqz v6, :cond_4

    array-length v9, v6

    const/4 v12, 0x2

    if-lt v9, v12, :cond_4

    .line 141
    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v12, 0x1

    aget v12, v6, v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 142
    .local v4, "length":I
    if-le v4, v8, :cond_4

    .line 143
    int-to-float v9, v4

    int-to-float v12, v8

    div-float/2addr v9, v12

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v5, v12

    .line 148
    .end local v4    # "length":I
    :cond_4
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 149
    const/4 v9, 0x2

    if-le v7, v9, :cond_5

    .line 151
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/oppo/tribune/cache/BitmapManager;->getRightSample(I)I

    move-result v7

    .line 154
    :cond_5
    new-instance v3, Lcom/oppo/tribune/cache/BitmapEntity;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v7}, Lcom/oppo/tribune/cache/BitmapEntity;-><init>(Ljava/lang/String;I)V

    .line 156
    .local v3, "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oppo/tribune/cache/BitmapManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/oppo/tribune/cache/BitmapEntity;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Lcom/oppo/tribune/cache/BitmapEntity;->getBitmapSize()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 159
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oppo/tribune/cache/BitmapManager;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    .end local v3    # "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    .end local v5    # "lengthSample":I
    .end local v6    # "lengths":[I
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oppo/tribune/cache/BitmapManager;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oppo/tribune/cache/BitmapEntity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v9

    goto/16 :goto_0

    .line 108
    .end local v2    # "bitmapEntity":Lcom/oppo/tribune/cache/BitmapEntity;
    .end local v7    # "sample":I
    .end local v8    # "singleMaxLength":I
    .end local v10    # "size":J
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 161
    .restart local v2    # "bitmapEntity":Lcom/oppo/tribune/cache/BitmapEntity;
    .restart local v7    # "sample":I
    .restart local v8    # "singleMaxLength":I
    .restart local v10    # "size":J
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private declared-synchronized requestGCBitmap(J)V
    .locals 13
    .param p1, "allocSize"    # J

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    sget-object v10, Lcom/oppo/tribune/cache/BitmapManager;->TAG:Ljava/lang/String;

    const-string v11, "requestGCBitmap"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v6, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/oppo/tribune/cache/BitmapManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 199
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    sget-object v10, Lcom/oppo/tribune/cache/BitmapEntity;->mComparator:Ljava/util/Comparator;

    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 201
    .local v7, "unimGCList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 203
    .local v2, "immeGCList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    iget-object v10, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 204
    .local v8, "sum":J
    const-wide/16 v4, 0x0

    .line 205
    .local v4, "immeGCSize":J
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/cache/BitmapEntity;

    .line 206
    .local v0, "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    iget-wide v10, p0, Lcom/oppo/tribune/cache/BitmapManager;->mMinSize:J

    cmp-long v10, v8, v10

    if-gtz v10, :cond_2

    .line 221
    .end local v0    # "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/cache/BitmapEntity;

    .line 222
    .restart local v0    # "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    iget-object v10, p0, Lcom/oppo/tribune/cache/BitmapManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oppo/tribune/cache/BitmapEntity;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 195
    .end local v0    # "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "immeGCList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    .end local v4    # "immeGCSize":J
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    .end local v7    # "unimGCList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    .end local v8    # "sum":J
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 209
    .restart local v0    # "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "immeGCList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    .restart local v4    # "immeGCSize":J
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    .restart local v7    # "unimGCList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    .restart local v8    # "sum":J
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/oppo/tribune/cache/BitmapEntity;->isBitmapOnDrawing()Z

    move-result v10

    if-nez v10, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/oppo/tribune/cache/BitmapEntity;->getBitmapSize()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 213
    cmp-long v10, v4, p1

    if-gez v10, :cond_3

    .line 214
    invoke-virtual {v0}, Lcom/oppo/tribune/cache/BitmapEntity;->getBitmapSize()J

    move-result-wide v10

    add-long/2addr v4, v10

    .line 215
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_3
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    .end local v0    # "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/cache/BitmapEntity;

    .line 225
    .restart local v0    # "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    iget-object v10, p0, Lcom/oppo/tribune/cache/BitmapManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oppo/tribune/cache/BitmapEntity;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 231
    .end local v0    # "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v10}, Lcom/oppo/tribune/cache/BitmapManager;->realGC(Ljava/util/List;)V

    .line 233
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 234
    .local v3, "immuList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    new-instance v10, Lcom/oppo/tribune/cache/BitmapManager$GCBitmapTarget;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v3, v11}, Lcom/oppo/tribune/cache/BitmapManager$GCBitmapTarget;-><init>(Lcom/oppo/tribune/cache/BitmapManager;Ljava/util/List;Lcom/oppo/tribune/cache/BitmapManager$1;)V

    invoke-static {v10}, Lcom/oppo/tribune/util/ThreadUtils;->startThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized getBitmapEntity(Ljava/lang/String;)Lcom/oppo/tribune/cache/BitmapEntity;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/cache/BitmapEntity;

    .line 92
    .local v0, "bitmapEntity":Lcom/oppo/tribune/cache/BitmapEntity;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/oppo/tribune/cache/BitmapEntity;->updateReadTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-object v0

    .line 91
    .end local v0    # "bitmapEntity":Lcom/oppo/tribune/cache/BitmapEntity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSize()I
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestAlloc(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager;->mAllocSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 255
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 256
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 257
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :try_start_2
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/tribune/cache/BitmapManager;->mMaxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/tribune/cache/BitmapManager;->mMaxSize:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/oppo/tribune/cache/BitmapManager;->requestGCBitmap(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 262
    :cond_0
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 253
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestBigBitmapEntity(Ljava/lang/String;)Lcom/oppo/tribune/cache/BitmapEntity;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    monitor-enter p0

    const v0, 0x927c00

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/cache/BitmapManager;->requestBitmapEntity(Ljava/lang/String;I)Lcom/oppo/tribune/cache/BitmapEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestBitmapEntity(Ljava/lang/String;)Lcom/oppo/tribune/cache/BitmapEntity;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    monitor-enter p0

    const v0, 0x249f00

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/cache/BitmapManager;->requestBitmapEntity(Ljava/lang/String;I)Lcom/oppo/tribune/cache/BitmapEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestClear()V
    .locals 6

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 65
    invoke-direct {p0, v0}, Lcom/oppo/tribune/cache/BitmapManager;->realGC(Ljava/util/List;)V

    .line 67
    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Has unrecycled bitmap"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized requestClear(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 79
    .local v1, "gcList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/oppo/tribune/cache/BitmapManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/cache/BitmapEntity;

    .line 81
    .local v0, "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    .end local v0    # "entity":Lcom/oppo/tribune/cache/BitmapEntity;
    .end local v1    # "gcList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 86
    .restart local v1    # "gcList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    new-instance v4, Lcom/oppo/tribune/cache/BitmapManager$GCBitmapTarget;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lcom/oppo/tribune/cache/BitmapManager$GCBitmapTarget;-><init>(Lcom/oppo/tribune/cache/BitmapManager;Ljava/util/List;Lcom/oppo/tribune/cache/BitmapManager$1;)V

    invoke-static {v4}, Lcom/oppo/tribune/util/ThreadUtils;->startThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized requestDlloc(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    :try_start_1
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager;->mAllocSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 267
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 268
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager;->mSumSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 269
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
