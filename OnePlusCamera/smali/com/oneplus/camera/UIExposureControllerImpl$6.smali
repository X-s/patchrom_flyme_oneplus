.class Lcom/oneplus/camera/UIExposureControllerImpl$6;
.super Ljava/lang/Object;
.source "UIExposureControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/UIExposureControllerImpl;->setExposureCompensationProp(F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

.field final synthetic val$ev:F


# direct methods
.method constructor <init>(Lcom/oneplus/camera/UIExposureControllerImpl;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/UIExposureControllerImpl;
    .param p2, "val$ev"    # F

    .prologue
    .line 238
    iput-object p1, p0, Lcom/oneplus/camera/UIExposureControllerImpl$6;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

    iput p2, p0, Lcom/oneplus/camera/UIExposureControllerImpl$6;->val$ev:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl$6;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/UIExposureControllerImpl;->getTarget()Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ExposureController;

    sget-object v1, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/camera/UIExposureControllerImpl$6;->val$ev:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 241
    return-void
.end method
