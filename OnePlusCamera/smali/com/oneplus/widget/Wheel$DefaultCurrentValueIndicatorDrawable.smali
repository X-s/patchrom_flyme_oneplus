.class final Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Wheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/Wheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultCurrentValueIndicatorDrawable"
.end annotation


# static fields
.field private static INDICATOR_SIZE_DP:F


# instance fields
.field private final m_IndicatorPaint:Landroid/graphics/Paint;

.field private final m_IndicatorRect:Landroid/graphics/RectF;

.field private final m_IndicatorSize:I

.field private final m_Orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 266
    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->INDICATOR_SIZE_DP:F

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "orientation"    # I

    .prologue
    const/4 v3, 0x0

    .line 275
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 269
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorPaint:Landroid/graphics/Paint;

    .line 270
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorRect:Landroid/graphics/RectF;

    .line 277
    iget-object v0, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    iget-object v0, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 279
    iget-object v0, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/oneplus/widget/Wheel;->-get0()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    sget v0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->INDICATOR_SIZE_DP:F

    invoke-static {p1, v0}, Lcom/oneplus/widget/ViewUtils;->convertDpToPx(Landroid/content/res/Resources;F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorSize:I

    .line 281
    iget-object v0, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 282
    iput p2, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_Orientation:I

    .line 275
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 290
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v1, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_Orientation:I

    packed-switch v1, :pswitch_data_0

    .line 299
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 287
    return-void

    .line 293
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 325
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/oneplus/widget/Wheel$DefaultCurrentValueIndicatorDrawable;->m_IndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 332
    return-void
.end method
