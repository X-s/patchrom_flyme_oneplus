.class Lcom/oneplus/camera/CameraThread$29;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->pauseVideoCapture(Lcom/oneplus/camera/CaptureHandle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;

.field final synthetic val$handle:Lcom/oneplus/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CaptureHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;
    .param p2, "val$handle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 2887
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$29;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$29;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2893
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$29;->this$0:Lcom/oneplus/camera/CameraThread;

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$29;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    check-cast v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/oneplus/camera/CameraThread;->-wrap3(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;I)Z

    .line 2891
    return-void
.end method
