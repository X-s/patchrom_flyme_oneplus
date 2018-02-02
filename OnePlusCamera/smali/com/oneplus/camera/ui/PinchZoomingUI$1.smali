.class Lcom/oneplus/camera/ui/PinchZoomingUI$1;
.super Ljava/lang/Object;
.source "PinchZoomingUI.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/PinchZoomingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PinchZoomingUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/PinchZoomingUI;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/PinchZoomingUI;->-wrap0(Lcom/oneplus/camera/ui/PinchZoomingUI;F)V

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v3, 0x1

    .line 46
    iget-object v0, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/PinchZoomingUI;->-set1(Lcom/oneplus/camera/ui/PinchZoomingUI;F)F

    .line 47
    iget-object v1, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    iget-object v0, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PinchZoomingUI;->-get0(Lcom/oneplus/camera/ui/PinchZoomingUI;)Lcom/oneplus/camera/ZoomController;

    move-result-object v0

    sget-object v2, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/PinchZoomingUI;->-set0(Lcom/oneplus/camera/ui/PinchZoomingUI;F)F

    .line 48
    iget-object v0, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    invoke-static {v0, v3}, Lcom/oneplus/camera/ui/PinchZoomingUI;->-set2(Lcom/oneplus/camera/ui/PinchZoomingUI;Z)Z

    .line 49
    return v3
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/PinchZoomingUI;->-set2(Lcom/oneplus/camera/ui/PinchZoomingUI;Z)Z

    .line 38
    return-void
.end method
