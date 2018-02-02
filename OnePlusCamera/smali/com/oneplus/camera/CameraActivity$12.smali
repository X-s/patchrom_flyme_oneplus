.class Lcom/oneplus/camera/CameraActivity$12;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->captureVideo(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;

.field final synthetic val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

.field final synthetic val$params:Lcom/oneplus/camera/CameraThread$VideoParams;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraThread$VideoParams;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "val$params"    # Lcom/oneplus/camera/CameraThread$VideoParams;
    .param p3, "val$handle"    # Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    .line 1494
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$12;->this$0:Lcom/oneplus/camera/CameraActivity;

    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity$12;->val$params:Lcom/oneplus/camera/CameraThread$VideoParams;

    iput-object p3, p0, Lcom/oneplus/camera/CameraActivity$12;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1499
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$12;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v2}, Lcom/oneplus/camera/CameraActivity;->-get1(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "captureVideo() - Capture in camera thread"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    const/4 v0, 0x0

    .line 1501
    .local v0, "flags":I
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$12;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1502
    const/4 v0, 0x4

    .line 1503
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$12;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v2}, Lcom/oneplus/camera/CameraActivity;->-get3(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$12;->val$params:Lcom/oneplus/camera/CameraThread$VideoParams;

    invoke-virtual {v2, v3, v0}, Lcom/oneplus/camera/CameraThread;->captureVideo(Lcom/oneplus/camera/CameraThread$VideoParams;I)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    .line 1504
    .local v1, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1505
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$12;->this$0:Lcom/oneplus/camera/CameraActivity;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$12;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    const/16 v4, -0x1f

    invoke-static {v2, v4, v6, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1497
    :goto_0
    return-void

    .line 1507
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$12;->this$0:Lcom/oneplus/camera/CameraActivity;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$12;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$12;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Lcom/oneplus/camera/CameraActivity;->-get3(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, -0x1e

    invoke-static {v2, v4, v6, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method
