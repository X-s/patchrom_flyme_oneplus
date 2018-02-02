.class Lcom/oneplus/base/ComponentOwnerActivity$2;
.super Ljava/lang/Object;
.source "ComponentOwnerActivity.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/ComponentOwnerActivity;-><init>()V
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
.field final synthetic this$0:Lcom/oneplus/base/ComponentOwnerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/base/ComponentOwnerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/base/ComponentOwnerActivity;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/oneplus/base/ComponentOwnerActivity$2;->this$0:Lcom/oneplus/base/ComponentOwnerActivity;

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
    .line 35
    check-cast p3, Lcom/oneplus/base/component/ComponentEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/base/ComponentOwnerActivity$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/component/ComponentEventArgs;)V

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
    .line 37
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/component/ComponentEventArgs<Lcom/oneplus/base/component/Component;>;>;"
    .local p3, "e":Lcom/oneplus/base/component/ComponentEventArgs;, "Lcom/oneplus/base/component/ComponentEventArgs<Lcom/oneplus/base/component/Component;>;"
    iget-object v0, p0, Lcom/oneplus/base/ComponentOwnerActivity$2;->this$0:Lcom/oneplus/base/ComponentOwnerActivity;

    sget-object v1, Lcom/oneplus/base/ComponentOwnerActivity;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {v0, v1, p3}, Lcom/oneplus/base/ComponentOwnerActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 35
    return-void
.end method
