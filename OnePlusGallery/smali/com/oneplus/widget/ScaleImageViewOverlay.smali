.class public abstract Lcom/oneplus/widget/ScaleImageViewOverlay;
.super Landroid/view/View;
.source "ScaleImageViewOverlay.java"


# instance fields
.field private m_ImageBounds:Landroid/graphics/Rect;

.field private m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

.field private m_ScaleImageViewStateCallback:Lcom/oneplus/widget/ScaleImageView$StateCallback;

.field private m_TargetImageBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ImageBounds:Landroid/graphics/Rect;

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_TargetImageBounds:Landroid/graphics/Rect;

    .line 19
    new-instance v0, Lcom/oneplus/widget/ScaleImageViewOverlay$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ScaleImageViewOverlay$1;-><init>(Lcom/oneplus/widget/ScaleImageViewOverlay;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageViewStateCallback:Lcom/oneplus/widget/ScaleImageView$StateCallback;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ImageBounds:Landroid/graphics/Rect;

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_TargetImageBounds:Landroid/graphics/Rect;

    .line 19
    new-instance v0, Lcom/oneplus/widget/ScaleImageViewOverlay$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ScaleImageViewOverlay$1;-><init>(Lcom/oneplus/widget/ScaleImageViewOverlay;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageViewStateCallback:Lcom/oneplus/widget/ScaleImageView$StateCallback;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ImageBounds:Landroid/graphics/Rect;

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_TargetImageBounds:Landroid/graphics/Rect;

    .line 19
    new-instance v0, Lcom/oneplus/widget/ScaleImageViewOverlay$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ScaleImageViewOverlay$1;-><init>(Lcom/oneplus/widget/ScaleImageViewOverlay;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageViewStateCallback:Lcom/oneplus/widget/ScaleImageView$StateCallback;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/widget/ScaleImageViewOverlay;Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 0

    .prologue
    .line 124
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/widget/ScaleImageViewOverlay;->onScaleImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/widget/ScaleImageViewOverlay;Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 0

    .prologue
    .line 162
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/widget/ScaleImageViewOverlay;->onScaleImageViewLayoutChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/widget/ScaleImageViewOverlay;Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 0

    .prologue
    .line 143
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/widget/ScaleImageViewOverlay;->onScaleImageTargetImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V

    return-void
.end method

.method private onScaleImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 9
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    new-array v0, v4, [I

    .line 128
    .local v0, "location":[I
    new-array v1, v4, [I

    .line 129
    .local v1, "scaleImageViewLocation":[I
    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ScaleImageViewOverlay;->getLocationInWindow([I)V

    .line 130
    invoke-virtual {p1, v1}, Lcom/oneplus/widget/ScaleImageView;->getLocationInWindow([I)V

    .line 131
    aget v4, v1, v5

    aget v5, v0, v5

    sub-int v2, v4, v5

    .line 132
    .local v2, "xOffset":I
    aget v4, v1, v6

    aget v5, v0, v6

    sub-int v3, v4, v5

    .line 135
    .local v3, "yOffset":I
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ImageBounds:Landroid/graphics/Rect;

    add-int v5, p2, v2

    add-int v6, p3, v3

    add-int v7, p4, v2

    add-int v8, p5, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 138
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ImageBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/oneplus/widget/ScaleImageViewOverlay;->onImageBoundsChanged(IIII)V

    .line 139
    return-void
.end method

.method private onScaleImageTargetImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 9
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 146
    new-array v0, v4, [I

    .line 147
    .local v0, "location":[I
    new-array v1, v4, [I

    .line 148
    .local v1, "scaleImageViewLocation":[I
    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ScaleImageViewOverlay;->getLocationInWindow([I)V

    .line 149
    invoke-virtual {p1, v1}, Lcom/oneplus/widget/ScaleImageView;->getLocationInWindow([I)V

    .line 150
    aget v4, v1, v5

    aget v5, v0, v5

    sub-int v2, v4, v5

    .line 151
    .local v2, "xOffset":I
    aget v4, v1, v6

    aget v5, v0, v6

    sub-int v3, v4, v5

    .line 154
    .local v3, "yOffset":I
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_TargetImageBounds:Landroid/graphics/Rect;

    add-int v5, p2, v2

    add-int v6, p3, v3

    add-int v7, p4, v2

    add-int v8, p5, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 157
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/oneplus/widget/ScaleImageViewOverlay;->onTargetImageBoundsChanged(IIII)V

    .line 158
    return-void
.end method

.method private onScaleImageViewLayoutChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 0
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 165
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/oneplus/widget/ScaleImageViewOverlay;->onImageLayoutChanged(IIII)V

    .line 166
    return-void
.end method


# virtual methods
.method public getImageBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getScaleImageView()Lcom/oneplus/widget/ScaleImageView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    return-object v0
.end method

.method public getTargetImageBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method protected mappingToScaleImageViewCoordinates(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    if-nez v5, :cond_0

    .line 88
    const/4 v1, 0x0

    .line 101
    :goto_0
    return-object v1

    .line 91
    :cond_0
    new-array v0, v8, [I

    .line 92
    .local v0, "location":[I
    new-array v2, v8, [I

    .line 93
    .local v2, "scaleImageViewLocation":[I
    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ScaleImageViewOverlay;->getLocationInWindow([I)V

    .line 94
    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v5, v2}, Lcom/oneplus/widget/ScaleImageView;->getLocationInWindow([I)V

    .line 95
    aget v5, v0, v6

    aget v6, v2, v6

    sub-int v3, v5, v6

    .line 96
    .local v3, "xOffset":I
    aget v5, v0, v7

    aget v6, v2, v7

    sub-int v4, v5, v6

    .line 97
    .local v4, "yOffset":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 98
    .local v1, "result":Landroid/graphics/Rect;
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method protected onImageAnimatingStateChanged(Z)V
    .locals 0
    .param p1, "isAnimating"    # Z

    .prologue
    .line 108
    return-void
.end method

.method protected onImageBoundsChanged(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 114
    return-void
.end method

.method protected onImageLayoutChanged(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 120
    return-void
.end method

.method protected onTargetImageBoundsChanged(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 172
    return-void
.end method

.method protected setImageBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {p0, p1}, Lcom/oneplus/widget/ScaleImageViewOverlay;->mappingToScaleImageViewCoordinates(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method

.method public setScaleImageView(Lcom/oneplus/widget/ScaleImageView;)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageViewStateCallback:Lcom/oneplus/widget/ScaleImageView$StateCallback;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->removeOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V

    .line 193
    :cond_0
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    .line 194
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageViewOverlay;->m_ScaleImageViewStateCallback:Lcom/oneplus/widget/ScaleImageView$StateCallback;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->addOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V

    .line 195
    return-void
.end method
