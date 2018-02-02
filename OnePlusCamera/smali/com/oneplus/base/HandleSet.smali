.class public Lcom/oneplus/base/HandleSet;
.super Lcom/oneplus/base/Handle;
.source "HandleSet.java"


# instance fields
.field private final m_Handles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/oneplus/base/Handle;)V
    .locals 3
    .param p1, "handles"    # [Lcom/oneplus/base/Handle;

    .prologue
    .line 21
    const-string/jumbo v1, "HandleSet"

    invoke-direct {p0, v1}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/base/HandleSet;->m_Handles:Ljava/util/List;

    .line 22
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 23
    iget-object v1, p0, Lcom/oneplus/base/HandleSet;->m_Handles:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    monitor-enter p0

    .line 34
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Handle set has been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 36
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/oneplus/base/HandleSet;->m_Handles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 39
    return-object p0
.end method

.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 47
    iget-object v1, p0, Lcom/oneplus/base/HandleSet;->m_Handles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/oneplus/base/HandleSet;->m_Handles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 47
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/oneplus/base/HandleSet;->m_Handles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 45
    return-void
.end method
