.class public final Lcom/oneplus/base/BaseObjectAdapter;
.super Lcom/oneplus/base/BasicBaseObject;
.source "BaseObjectAdapter.java"


# instance fields
.field private final m_OwnerEventSource:Lcom/oneplus/base/EventSource;

.field private final m_OwnerPropertySource:Lcom/oneplus/base/PropertySource;

.field public final ownerType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p2}, Lcom/oneplus/base/BasicBaseObject;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseObjectAdapter;->ownerType:Ljava/lang/Class;

    .line 27
    instance-of v0, p1, Lcom/oneplus/base/EventSource;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/oneplus/base/EventSource;

    :goto_0
    iput-object v0, p0, Lcom/oneplus/base/BaseObjectAdapter;->m_OwnerEventSource:Lcom/oneplus/base/EventSource;

    .line 28
    instance-of v0, p1, Lcom/oneplus/base/PropertySource;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/oneplus/base/PropertySource;

    .end local p1    # "owner":Ljava/lang/Object;
    :goto_1
    iput-object p1, p0, Lcom/oneplus/base/BaseObjectAdapter;->m_OwnerPropertySource:Lcom/oneplus/base/PropertySource;

    .line 29
    return-void

    .restart local p1    # "owner":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 27
    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 28
    goto :goto_1
.end method


# virtual methods
.method protected callEventHandler(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventHandler;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventHandler",
            "<TTArgs;>;",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;TTArgs;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    .local p3, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p4, "e":Lcom/oneplus/base/EventArgs;, "TTArgs;"
    iget-object v0, p0, Lcom/oneplus/base/BaseObjectAdapter;->m_OwnerEventSource:Lcom/oneplus/base/EventSource;

    invoke-super {p0, v0, p2, p3, p4}, Lcom/oneplus/base/BasicBaseObject;->callEventHandler(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventHandler;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 37
    return-void
.end method

.method protected callPropertyChangedCallback(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyChangedCallback;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    .local p3, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p4, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<TTValue;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseObjectAdapter;->m_OwnerPropertySource:Lcom/oneplus/base/PropertySource;

    invoke-super {p0, v0, p2, p3, p4}, Lcom/oneplus/base/BasicBaseObject;->callPropertyChangedCallback(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyChangedCallback;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    .line 45
    return-void
.end method

.method public hasCallbacks(Lcom/oneplus/base/PropertyKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    invoke-super {p0, p1}, Lcom/oneplus/base/BasicBaseObject;->hasCallbacks(Lcom/oneplus/base/PropertyKey;)Z

    move-result v0

    return v0
.end method

.method public hasHandlers(Lcom/oneplus/base/EventKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    invoke-super {p0, p1}, Lcom/oneplus/base/BasicBaseObject;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v0

    return v0
.end method

.method public notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "oldValue":Ljava/lang/Object;, "TTValue;"
    .local p3, "newValue":Ljava/lang/Object;, "TTValue;"
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/base/BasicBaseObject;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;TTArgs;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "e":Lcom/oneplus/base/EventArgs;, "TTArgs;"
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BasicBaseObject;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 77
    return-void
.end method

.method public setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BasicBaseObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected verifyEvent(Lcom/oneplus/base/EventKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    iget-object v0, p1, Lcom/oneplus/base/EventKey;->ownerType:Ljava/lang/Class;

    iget-object v1, p0, Lcom/oneplus/base/BaseObjectAdapter;->ownerType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not owned by type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/base/BaseObjectAdapter;->ownerType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    return-void
.end method

.method protected verifyProperty(Lcom/oneplus/base/PropertyKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    iget-object v0, p1, Lcom/oneplus/base/PropertyKey;->ownerType:Ljava/lang/Class;

    iget-object v1, p0, Lcom/oneplus/base/BaseObjectAdapter;->ownerType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not owned by type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/base/BaseObjectAdapter;->ownerType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    return-void
.end method
