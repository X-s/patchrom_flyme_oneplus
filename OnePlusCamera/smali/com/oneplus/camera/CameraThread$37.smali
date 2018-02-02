.class Lcom/oneplus/camera/CameraThread$37;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->stopPhotoCapture(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;

.field final synthetic val$handle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;
    .param p2, "val$handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .prologue
    .line 4112
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$37;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$37;->val$handle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4117
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$37;->this$0:Lcom/oneplus/camera/CameraThread;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$37;->val$handle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    sget-object v2, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->-wrap31(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 4115
    return-void
.end method
