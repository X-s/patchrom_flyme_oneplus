.class Lcom/oneplus/camera/AutoTestService$16;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->setBooleanState(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$value"    # Z

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$16;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput-boolean p2, p0, Lcom/oneplus/camera/AutoTestService$16;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$16;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get3(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ui/CameraPreviewGrid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$16;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get3(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ui/CameraPreviewGrid;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-boolean v2, p0, Lcom/oneplus/camera/AutoTestService$16;->val$value:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/CameraPreviewGrid;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$16;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get4(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1319
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$16;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get4(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->invalidateCameraPreviewOverlay()V

    .line 1315
    :cond_1
    return-void
.end method
