.class public final Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;
.super Ljava/lang/Object;
.source "SimpleExtraKeyGenerator.java"

# interfaces
.implements Lcom/oneplus/gallery2/ExtraKeyGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;
    }
.end annotation


# static fields
.field private static final MAX_RECYCLED_KEY_COUNT:I = 0x40


# instance fields
.field private volatile m_NextId:J

.field private final m_RecycledKeys:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;->m_NextId:J

    .line 17
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;->m_RecycledKeys:Ljava/util/Queue;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;
    .param p1, "x1"    # Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;->recycleKey(Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;)V

    return-void
.end method

.method private declared-synchronized recycleKey(Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "key":Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;, "Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key<*>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;->isRecycled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;->m_RecycledKeys:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;->m_RecycledKeys:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;->isRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized generateKey(Ljava/lang/Class;)Lcom/oneplus/gallery2/ExtraKey;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTValue;>;)",
            "Lcom/oneplus/gallery2/ExtraKey",
            "<TTValue;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TTValue;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;->m_RecycledKeys:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;

    .line 55
    .local v0, "key":Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;, "Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key<TTValue;>;"
    if-eqz v0, :cond_0

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;->isRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v0    # "key":Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;, "Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key<TTValue;>;"
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "key":Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;, "Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key<TTValue;>;"
    :cond_0
    :try_start_1
    new-instance v0, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;

    .end local v0    # "key":Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;, "Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key<TTValue;>;"
    iget-wide v2, p0, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;->m_NextId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;->m_NextId:J

    invoke-direct {v0, p0, v2, v3}, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator$Key;-><init>(Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
