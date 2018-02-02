.class Lcom/oneplus/widget/ImageViewer$5;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/widget/ImageViewer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_PrevFocusX:F

.field private m_PrevFocusY:F

.field final synthetic this$0:Lcom/oneplus/widget/ImageViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ImageViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/widget/ImageViewer;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/oneplus/widget/ImageViewer$5;->this$0:Lcom/oneplus/widget/ImageViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 435
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    .line 436
    .local v2, "focusX":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    .line 437
    .local v3, "focusY":F
    iget v0, p0, Lcom/oneplus/widget/ImageViewer$5;->m_PrevFocusX:F

    sub-float v4, v2, v0

    .line 438
    .local v4, "distanceX":F
    iget v0, p0, Lcom/oneplus/widget/ImageViewer$5;->m_PrevFocusY:F

    sub-float v5, v3, v0

    .line 439
    .local v5, "distanceY":F
    iput v2, p0, Lcom/oneplus/widget/ImageViewer$5;->m_PrevFocusX:F

    .line 440
    iput v3, p0, Lcom/oneplus/widget/ImageViewer$5;->m_PrevFocusY:F

    .line 441
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer$5;->this$0:Lcom/oneplus/widget/ImageViewer;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ImageViewer;->onGestureScale(FFFFF)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer$5;->this$0:Lcom/oneplus/widget/ImageViewer;

    invoke-virtual {v0}, Lcom/oneplus/widget/ImageViewer;->onGestureScaleBegin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/ImageViewer$5;->m_PrevFocusX:F

    .line 426
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/ImageViewer$5;->m_PrevFocusY:F

    .line 427
    const/4 v0, 0x1

    return v0

    .line 429
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer$5;->this$0:Lcom/oneplus/widget/ImageViewer;

    invoke-virtual {v0}, Lcom/oneplus/widget/ImageViewer;->onGestureScaleEnd()V

    .line 415
    return-void
.end method
