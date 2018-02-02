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
    .line 1402
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$20;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput p2, p0, Lcom/oneplus/camera/AutoTestService$20;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1406
    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService$20;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v2}, Lcom/oneplus/camera/AutoTestService;->-get7(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ExposureController;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 1407
    .local v1, "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    iget v2, p0, Lcom/oneplus/camera/AutoTestService$20;->val$value:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v3, p0, Lcom/oneplus/camera/AutoTestService$20;->val$value:F

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_0
    mul-float v0, v3, v2

    .line 1408
    .local v0, "ev":F
    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService$20;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v2}, Lcom/oneplus/camera/AutoTestService;->-get7(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ExposureController;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1405
    return-void

    .line 1407
    .end local v0    # "ev":F
    :cond_0
    iget v2, p0, Lcom/oneplus/camera/AutoTestService$20;->val$value:F

    neg-float v3, v2

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0
.end method
