.class Lcom/oneplus/camera/CameraActivity$7;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;Z)Z
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

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$7;->this$0:Lcom/oneplus/camera/CameraActivity;

    iput-boolean p2, p0, Lcom/oneplus/camera/CameraActivity$7;->val$lockFocus:Z

    iput-object p3, p0, Lcom/oneplus/camera/CameraActivity$7;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1131
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$7;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/camera/CameraActivity;->access$1400(Lcom/oneplus/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "capturePhoto() - Capture in camera thread"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/4 v0, 0x0

    .line 1133
    .local v0, "captureFlags":I
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$7;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1134
    or-int/lit8 v0, v0, 0x4

    .line 1135
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraActivity$7;->val$lockFocus:Z

    if-eqz v2, :cond_1

    .line 1136
    or-int/lit8 v0, v0, 0x10

    .line 1137
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$7;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;
    invoke-static {v2}, Lcom/oneplus/camera/CameraActivity;->access$1500(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$7;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    iget v3, v3, Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    invoke-virtual {v2, v3, v0}, Lcom/oneplus/camera/CameraThread;->capturePhoto(II)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    .line 1138
    .local v1, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1139
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$7;->this$0:Lcom/oneplus/camera/CameraActivity;

    const/16 v3, -0x15

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity$7;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-static {v2, v3, v7, v7, v4}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1142
    :goto_0
    return-void

    .line 1141
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$7;->this$0:Lcom/oneplus/camera/CameraActivity;

    const/16 v3, -0x14

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity$7;->val$handle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/oneplus/camera/CameraActivity$7;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;
    invoke-static {v5}, Lcom/oneplus/camera/CameraActivity;->access$1500(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v7, v7, v4}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method
