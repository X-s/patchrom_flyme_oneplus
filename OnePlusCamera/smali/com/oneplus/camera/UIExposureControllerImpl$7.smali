.class Lcom/oneplus/camera/UIExposureControllerImpl$7;
.super Ljava/lang/Object;
.source "UIExposureControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/UIExposureControllerImpl;->unlockAutoExposure(Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/UIExposureControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/UIExposureControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/UIExposureControllerImpl;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/oneplus/camera/UIExposureControllerImpl$7;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 285
    iget-object v1, p0, Lcom/oneplus/camera/UIExposureControllerImpl$7;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/UIExposureControllerImpl;->getTarget()Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ExposureController;

    sget-object v2, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 286
    .local v0, "isAeLocked":Z
    iget-object v1, p0, Lcom/oneplus/camera/UIExposureControllerImpl$7;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

    new-instance v2, Lcom/oneplus/camera/UIExposureControllerImpl$7$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/camera/UIExposureControllerImpl$7$1;-><init>(Lcom/oneplus/camera/UIExposureControllerImpl$7;Z)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method
