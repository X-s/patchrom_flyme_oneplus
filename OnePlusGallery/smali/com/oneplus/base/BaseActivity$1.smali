.class Lcom/oneplus/base/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/BaseActivity;
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
        "Lcom/oneplus/base/PermissionEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/base/BaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/base/BaseActivity$1;->this$0:Lcom/oneplus/base/BaseActivity;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/oneplus/base/EventKey;

    check-cast p3, Lcom/oneplus/base/PermissionEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/base/BaseActivity$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/PermissionEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/PermissionEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/base/PermissionEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/PermissionEventArgs;",
            ">;",
            "Lcom/oneplus/base/PermissionEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/PermissionEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity$1;->this$0:Lcom/oneplus/base/BaseActivity;

    invoke-virtual {p3}, Lcom/oneplus/base/PermissionEventArgs;->getPermission()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/oneplus/base/BaseActivity;->onPermissionResult(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/base/BaseActivity;->access$0(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;I)V

    .line 188
    return-void
.end method
