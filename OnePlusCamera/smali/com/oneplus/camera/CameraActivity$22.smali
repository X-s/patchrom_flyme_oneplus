.class Lcom/oneplus/camera/CameraActivity$22;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->notifyCameraThreadRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;

.field final synthetic val$newRotation:Lcom/oneplus/base/Rotation;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Rotation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "val$newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 2967
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$22;->this$0:Lcom/oneplus/camera/CameraActivity;

    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity$22;->val$newRotation:Lcom/oneplus/base/Rotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2972
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$22;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0}, Lcom/oneplus/camera/CameraActivity;->-get3(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$22;->val$newRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2970
    return-void
.end method
