.class public abstract Lcom/oneplus/base/Handle;
.super Ljava/lang/Object;
.source "Handle.java"


# instance fields
.field private volatile m_IsClosed:Z

.field public final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oneplus/base/Handle;->name:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/base/Handle;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "handle":Lcom/oneplus/base/Handle;, "TT;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public static close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/base/Handle;",
            ">(TT;I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "handle":Lcom/oneplus/base/Handle;, "TT;"
    const/4 v2, 0x0

    .line 47
    if-eqz p0, :cond_0

    .line 49
    monitor-enter p0

    .line 51
    move-object v0, p0

    .line 52
    .local v0, "actualHandle":Lcom/oneplus/base/Handle;
    :try_start_0
    iget-boolean v1, v0, Lcom/oneplus/base/Handle;->m_IsClosed:Z

    if-eqz v1, :cond_1

    .line 53
    monitor-exit p0

    .line 58
    .end local v0    # "actualHandle":Lcom/oneplus/base/Handle;
    :cond_0
    :goto_0
    return-object v2

    .line 54
    .restart local v0    # "actualHandle":Lcom/oneplus/base/Handle;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/base/Handle;->m_IsClosed:Z

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Handle;->onClose(I)V

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isValid(Lcom/oneplus/base/Handle;)Z
    .locals 1
    .param p0, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 81
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/base/Handle;->m_IsClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final closeDirectly()V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    .line 69
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/base/Handle;->m_IsClosed:Z

    .line 67
    monitor-exit p0

    .line 71
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract onClose(I)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/base/Handle;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
