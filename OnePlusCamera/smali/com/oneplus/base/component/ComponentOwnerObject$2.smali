.class Lcom/oneplus/base/component/ComponentOwnerObject$2;
.super Ljava/lang/Object;
.source "ComponentOwnerObject.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/component/ComponentOwnerObject;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/oneplus/base/component/ComponentOwnerObject;


# direct methods
.method constructor <init>(Lcom/oneplus/base/component/ComponentOwnerObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/base/component/ComponentOwnerObject;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oneplus/base/component/ComponentOwnerObject$2;->this$0:Lcom/oneplus/base/component/ComponentOwnerObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 36
    check-cast p3, Lcom/oneplus/base/component/ComponentEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/base/component/ComponentOwnerObject$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/component/ComponentEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/component/ComponentEventArgs;)V
    .locals 2
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
    .line 38
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/component/ComponentEventArgs<Lcom/oneplus/base/component/Component;>;>;"
    .local p3, "e":Lcom/oneplus/base/component/ComponentEventArgs;, "Lcom/oneplus/base/component/ComponentEventArgs<Lcom/oneplus/base/component/Component;>;"
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentOwnerObject$2;->this$0:Lcom/oneplus/base/component/ComponentOwnerObject;

    sget-object v1, Lcom/oneplus/base/component/ComponentOwnerObject;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-static {v0, v1, p3}, Lcom/oneplus/base/component/ComponentOwnerObject;->-wrap0(Lcom/oneplus/base/component/ComponentOwnerObject;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 36
    return-void
.end method
