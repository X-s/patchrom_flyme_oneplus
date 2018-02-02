.class public Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;
.super Landroid/view/ViewGroup;
.source "GalleryItemIndicatorContainer.java"


# instance fields
.field private m_OriginalImageHeight:I

.field private m_OriginalImageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 24
    iget v8, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageWidth:I

    if-lez v8, :cond_0

    iget v8, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageHeight:I

    if-lez v8, :cond_0

    .line 26
    sub-int v6, p4, p2

    .line 27
    .local v6, "containerWidth":I
    sub-int v5, p5, p3

    .line 28
    .local v5, "containerHeight":I
    iget v8, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageWidth:I

    iget v9, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageHeight:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v6, v5, v10}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v3

    .line 29
    .local v3, "childSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int v8, v6, v8

    div-int/lit8 v1, v8, 0x2

    .line 30
    .local v1, "childLeft":I
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    sub-int v8, v5, v8

    div-int/lit8 v4, v8, 0x2

    .line 31
    .local v4, "childTop":I
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    add-int v2, v1, v8

    .line 32
    .local v2, "childRight":I
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 33
    .local v0, "childBottom":I
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getPaddingLeft()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 34
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getPaddingTop()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 35
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getPaddingRight()I

    move-result v8

    sub-int v8, p4, v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 36
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getPaddingBottom()I

    move-result v8

    sub-int v8, p5, v8

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 45
    .end local v3    # "childSize":Landroid/util/Size;
    .end local v5    # "containerHeight":I
    .end local v6    # "containerWidth":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getChildCount()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_1

    .line 46
    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1, v4, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 45
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 40
    .end local v0    # "childBottom":I
    .end local v1    # "childLeft":I
    .end local v2    # "childRight":I
    .end local v4    # "childTop":I
    .end local v7    # "i":I
    :cond_0
    move v1, p2

    .line 41
    .restart local v1    # "childLeft":I
    move v4, p3

    .line 42
    .restart local v4    # "childTop":I
    move v2, p4

    .line 43
    .restart local v2    # "childRight":I
    move/from16 v0, p5

    .restart local v0    # "childBottom":I
    goto :goto_0

    .line 21
    .restart local v7    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 52
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 53
    iget v6, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageWidth:I

    if-lez v6, :cond_0

    .line 54
    iget v6, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageHeight:I

    if-lez v6, :cond_0

    .line 55
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 56
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 58
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 59
    .local v5, "maxWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 60
    .local v4, "maxHeight":I
    iget v6, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageWidth:I

    iget v7, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageHeight:I

    invoke-static {v6, v7, v5, v4, v8}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v1

    .line 61
    .local v1, "childSize":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getPaddingStart()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getPaddingEnd()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 62
    .local v2, "childWidth":I
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getPaddingTop()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    .local v0, "childHeight":I
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 64
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 66
    .end local v0    # "childHeight":I
    .end local v1    # "childSize":Landroid/util/Size;
    .end local v2    # "childWidth":I
    .end local v4    # "maxHeight":I
    .end local v5    # "maxWidth":I
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 67
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/view/View;->measure(II)V

    .line 66
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method public setOriginalImageSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageWidth:I

    .line 73
    iput p2, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageHeight:I

    .line 74
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->requestLayout()V

    .line 70
    return-void
.end method
