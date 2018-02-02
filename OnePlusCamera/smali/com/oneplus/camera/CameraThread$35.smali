.class Lcom/oneplus/camera/CameraThread$35;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->stopVideoCapture(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;

.field final synthetic val$flags:I

.field final synthetic val$handle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

.field final synthetic val$reason:Lcom/oneplus/camera/CaptureCompleteReason;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;
    .param p2, "val$handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p3, "val$reason"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p4, "val$flags"    # I

    .prologue
    .line 3796
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$35;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$35;->val$handle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    iput-object p3, p0, Lcom/oneplus/camera/CameraThread$35;->val$reason:Lcom/oneplus/camera/CaptureCompleteReason;

    iput p4, p0, Lcom/oneplus/camera/CameraThread$35;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3801
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$35;->this$0:Lcom/oneplus/camera/CameraThread;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$35;->val$handle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread$35;->val$reason:Lcom/oneplus/camera/CaptureCompleteReason;

    iget v3, p0, Lcom/oneplus/camera/CameraThread$35;->val$flags:I

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/camera/CameraThread;->-wrap30(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 3799
    return-void
.end method
