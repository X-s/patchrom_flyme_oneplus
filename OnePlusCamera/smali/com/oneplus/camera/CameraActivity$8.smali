.class Lcom/oneplus/camera/CameraActivity$8;
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

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity$8;->val$params:Lcom/oneplus/camera/CameraThread$VideoParams;

    iput-object p3, p0, Lcom/oneplus/camera/CameraActivity$8;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1240
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/CameraActivity;->access$1600(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "captureVideo() - Capture in camera thread"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;
    invoke-static {v1}, Lcom/oneplus/camera/CameraActivity;->access$1500(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$8;->val$params:Lcom/oneplus/camera/CameraThread$VideoParams;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraThread;->captureVideo(Lcom/oneplus/camera/CameraThread$VideoParams;)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    .line 1242
    .local v0, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1243
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    const/16 v2, -0x1f

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$8;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-static {v1, v2, v6, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1246
    :goto_0
    return-void

    .line 1245
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    const/16 v2, -0x1e

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$8;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;
    invoke-static {v4}, Lcom/oneplus/camera/CameraActivity;->access$1500(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v6, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method
