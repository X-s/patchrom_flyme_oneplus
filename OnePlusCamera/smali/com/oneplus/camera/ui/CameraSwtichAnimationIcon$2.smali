.class Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$2;
.super Ljava/lang/Object;
.source "CameraSwtichAnimationIcon.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->onInitialize()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

.field final synthetic val$cameraActivity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;
    .param p2, "val$cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$2;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    iput-object p2, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$2;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$2;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 81
    .local v0, "oldCamera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    .line 83
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$2;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v2, v1}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-set1(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Lcom/oneplus/camera/Camera$LensFacing;)Lcom/oneplus/camera/Camera$LensFacing;

    .line 84
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$2;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-set0(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Z)Z

    .line 76
    .end local v0    # "oldCamera":Lcom/oneplus/camera/Camera;
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$2;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-get2(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)Lcom/oneplus/camera/ui/PreviewCover;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$2;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-get2(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)Lcom/oneplus/camera/ui/PreviewCover;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCover$Style;->COLOR_BLACK:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ui/PreviewCover;->getPreviewCoverState(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCover$UIState;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    if-ne v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$2;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-set0(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Z)Z

    goto :goto_0
.end method
