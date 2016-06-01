.class public Lcom/oneplus/base/PropertyChangeEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "PropertyChangeEventArgs.java"

# interfaces
.implements Lcom/oneplus/base/RecyclableObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/base/EventArgs;",
        "Lcom/oneplus/base/RecyclableObject;"
    }
.end annotation


# static fields
.field private static final POOL_CAPACITY:I = 0x20

.field private static final m_Pool:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile m_IsAvailable:Z

.field private volatile m_NewValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field private volatile m_OldValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_Pool:Ljava/util/ArrayDeque;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<TTValue;>;"
    .local p1, "oldValue":Ljava/lang/Object;, "TTValue;"
    .local p2, "newValue":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_OldValue:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_NewValue:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public static declared-synchronized obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/base/PropertyChangeEventArgs;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(TTValue;TTValue;)",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<TTValue;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "oldValue":Ljava/lang/Object;, "TTValue;"
    .local p1, "newValue":Ljava/lang/Object;, "TTValue;"
    const-class v2, Lcom/oneplus/base/PropertyChangeEventArgs;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/oneplus/base/PropertyChangeEventArgs;->m_Pool:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/PropertyChangeEventArgs;

    .line 42
    .local v0, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<TTValue;>;"
    if-eqz v0, :cond_0

    .line 44
    iput-object p0, v0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_OldValue:Ljava/lang/Object;

    .line 45
    iput-object p1, v0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_NewValue:Ljava/lang/Object;

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_IsAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_0
    monitor-exit v2

    return-object v0

    .line 49
    :cond_0
    :try_start_1
    new-instance v0, Lcom/oneplus/base/PropertyChangeEventArgs;

    .end local v0    # "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<TTValue;>;"
    invoke-direct {v0, p0, p1}, Lcom/oneplus/base/PropertyChangeEventArgs;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<TTValue;>;"
    goto :goto_0

    .line 41
    .end local v0    # "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<TTValue;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized recycle(Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<*>;"
    const-class v1, Lcom/oneplus/base/PropertyChangeEventArgs;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_IsAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    monitor-exit v1

    return-void

    .line 92
    :cond_0
    :try_start_1
    sget-object v0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_Pool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 93
    sget-object v0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_Pool:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 94
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_OldValue:Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_NewValue:Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_IsAvailable:Z

    .line 97
    invoke-virtual {p0}, Lcom/oneplus/base/PropertyChangeEventArgs;->clearHandledState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getNewValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<TTValue;>;"
    iget-boolean v0, p0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_IsAvailable:Z

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_NewValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final getOldValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<TTValue;>;"
    iget-boolean v0, p0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_IsAvailable:Z

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/PropertyChangeEventArgs;->m_OldValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final recycle()V
    .locals 0

    .prologue
    .line 83
    .local p0, "this":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<TTValue;>;"
    invoke-static {p0}, Lcom/oneplus/base/PropertyChangeEventArgs;->recycle(Lcom/oneplus/base/PropertyChangeEventArgs;)V

    .line 84
    return-void
.end method
