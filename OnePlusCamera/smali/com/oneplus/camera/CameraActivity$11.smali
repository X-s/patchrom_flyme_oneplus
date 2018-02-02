.class Lcom/oneplus/camera/CameraActivity$11;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;

.field final synthetic val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

.field final synthetic val$lockFocus:Z


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;ZLcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "val$lockFocus"    # Z
    .param p3, "val$handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$11;->this$0:Lcom/oneplus/camera/CameraActivity;

    iput-boolean p2, p0, Lcom/oneplus/camera/CameraActivity$11;->val$lockFocus:Z

    iput-object p3, p0, Lcom/oneplus/camera/CameraActivity$11;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1384
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$11;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v2}, Lcom/oneplus/camera/CameraActivity;->-get1(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "capturePhoto() - Capture in camera thread"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const/4 v0, 0x0

    .line 1386
    .local v0, "captureFlags":I
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$11;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1387
    const/4 v0, 0x4

    .line 1388
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraActivity$11;->val$lockFocus:Z

    if-eqz v2, :cond_1

    .line 1389
    or-int/lit8 v0, v0, 0x10

    .line 1390
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$11;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v2}, Lcom/oneplus/camera/CameraActivity;->-get3(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v2

    new-instance v3, Lcom/oneplus/camera/CameraThread$PhotoParams;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$11;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget v4, v4, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity$11;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v5}, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->getCaptureMode()Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/oneplus/camera/CameraThread$PhotoParams;-><init>(ILcom/oneplus/camera/capturemode/CaptureMode;)V

    invoke-virtual {v2, v3, v0}, Lcom/oneplus/camera/CameraThread;->capturePhoto(Lcom/oneplus/camera/CameraThread$PhotoParams;I)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    .line 1391
    .local v1, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1392
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$11;->this$0:Lcom/oneplus/camera/CameraActivity;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$11;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    const/16 v4, -0x15

    invoke-static {v2, v4, v6, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1382
    :goto_0
    return-void

    .line 1394
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$11;->this$0:Lcom/oneplus/camera/CameraActivity;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$11;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$11;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Lcom/oneplus/camera/CameraActivity;->-get3(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, -0x14

    invoke-static {v2, v4, v6, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method
