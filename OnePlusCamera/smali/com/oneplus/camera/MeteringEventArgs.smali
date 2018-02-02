.class public Lcom/oneplus/camera/MeteringEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "MeteringEventArgs.java"


# static fields
.field private static final POOL:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/oneplus/camera/MeteringEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I = 0x8


# instance fields
.field private volatile m_Handle:Lcom/oneplus/base/Handle;

.field private volatile m_IsFreeInstance:Z

.field private volatile m_IsSuccessful:Z

.field private final m_ReadOnlyRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/oneplus/camera/MeteringEventArgs;->POOL:Ljava/util/ArrayDeque;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/MeteringEventArgs;->m_Regions:Ljava/util/List;

    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/MeteringEventArgs;->m_Regions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/MeteringEventArgs;->m_ReadOnlyRegions:Ljava/util/List;

    .line 34
    return-void
.end method

.method public static declared-synchronized obtain(Lcom/oneplus/base/Handle;Ljava/util/List;Z)Lcom/oneplus/camera/MeteringEventArgs;
    .locals 5
    .param p0, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "isSuccessful"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/Handle;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;Z)",
            "Lcom/oneplus/camera/MeteringEventArgs;"
        }
    .end annotation

    .prologue
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    const-class v3, Lcom/oneplus/camera/MeteringEventArgs;

    monitor-enter v3

    .line 86
    :try_start_0
    sget-object v2, Lcom/oneplus/camera/MeteringEventArgs;->POOL:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/MeteringEventArgs;

    .line 87
    .local v0, "e":Lcom/oneplus/camera/MeteringEventArgs;
    if-eqz v0, :cond_0

    .line 88
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/oneplus/camera/MeteringEventArgs;->m_IsFreeInstance:Z

    .line 91
    :goto_0
    if-eqz p1, :cond_1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 94
    iget-object v4, v0, Lcom/oneplus/camera/MeteringEventArgs;->m_Regions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 90
    .end local v1    # "i":I
    :cond_0
    new-instance v0, Lcom/oneplus/camera/MeteringEventArgs;

    .end local v0    # "e":Lcom/oneplus/camera/MeteringEventArgs;
    invoke-direct {v0}, Lcom/oneplus/camera/MeteringEventArgs;-><init>()V

    .restart local v0    # "e":Lcom/oneplus/camera/MeteringEventArgs;
    goto :goto_0

    .line 96
    :cond_1
    iput-object p0, v0, Lcom/oneplus/camera/MeteringEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    .line 97
    iput-boolean p2, v0, Lcom/oneplus/camera/MeteringEventArgs;->m_IsSuccessful:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 98
    return-object v0

    .end local v0    # "e":Lcom/oneplus/camera/MeteringEventArgs;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/oneplus/base/EventArgs;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/oneplus/camera/MeteringEventArgs;->clone()Lcom/oneplus/camera/MeteringEventArgs;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oneplus/camera/MeteringEventArgs;
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/camera/MeteringEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    iget-object v1, p0, Lcom/oneplus/camera/MeteringEventArgs;->m_Regions:Ljava/util/List;

    iget-boolean v2, p0, Lcom/oneplus/camera/MeteringEventArgs;->m_IsSuccessful:Z

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/MeteringEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/util/List;Z)Lcom/oneplus/camera/MeteringEventArgs;

    move-result-object v0

    return-object v0
.end method

.method public final getHandle()Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/MeteringEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method public final getRegions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oneplus/camera/MeteringEventArgs;->m_ReadOnlyRegions:Ljava/util/List;

    return-object v0
.end method

.method public final isSuccessful()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/oneplus/camera/MeteringEventArgs;->m_IsSuccessful:Z

    return v0
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 107
    const-class v1, Lcom/oneplus/camera/MeteringEventArgs;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/MeteringEventArgs;->m_IsFreeInstance:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/MeteringEventArgs;->m_IsFreeInstance:Z

    .line 112
    iget-object v0, p0, Lcom/oneplus/camera/MeteringEventArgs;->m_Regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/MeteringEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    .line 115
    :cond_0
    sget-object v0, Lcom/oneplus/camera/MeteringEventArgs;->POOL:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 116
    sget-object v0, Lcom/oneplus/camera/MeteringEventArgs;->POOL:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 105
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
