.class Lcom/oneplus/camera/UIExposureControllerImpl$7$1;
.super Ljava/lang/Object;
.source "UIExposureControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/UIExposureControllerImpl$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/UIExposureControllerImpl$7;

.field final synthetic val$isAeLocked:Z


# direct methods
.method constructor <init>(Lcom/oneplus/camera/UIExposureControllerImpl$7;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/UIExposureControllerImpl$7;
    .param p2, "val$isAeLocked"    # Z

    .prologue
    .line 286
    iput-object p1, p0, Lcom/oneplus/camera/UIExposureControllerImpl$7$1;->this$1:Lcom/oneplus/camera/UIExposureControllerImpl$7;

    iput-boolean p2, p0, Lcom/oneplus/camera/UIExposureControllerImpl$7$1;->val$isAeLocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl$7$1;->this$1:Lcom/oneplus/camera/UIExposureControllerImpl$7;

    iget-object v0, v0, Lcom/oneplus/camera/UIExposureControllerImpl$7;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

    sget-object v1, Lcom/oneplus/camera/UIExposureControllerImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    iget-boolean v2, p0, Lcom/oneplus/camera/UIExposureControllerImpl$7$1;->val$isAeLocked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/UIExposureControllerImpl;->-wrap0(Lcom/oneplus/camera/UIExposureControllerImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 289
    return-void
.end method
