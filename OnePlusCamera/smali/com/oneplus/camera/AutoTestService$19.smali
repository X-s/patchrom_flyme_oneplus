.class Lcom/oneplus/camera/AutoTestService$19;
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
    .line 1399
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$19;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput-boolean p2, p0, Lcom/oneplus/camera/AutoTestService$19;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$19;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get17(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/SmileCaptureController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$19;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get17(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/SmileCaptureController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/SmileCaptureController;->PROP_IS_SMILE_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-boolean v2, p0, Lcom/oneplus/camera/AutoTestService$19;->val$value:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/SmileCaptureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1402
    :cond_0
    return-void
.end method
