.class Lcom/oneplus/camera/AutoTestService$13;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->performAction(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$13;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$13;->this$0:Lcom/oneplus/camera/AutoTestService;

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$13;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v1}, Lcom/oneplus/camera/AutoTestService;->-get2(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/OPCameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->captureVideo()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/AutoTestService;->-set2(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/CaptureHandle;)Lcom/oneplus/camera/CaptureHandle;

    .line 1252
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$13;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get18(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$13;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get5(Lcom/oneplus/camera/AutoTestService;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$13;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v1}, Lcom/oneplus/camera/AutoTestService;->-get18(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    :goto_0
    return-void

    .line 1257
    :cond_0
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v1, "performAction() - Video capture failed."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
