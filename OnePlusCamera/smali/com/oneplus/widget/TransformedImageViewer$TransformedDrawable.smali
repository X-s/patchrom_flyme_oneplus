.class final Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TransformedImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/TransformedImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransformedDrawable"
.end annotation


# instance fields
.field private final m_Matrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/oneplus/widget/TransformedImageViewer;


# direct methods
.method public constructor <init>(Lcom/oneplus/widget/TransformedImageViewer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/widget/TransformedImageViewer;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->m_Matrix:Landroid/graphics/Matrix;

    .line 64
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 72
    iget-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v2}, Lcom/oneplus/widget/TransformedImageViewer;->-get0(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 73
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 77
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 78
    .local v1, "saveCount":I
    iget-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v2}, Lcom/oneplus/widget/TransformedImageViewer;->-get5(Lcom/oneplus/widget/TransformedImageViewer;)Lcom/oneplus/util/TransformedRect;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v3}, Lcom/oneplus/widget/TransformedImageViewer;->-get4(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/util/TransformedRect;->getBoundingBox(Landroid/graphics/RectF;)V

    .line 79
    iget-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v2}, Lcom/oneplus/widget/TransformedImageViewer;->-get5(Lcom/oneplus/widget/TransformedImageViewer;)Lcom/oneplus/util/TransformedRect;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Lcom/oneplus/util/TransformedRect;->getTransformation(Landroid/graphics/Matrix;)V

    .line 82
    iget-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->m_Matrix:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v4}, Lcom/oneplus/widget/TransformedImageViewer;->-get4(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v5}, Lcom/oneplus/widget/TransformedImageViewer;->-get4(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 83
    iget-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v4}, Lcom/oneplus/widget/TransformedImageViewer;->-get4(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v5}, Lcom/oneplus/widget/TransformedImageViewer;->-get4(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 84
    iget-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 87
    iget-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v2}, Lcom/oneplus/widget/TransformedImageViewer;->-get0(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v3}, Lcom/oneplus/widget/TransformedImageViewer;->-get2(Lcom/oneplus/widget/TransformedImageViewer;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v4}, Lcom/oneplus/widget/TransformedImageViewer;->-get1(Lcom/oneplus/widget/TransformedImageViewer;)I

    move-result v4

    invoke-virtual {v2, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    iget-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v2}, Lcom/oneplus/widget/TransformedImageViewer;->-get0(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    iget-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v2}, Lcom/oneplus/widget/TransformedImageViewer;->-get3(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v2}, Lcom/oneplus/widget/TransformedImageViewer;->-get3(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v3}, Lcom/oneplus/widget/TransformedImageViewer;->-get2(Lcom/oneplus/widget/TransformedImageViewer;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v4}, Lcom/oneplus/widget/TransformedImageViewer;->-get1(Lcom/oneplus/widget/TransformedImageViewer;)I

    move-result v4

    invoke-virtual {v2, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    iget-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v2}, Lcom/oneplus/widget/TransformedImageViewer;->-get3(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    :cond_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 69
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v0}, Lcom/oneplus/widget/TransformedImageViewer;->-get5(Lcom/oneplus/widget/TransformedImageViewer;)Lcom/oneplus/util/TransformedRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/util/TransformedRect;->getHeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v0}, Lcom/oneplus/widget/TransformedImageViewer;->-get5(Lcom/oneplus/widget/TransformedImageViewer;)Lcom/oneplus/util/TransformedRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/util/TransformedRect;->getWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v0}, Lcom/oneplus/widget/TransformedImageViewer;->-get0(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v0}, Lcom/oneplus/widget/TransformedImageViewer;->-get0(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    .line 119
    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v0}, Lcom/oneplus/widget/TransformedImageViewer;->-get0(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v0}, Lcom/oneplus/widget/TransformedImageViewer;->-get0(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v0}, Lcom/oneplus/widget/TransformedImageViewer;->-get0(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;->this$0:Lcom/oneplus/widget/TransformedImageViewer;

    invoke-static {v0}, Lcom/oneplus/widget/TransformedImageViewer;->-get0(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 132
    :cond_0
    return-void
.end method
