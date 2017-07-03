.class public Lcom/oneplus/base/ComponentOwnerActivity;
.super Lcom/oneplus/base/BaseActivity;
.source "ComponentOwnerActivity.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentOwner;


# instance fields
.field private final m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;-><init>()V

    .line 23
    new-instance v0, Lcom/oneplus/base/component/ComponentManager;

    invoke-direct {v0}, Lcom/oneplus/base/component/ComponentManager;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/ComponentOwnerActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    .line 24
    iget-object v0, p0, Lcom/oneplus/base/ComponentOwnerActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v1, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/base/ComponentOwnerActivity$1;

    invoke-direct {v2, p0}, Lcom/oneplus/base/ComponentOwnerActivity$1;-><init>(Lcom/oneplus/base/ComponentOwnerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 32
    iget-object v0, p0, Lcom/oneplus/base/ComponentOwnerActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v1, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/base/ComponentOwnerActivity$2;

    invoke-direct {v2, p0}, Lcom/oneplus/base/ComponentOwnerActivity$2;-><init>(Lcom/oneplus/base/ComponentOwnerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V
    .locals 3
    .param p1, "builders"    # [Lcom/oneplus/base/component/ComponentBuilder;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->verifyAccess()V

    .line 50
    iget-object v0, p0, Lcom/oneplus/base/ComponentOwnerActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TTComponent;>;)TTComponent;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    iget-object v0, p0, Lcom/oneplus/base/ComponentOwnerActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public findComponents(Ljava/lang/Class;)[Lcom/oneplus/base/component/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TTComponent;>;)[TTComponent;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    iget-object v0, p0, Lcom/oneplus/base/ComponentOwnerActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponents(Ljava/lang/Class;[Ljava/lang/Object;)[Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0
.end method

.method protected final getComponentManager()Lcom/oneplus/base/component/ComponentManager;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oneplus/base/ComponentOwnerActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/base/ComponentOwnerActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0}, Lcom/oneplus/base/component/ComponentManager;->release()V

    .line 85
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onDestroy()V

    .line 86
    return-void
.end method

.method public removeComponent(Lcom/oneplus/base/component/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oneplus/base/ComponentOwnerActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/component/ComponentManager;->removeComponent(Lcom/oneplus/base/component/Component;)V

    .line 94
    return-void
.end method
