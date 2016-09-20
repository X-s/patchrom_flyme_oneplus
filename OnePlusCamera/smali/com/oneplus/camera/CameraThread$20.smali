.class Lcom/oneplus/camera/CameraThread$20;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->capturePhoto(II)Lcom/oneplus/camera/CaptureHandle;
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
    .line 849
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$20;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$20;->val$handle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 853
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$20;->this$0:Lcom/oneplus/camera/CameraThread;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$20;->val$handle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    const/4 v2, 0x0

    # invokes: Lcom/oneplus/camera/CameraThread;->capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->access$2300(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z

    .line 854
    return-void
.end method
