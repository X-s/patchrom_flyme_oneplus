.class Lcom/oneplus/camera/ui/SceneToast$4;
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
    .line 94
    iput-object p1, p0, Lcom/oneplus/camera/ui/SceneToast$4;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .param p2, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p3, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 99
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/oneplus/camera/ui/SceneToast$4;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    iget-object v1, p0, Lcom/oneplus/camera/ui/SceneToast$4;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    invoke-static {v1}, Lcom/oneplus/camera/ui/SceneToast;->-get1(Lcom/oneplus/camera/ui/SceneToast;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/SceneToast;->-set1(Lcom/oneplus/camera/ui/SceneToast;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oneplus/camera/ui/SceneToast$4;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SceneToast;->-wrap0(Lcom/oneplus/camera/ui/SceneToast;)V

    goto :goto_0
.end method
