.class Lcom/oneplus/camera/UIZoomControllerImpl$1;
.super Ljava/lang/Object;
.source "UIZoomControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/UIZoomControllerImpl;->applyDigitalZoom(F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/UIZoomControllerImpl;

.field final synthetic val$zoom:F


# direct methods
.method constructor <init>(Lcom/oneplus/camera/UIZoomControllerImpl;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/UIZoomControllerImpl;
    .param p2, "val$zoom"    # F

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oneplus/camera/UIZoomControllerImpl$1;->this$0:Lcom/oneplus/camera/UIZoomControllerImpl;

    iput p2, p0, Lcom/oneplus/camera/UIZoomControllerImpl$1;->val$zoom:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/camera/UIZoomControllerImpl$1;->this$0:Lcom/oneplus/camera/UIZoomControllerImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/UIZoomControllerImpl;->getTarget()Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ZoomController;

    sget-object v1, Lcom/oneplus/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/camera/UIZoomControllerImpl$1;->val$zoom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ZoomController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 43
    return-void
.end method
