.class Lcom/oneplus/camera/CameraActivity$42;
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
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 6583
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$42;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Lcom/oneplus/base/OrientationManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 6588
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$42;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/oneplus/camera/CameraActivity;->onDeviceOrientationChanged(I)V

    .line 6589
    invoke-super {p0, p1}, Lcom/oneplus/base/OrientationManager$Callback;->onOrientationChanged(I)V

    .line 6586
    return-void
.end method

.method public onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 8
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 6595
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$42;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0}, Lcom/oneplus/camera/CameraActivity;->-get6(Lcom/oneplus/camera/CameraActivity;)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 6596
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$42;->this$0:Lcom/oneplus/camera/CameraActivity;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v5

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$42;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v1}, Lcom/oneplus/camera/CameraActivity;->-get6(Lcom/oneplus/camera/CameraActivity;)J

    move-result-wide v6

    const/16 v1, -0x5f

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    .line 6593
    :goto_0
    return-void

    .line 6598
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$42;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    goto :goto_0
.end method

.method public onSystemOrientationSettingsChanged(Z)V
    .locals 1
    .param p1, "isSystemOrientationEnabled"    # Z

    .prologue
    .line 6604
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$42;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/oneplus/camera/CameraActivity;->-wrap15(Lcom/oneplus/camera/CameraActivity;Z)V

    .line 6602
    return-void
.end method
