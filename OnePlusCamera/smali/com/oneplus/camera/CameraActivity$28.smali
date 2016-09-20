.class Lcom/oneplus/camera/CameraActivity$28;
.super Lcom/oneplus/base/OrientationManager$Callback;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->startOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 4881
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$28;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Lcom/oneplus/base/OrientationManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 4885
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$28;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/oneplus/camera/CameraActivity;->onDeviceOrientationChanged(I)V

    .line 4886
    invoke-super {p0, p1}, Lcom/oneplus/base/OrientationManager$Callback;->onOrientationChanged(I)V

    .line 4887
    return-void
.end method

.method public onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 1
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 4892
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$28;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 4893
    return-void
.end method

.method public onSystemOrientationSettingsChanged(Z)V
    .locals 1
    .param p1, "isSystemOrientationEnabled"    # Z

    .prologue
    .line 4898
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$28;->this$0:Lcom/oneplus/camera/CameraActivity;

    # invokes: Lcom/oneplus/camera/CameraActivity;->onSystemOrientationSettingsChanged(Z)V
    invoke-static {v0, p1}, Lcom/oneplus/camera/CameraActivity;->access$3500(Lcom/oneplus/camera/CameraActivity;Z)V

    .line 4899
    return-void
.end method
