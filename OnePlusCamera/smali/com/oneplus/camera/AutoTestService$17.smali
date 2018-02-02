.class Lcom/oneplus/camera/AutoTestService$17;
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
    .line 1349
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$17;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput-boolean p2, p0, Lcom/oneplus/camera/AutoTestService$17;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$17;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get3(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ui/CameraPreviewGrid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$17;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get3(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ui/CameraPreviewGrid;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CameraPreviewGrid;->PROP_GRID_TYPE:Lcom/oneplus/base/PropertyKey;

    iget-boolean v0, p0, Lcom/oneplus/camera/AutoTestService$17;->val$value:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->UNIFORM_3x3:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/oneplus/camera/ui/CameraPreviewGrid;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$17;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get4(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$17;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get4(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->invalidateCameraPreviewOverlay()V

    .line 1352
    :cond_1
    return-void

    .line 1354
    :cond_2
    sget-object v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->NONE:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    goto :goto_0
.end method
