.class Lcom/oneplus/camera/ui/SceneToast$5;
.super Ljava/lang/Object;
.source "SceneToast.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/SceneToast;->onInitialize()V
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
        "Lcom/oneplus/camera/scene/SceneEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/SceneToast;

.field final synthetic val$updateToastDelayedCallback:Lcom/oneplus/base/PropertyChangedCallback;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/SceneToast;Lcom/oneplus/base/PropertyChangedCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/SceneToast;
    .param p2, "val$updateToastDelayedCallback"    # Lcom/oneplus/base/PropertyChangedCallback;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oneplus/camera/ui/SceneToast$5;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    iput-object p2, p0, Lcom/oneplus/camera/ui/SceneToast$5;->val$updateToastDelayedCallback:Lcom/oneplus/base/PropertyChangedCallback;

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
    .line 131
    check-cast p3, Lcom/oneplus/camera/scene/SceneEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/SceneToast$5;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/scene/SceneEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/scene/SceneEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/scene/SceneEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/scene/SceneEventArgs;",
            ">;",
            "Lcom/oneplus/camera/scene/SceneEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/scene/SceneEventArgs;>;"
    invoke-virtual {p3}, Lcom/oneplus/camera/scene/SceneEventArgs;->getScene()Lcom/oneplus/camera/scene/Scene;

    move-result-object v0

    .line 134
    .local v0, "scene":Lcom/oneplus/camera/scene/Scene;
    instance-of v1, v0, Lcom/oneplus/camera/scene/AutoHdrScene;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/SceneToast$5;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    invoke-static {v1}, Lcom/oneplus/camera/ui/SceneToast;->-get0(Lcom/oneplus/camera/ui/SceneToast;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/SceneToast$5;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/SceneToast;->-set0(Lcom/oneplus/camera/ui/SceneToast;Z)Z

    .line 137
    sget-object v1, Lcom/oneplus/camera/scene/AutoHdrScene;->PROP_IS_HDR_ACTIVE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/SceneToast$5;->val$updateToastDelayedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/scene/Scene;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0
.end method
