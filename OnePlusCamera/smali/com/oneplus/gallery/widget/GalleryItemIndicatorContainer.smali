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

    .line 18
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 23
    iget v4, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageWidth:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageHeight:I

    if-lez v4, :cond_0

    .line 25
    sub-int v2, p4, p2

    .line 26
    .local v2, "containerWidth":I
    sub-int v1, p5, p3

    .line 27
    .local v1, "containerHeight":I
    iget v4, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageWidth:I

    iget v5, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageHeight:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v1, v6}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v0

    .line 28
    .local v0, "childSize":Landroid/util/Size;
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    sub-int v4, v2, v4

    div-int/lit8 p2, v4, 0x2

    .line 29
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int v4, v1, v4

    div-int/lit8 p3, v4, 0x2

    .line 30
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    add-int p4, p2, v4

    .line 31
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    add-int p5, p3, v4

    .line 33
    .end local v0    # "childSize":Landroid/util/Size;
    .end local v1    # "containerHeight":I
    .end local v2    # "containerWidth":I
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getChildCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 34
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 33
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 40
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 41
    iget v4, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageWidth:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageHeight:I

    if-lez v4, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-ne v4, v7, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 47
    .local v3, "maxWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 48
    .local v2, "maxHeight":I
    iget v4, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageWidth:I

    iget v5, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageHeight:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v2, v6}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v0

    .line 49
    .local v0, "childSize":Landroid/util/Size;
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 50
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 52
    .end local v0    # "childSize":Landroid/util/Size;
    .end local v2    # "maxHeight":I
    .end local v3    # "maxWidth":I
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 53
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 52
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method public setOriginalImageSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageWidth:I

    .line 59
    iput p2, p0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->m_OriginalImageHeight:I

    .line 60
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->requestLayout()V

    .line 61
    return-void
.end method
