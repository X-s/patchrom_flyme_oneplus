.class Lcom/oneplus/camera/CameraActivity$11;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->bindToNormalComponents()Z
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
        "Lcom/oneplus/camera/AutoExposureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$11;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/AutoExposureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/AutoExposureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1172
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/AutoExposureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/AutoExposureState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$11;->this$0:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$11;->this$0:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$11;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$11;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v1}, Lcom/oneplus/camera/CameraActivity;->-get5(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/CameraActivity;->-set3(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method
