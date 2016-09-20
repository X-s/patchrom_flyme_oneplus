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

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    # invokes: Lcom/oneplus/camera/ui/PinchZoomingUI;->onScaleByGesture(F)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/PinchZoomingUI;->access$500(Lcom/oneplus/camera/ui/PinchZoomingUI;F)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v4, 0x1

    .line 47
    iget-object v0, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/oneplus/camera/ui/PinchZoomingUI;->m_ScaleBeginTime:J
    invoke-static {v0, v2, v3}, Lcom/oneplus/camera/ui/PinchZoomingUI;->access$102(Lcom/oneplus/camera/ui/PinchZoomingUI;J)J

    .line 48
    iget-object v0, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    # setter for: Lcom/oneplus/camera/ui/PinchZoomingUI;->m_InitialSpan:F
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/PinchZoomingUI;->access$202(Lcom/oneplus/camera/ui/PinchZoomingUI;F)F

    .line 49
    iget-object v1, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    iget-object v0, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    # getter for: Lcom/oneplus/camera/ui/PinchZoomingUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PinchZoomingUI;->access$400(Lcom/oneplus/camera/ui/PinchZoomingUI;)Lcom/oneplus/camera/ZoomController;

    move-result-object v0

    sget-object v2, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/oneplus/camera/ui/PinchZoomingUI;->m_InitialDigitalZoom:F
    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/PinchZoomingUI;->access$302(Lcom/oneplus/camera/ui/PinchZoomingUI;F)F

    .line 50
    iget-object v0, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    # setter for: Lcom/oneplus/camera/ui/PinchZoomingUI;->m_IsScaling:Z
    invoke-static {v0, v4}, Lcom/oneplus/camera/ui/PinchZoomingUI;->access$002(Lcom/oneplus/camera/ui/PinchZoomingUI;Z)Z

    .line 51
    return v4
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oneplus/camera/ui/PinchZoomingUI$1;->this$0:Lcom/oneplus/camera/ui/PinchZoomingUI;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/camera/ui/PinchZoomingUI;->m_IsScaling:Z
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/PinchZoomingUI;->access$002(Lcom/oneplus/camera/ui/PinchZoomingUI;Z)Z

    .line 42
    return-void
.end method
