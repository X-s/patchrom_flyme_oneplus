.class Lcom/oneplus/camera/manual/ManualModeController$1;
.super Ljava/lang/Object;
.source "ManualModeController.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/manual/ManualModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeController;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeController;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeController$1;->this$0:Lcom/oneplus/camera/manual/ManualModeController;

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
    .line 44
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeController$1;->this$0:Lcom/oneplus/camera/manual/ManualModeController;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeController;->-wrap0(Lcom/oneplus/camera/manual/ManualModeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeController$1;->this$0:Lcom/oneplus/camera/manual/ManualModeController;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeController;->-wrap1(Lcom/oneplus/camera/manual/ManualModeController;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 42
    :cond_0
    return-void
.end method
