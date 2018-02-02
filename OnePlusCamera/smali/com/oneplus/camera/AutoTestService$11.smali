.class Lcom/oneplus/camera/AutoTestService$11;
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

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$flags"    # I

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$11;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput p2, p0, Lcom/oneplus/camera/AutoTestService$11;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$11;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v1}, Lcom/oneplus/camera/AutoTestService;->-get2(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/OPCameraActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1217
    return-void

    .line 1218
    :cond_0
    const/4 v0, 0x1

    .line 1219
    .local v0, "frameCount":I
    iget v1, p0, Lcom/oneplus/camera/AutoTestService$11;->val$flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1220
    const/16 v0, 0x14

    .line 1222
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$11;->this$0:Lcom/oneplus/camera/AutoTestService;

    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService$11;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v2}, Lcom/oneplus/camera/AutoTestService;->-get2(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/OPCameraActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/camera/OPCameraActivity;->capturePhoto(I)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/camera/AutoTestService;->-set1(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/CaptureHandle;)Lcom/oneplus/camera/CaptureHandle;

    .line 1224
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$11;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v1}, Lcom/oneplus/camera/AutoTestService;->-get14(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1226
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1227
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$11;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v1}, Lcom/oneplus/camera/AutoTestService;->-get5(Lcom/oneplus/camera/AutoTestService;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService$11;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v2}, Lcom/oneplus/camera/AutoTestService;->-get14(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    :goto_0
    return-void

    .line 1229
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$11;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v1}, Lcom/oneplus/camera/AutoTestService;->-get0(Lcom/oneplus/camera/AutoTestService;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService$11;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v2}, Lcom/oneplus/camera/AutoTestService;->-get14(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1232
    :cond_3
    const-string/jumbo v1, "CameraAutoTestService"

    const-string/jumbo v2, "performAction() - Take picture failed."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
