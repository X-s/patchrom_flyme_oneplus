.class Lcom/oneplus/widget/ScaleImageView$4;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field m_InitFocusX:F

.field m_InitFocusY:F

.field m_ScaleInCenter:Z

.field final synthetic this$0:Lcom/oneplus/widget/ScaleImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ScaleImageView;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 215
    iget-boolean v2, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_ScaleInCenter:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 216
    .local v0, "pivotX":F
    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_ScaleInCenter:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 217
    .local v1, "pivotY":F
    :goto_1
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    # invokes: Lcom/oneplus/widget/ScaleImageView;->onGestureScale(FFF)Z
    invoke-static {v2, v3, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->access$600(Lcom/oneplus/widget/ScaleImageView;FFF)Z

    move-result v2

    return v2

    .line 215
    .end local v0    # "pivotX":F
    .end local v1    # "pivotY":F
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    goto :goto_0

    .line 216
    .restart local v0    # "pivotX":F
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v2, 0x1

    .line 223
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_InitFocusX:F

    .line 224
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_InitFocusY:F

    .line 225
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;
    invoke-static {v0}, Lcom/oneplus/widget/ScaleImageView;->access$700(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne v0, v1, :cond_0

    .line 226
    iput-boolean v2, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_ScaleInCenter:Z

    .line 229
    :goto_0
    return v2

    .line 228
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_ScaleInCenter:Z

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->access$800(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v1

    # invokes: Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->access$900(Lcom/oneplus/widget/ScaleImageView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 236
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->access$1000(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/widget/ScaleImageView;->access$1100(Lcom/oneplus/widget/ScaleImageView;Landroid/graphics/Rect;Z)V

    .line 237
    return-void
.end method
