.class Lcom/oneplus/camera/ui/SceneToast$3;
.super Ljava/lang/Object;
.source "SceneToast.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/SceneToast;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/SceneToast;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/SceneToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/SceneToast;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oneplus/camera/ui/SceneToast$3;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .param p2, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p3, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/camera/ui/SceneToast$3;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/SceneToast;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/SceneToast$3;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    invoke-static {v1}, Lcom/oneplus/camera/ui/SceneToast;->-get2(Lcom/oneplus/camera/ui/SceneToast;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    iget-object v0, p0, Lcom/oneplus/camera/ui/SceneToast$3;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/SceneToast;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/SceneToast$3;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    invoke-static {v1}, Lcom/oneplus/camera/ui/SceneToast;->-get2(Lcom/oneplus/camera/ui/SceneToast;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method
