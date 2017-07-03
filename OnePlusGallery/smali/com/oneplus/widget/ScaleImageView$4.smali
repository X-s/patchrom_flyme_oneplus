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
.field m_PreviousFocusX:F

.field m_PreviousFocusY:F

.field m_ScaleInCenter:Z

.field final synthetic this$0:Lcom/oneplus/widget/ScaleImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ScaleImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    .line 338
    .local v6, "focusX":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    .line 339
    .local v7, "focusY":F
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_ScaleInCenter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    .line 340
    .local v2, "pivotX":F
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_ScaleInCenter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    .line 341
    .local v3, "pivotY":F
    :goto_1
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_PreviousFocusX:F

    sub-float v4, v0, v6

    .line 342
    .local v4, "distanceX":F
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_PreviousFocusY:F

    sub-float v5, v0, v7

    .line 343
    .local v5, "distanceY":F
    iput v6, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_PreviousFocusX:F

    .line 344
    iput v7, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_PreviousFocusY:F

    .line 345
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    # invokes: Lcom/oneplus/widget/ScaleImageView;->onGestureScale(FFFFF)Z
    invoke-static/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView;->access$5(Lcom/oneplus/widget/ScaleImageView;FFFFF)Z

    move-result v0

    return v0

    .end local v2    # "pivotX":F
    .end local v3    # "pivotY":F
    .end local v4    # "distanceX":F
    .end local v5    # "distanceY":F
    :cond_0
    move v2, v6

    .line 339
    goto :goto_0

    .restart local v2    # "pivotX":F
    :cond_1
    move v3, v7

    .line 340
    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v2, 0x1

    .line 351
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_PreviousFocusX:F

    .line 352
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_PreviousFocusY:F

    .line 353
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;
    invoke-static {v0}, Lcom/oneplus/widget/ScaleImageView;->access$6(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne v0, v1, :cond_0

    .line 354
    iput-boolean v2, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_ScaleInCenter:Z

    .line 357
    :goto_0
    return v2

    .line 356
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_ScaleInCenter:Z

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->access$7(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v1

    # invokes: Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->access$8(Lcom/oneplus/widget/ScaleImageView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 364
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->access$9(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    .line 365
    return-void
.end method
