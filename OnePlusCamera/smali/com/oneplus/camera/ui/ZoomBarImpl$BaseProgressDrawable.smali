.class final Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ZoomBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ZoomBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BaseProgressDrawable"
.end annotation


# instance fields
.field private final m_Paint:Landroid/graphics/Paint;

.field private final m_Thickness:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;->m_Thickness:F

    .line 52
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 64
    .local v6, "bounds":Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;->m_Thickness:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float v2, v0, v1

    .line 65
    .local v2, "top":F
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;->m_Thickness:F

    add-float v4, v2, v0

    iget-object v5, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 61
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0xff

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 69
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 73
    return-void
.end method
