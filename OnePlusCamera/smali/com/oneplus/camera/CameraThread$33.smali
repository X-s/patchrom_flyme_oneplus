.class Lcom/oneplus/camera/CameraThread$33;
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

    .prologue
    .line 3262
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$33;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$33;->val$handle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3266
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$33;->this$0:Lcom/oneplus/camera/CameraThread;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$33;->val$handle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    # invokes: Lcom/oneplus/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/CameraThread;->access$3600(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    .line 3267
    return-void
.end method
