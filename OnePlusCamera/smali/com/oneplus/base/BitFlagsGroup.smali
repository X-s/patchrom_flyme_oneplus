.class public final Lcom/oneplus/base/BitFlagsGroup;
.super Ljava/lang/Object;
.source "BitFlagsGroup.java"


# instance fields
.field private volatile m_CurrentFlag:J

.field private final m_Name:Ljava/lang/String;

.field private final m_Relations:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/base/BitFlagsGroup;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_Relations:Landroid/util/LongSparseArray;

    .line 35
    iput-object p1, p0, Lcom/oneplus/base/BitFlagsGroup;->m_Name:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public declared-synchronized convertFlags(ILcom/oneplus/base/BitFlagsGroup;)I
    .locals 10
    .param p1, "flags"    # I
    .param p2, "targetGroup"    # Lcom/oneplus/base/BitFlagsGroup;

    .prologue
    monitor-enter p0

    .line 47
    const/4 v0, 0x1

    .line 48
    .local v0, "flag":I
    const-wide/16 v4, 0x0

    .line 49
    .local v4, "targetFlags":J
    const/16 v1, 0x20

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 51
    and-int v6, p1, v0

    if-eqz v6, :cond_0

    .line 53
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/base/BitFlagsGroup;->m_Relations:Landroid/util/LongSparseArray;

    int-to-long v8, v0

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 54
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/base/BitFlagsGroup;Ljava/lang/Long;>;"
    if-eqz v2, :cond_0

    .line 56
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 57
    .local v3, "targetFlag":Ljava/lang/Long;
    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    or-long/2addr v4, v6

    .line 49
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/base/BitFlagsGroup;Ljava/lang/Long;>;"
    .end local v3    # "targetFlag":Ljava/lang/Long;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    long-to-int v6, v4

    monitor-exit p0

    return v6

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized convertFlags(JLcom/oneplus/base/BitFlagsGroup;)J
    .locals 15
    .param p1, "flags"    # J
    .param p3, "targetGroup"    # Lcom/oneplus/base/BitFlagsGroup;

    .prologue
    monitor-enter p0

    .line 74
    const-wide/16 v2, 0x1

    .line 75
    .local v2, "flag":J
    const-wide/16 v8, 0x0

    .line 76
    .local v8, "targetFlags":J
    const/16 v4, 0x40

    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_1

    .line 78
    and-long v10, p1, v2

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-eqz v7, :cond_0

    .line 80
    :try_start_0
    iget-object v7, p0, Lcom/oneplus/base/BitFlagsGroup;->m_Relations:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 81
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/base/BitFlagsGroup;Ljava/lang/Long;>;"
    if-eqz v5, :cond_0

    .line 83
    move-object/from16 v0, p3

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 84
    .local v6, "targetFlag":Ljava/lang/Long;
    if-eqz v6, :cond_0

    .line 85
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    or-long/2addr v8, v10

    .line 76
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/base/BitFlagsGroup;Ljava/lang/Long;>;"
    .end local v6    # "targetFlag":Ljava/lang/Long;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    const/4 v7, 0x1

    shl-long/2addr v2, v7

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 89
    return-wide v8

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public createRelation(JLcom/oneplus/base/BitFlagsGroup;J)V
    .locals 3
    .param p1, "flag"    # J
    .param p3, "targetGroup"    # Lcom/oneplus/base/BitFlagsGroup;
    .param p4, "targetFlag"    # J

    .prologue
    .line 100
    if-ne p3, p0, :cond_0

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid flags group"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/base/BitFlagsGroup;->m_Relations:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 105
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/base/BitFlagsGroup;Ljava/lang/Long;>;"
    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/base/BitFlagsGroup;Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/base/BitFlagsGroup;Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/oneplus/base/BitFlagsGroup;->m_Relations:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 110
    :cond_1
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 112
    monitor-enter p3

    .line 114
    :try_start_1
    iget-object v1, p3, Lcom/oneplus/base/BitFlagsGroup;->m_Relations:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p4, p5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/base/BitFlagsGroup;Ljava/lang/Long;>;"
    check-cast v0, Ljava/util/Map;

    .line 115
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/base/BitFlagsGroup;Ljava/lang/Long;>;"
    if-nez v0, :cond_2

    .line 117
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/base/BitFlagsGroup;Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/base/BitFlagsGroup;Ljava/lang/Long;>;"
    iget-object v1, p3, Lcom/oneplus/base/BitFlagsGroup;->m_Relations:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p4, p5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 120
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p3

    .line 98
    return-void

    .line 102
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/base/BitFlagsGroup;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 112
    :catchall_1
    move-exception v1

    monitor-exit p3

    throw v1
.end method

.method public declared-synchronized nextIntFlag()I
    .locals 4

    .prologue
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_CurrentFlag:J

    const-wide v2, 0x80000000L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No more flag to use"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_CurrentFlag:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 134
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_CurrentFlag:J

    .line 137
    :goto_0
    iget-wide v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_CurrentFlag:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    .line 136
    :cond_1
    :try_start_2
    iget-wide v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_CurrentFlag:J

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_CurrentFlag:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized nextLongFlag()J
    .locals 4

    .prologue
    monitor-enter p0

    .line 147
    :try_start_0
    iget-wide v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_CurrentFlag:J

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No more flag to use"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 149
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_CurrentFlag:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 150
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_CurrentFlag:J

    .line 153
    :goto_0
    iget-wide v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_CurrentFlag:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 152
    :cond_1
    :try_start_2
    iget-wide v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_CurrentFlag:J

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_CurrentFlag:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oneplus/base/BitFlagsGroup;->m_Name:Ljava/lang/String;

    return-object v0
.end method
