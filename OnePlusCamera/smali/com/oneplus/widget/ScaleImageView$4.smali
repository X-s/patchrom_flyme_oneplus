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
    .param p1, "this$0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 376
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    .line 377
    .local v6, "focusX":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    .line 378
    .local v7, "focusY":F
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_ScaleInCenter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    .line 379
    .local v2, "pivotX":F
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_ScaleInCenter:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    .line 380
    .local v3, "pivotY":F
    :goto_1
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_PreviousFocusX:F

    sub-float v4, v0, v6

    .line 381
    .local v4, "distanceX":F
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_PreviousFocusY:F

    sub-float v5, v0, v7

    .line 382
    .local v5, "distanceY":F
    iput v6, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_PreviousFocusX:F

    .line 383
    iput v7, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_PreviousFocusY:F

    .line 384
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 385
    .local v1, "factor":F
    const v0, 0x3f866666    # 1.05f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 386
    const v1, 0x3f866666    # 1.05f

    .line 389
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView;->-wrap4(Lcom/oneplus/widget/ScaleImageView;FFFFF)Z

    move-result v0

    return v0

    .line 378
    .end local v1    # "factor":F
    .end local v2    # "pivotX":F
    .end local v3    # "pivotY":F
    .end local v4    # "distanceX":F
    .end local v5    # "distanceY":F
    :cond_1
    move v2, v6

    .restart local v2    # "pivotX":F
    goto :goto_0

    .line 379
    :cond_2
    move v3, v7

    .restart local v3    # "pivotY":F
    goto :goto_1

    .line 387
    .restart local v1    # "factor":F
    .restart local v4    # "distanceX":F
    .restart local v5    # "distanceY":F
    :cond_3
    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 388
    const v1, 0x3f733333    # 0.95f

    goto :goto_2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v2, 0x1

    .line 395
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_PreviousFocusX:F

    .line 396
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_PreviousFocusY:F

    .line 397
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v0}, Lcom/oneplus/widget/ScaleImageView;->-get3(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne v0, v1, :cond_0

    .line 398
    iput-boolean v2, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_ScaleInCenter:Z

    .line 401
    :goto_0
    return v2

    .line 400
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->m_ScaleInCenter:Z

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->-get2(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->-wrap0(Lcom/oneplus/widget/ScaleImageView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 408
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$4;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->-get1(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    .line 405
    return-void
.end method
