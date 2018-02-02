.class Lcom/oneplus/camera/AutoTestService$20;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->setFloatState(Ljava/lang/String;F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$value"    # F

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$20;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput p2, p0, Lcom/oneplus/camera/AutoTestService$20;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$20;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get20(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ZoomController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/camera/AutoTestService$20;->val$value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ZoomController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1428
    return-void
.end method
