.class Lcom/oneplus/camera/ui/ZoomBarImpl$5;
.super Ljava/lang/Object;
.source "ZoomBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ZoomBarImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ZoomBarImpl;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$5;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 5
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Float;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Float;>;"
    const/4 v4, 0x1

    .line 193
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$5;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap1(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$5;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$5;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get2(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/ZoomController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ZoomController;->PROP_IS_ZOOM_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$5;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    const/16 v1, 0x2710

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v4, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 198
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$5;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$5;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get0(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap0(Lcom/oneplus/camera/ui/ZoomBarImpl;Landroid/view/View;Z)V

    goto :goto_0
.end method
