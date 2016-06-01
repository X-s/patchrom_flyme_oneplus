.class final Lcom/oneplus/base/component/ComponentUtils$2;
.super Ljava/lang/Object;
.source "ComponentUtils.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/base/component/ComponentEventArgs",
        "<",
        "Lcom/oneplus/base/component/Component;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/oneplus/base/component/ComponentSearchCallback;

.field final synthetic val$callbackTarget:Lcom/oneplus/base/HandlerObject;

.field final synthetic val$componentType:Ljava/lang/Class;

.field final synthetic val$owner:Lcom/oneplus/base/component/ComponentOwner;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentOwner;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oneplus/base/component/ComponentUtils$2;->val$componentType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/oneplus/base/component/ComponentUtils$2;->val$owner:Lcom/oneplus/base/component/ComponentOwner;

    iput-object p3, p0, Lcom/oneplus/base/component/ComponentUtils$2;->val$callbackTarget:Lcom/oneplus/base/HandlerObject;

    iput-object p4, p0, Lcom/oneplus/base/component/ComponentUtils$2;->val$callback:Lcom/oneplus/base/component/ComponentSearchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 72
    check-cast p3, Lcom/oneplus/base/component/ComponentEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/base/component/ComponentUtils$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/component/ComponentEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/component/ComponentEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/component/ComponentEventArgs",
            "<",
            "Lcom/oneplus/base/component/Component;",
            ">;>;",
            "Lcom/oneplus/base/component/ComponentEventArgs",
            "<",
            "Lcom/oneplus/base/component/Component;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/component/ComponentEventArgs<Lcom/oneplus/base/component/Component;>;>;"
    .local p3, "e":Lcom/oneplus/base/component/ComponentEventArgs;, "Lcom/oneplus/base/component/ComponentEventArgs<Lcom/oneplus/base/component/Component;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/component/ComponentEventArgs;->getComponent()Lcom/oneplus/base/component/Component;

    move-result-object v0

    .line 78
    .local v0, "newComponent":Lcom/oneplus/base/component/Component;
    iget-object v1, p0, Lcom/oneplus/base/component/ComponentUtils$2;->val$componentType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/oneplus/base/component/ComponentUtils$2;->val$owner:Lcom/oneplus/base/component/ComponentOwner;

    sget-object v2, Lcom/oneplus/base/component/ComponentOwner;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    invoke-interface {v1, v2, p0}, Lcom/oneplus/base/component/ComponentOwner;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 81
    iget-object v1, p0, Lcom/oneplus/base/component/ComponentUtils$2;->val$callbackTarget:Lcom/oneplus/base/HandlerObject;

    iget-object v2, p0, Lcom/oneplus/base/component/ComponentUtils$2;->val$callback:Lcom/oneplus/base/component/ComponentSearchCallback;

    # invokes: Lcom/oneplus/base/component/ComponentUtils;->callComponentSearchCallback(Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;Lcom/oneplus/base/component/Component;)V
    invoke-static {v1, v2, v0}, Lcom/oneplus/base/component/ComponentUtils;->access$000(Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;Lcom/oneplus/base/component/Component;)V

    .line 83
    :cond_0
    return-void
.end method
