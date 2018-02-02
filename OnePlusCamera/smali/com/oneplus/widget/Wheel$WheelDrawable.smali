.class public Lcom/oneplus/widget/Wheel$WheelDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Wheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/Wheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WheelDrawable"
.end annotation


# static fields
.field private static final MIN_TICK_MARGIN_DP:F = 5.0f

.field private static final PADDING_DP:F = 13.0f

.field private static final TICK_THICKNESS_DP:F = 1.0f


# instance fields
.field private m_CenterValue:I

.field private m_CurrentValuePosition:I

.field private m_MaxValue:I

.field private final m_MinTickMargin:F

.field private final m_Orientation:I

.field private final m_Padding:I

.field private final m_TickPaint:Landroid/graphics/Paint;

.field private m_Value:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "orientation"    # I

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_TickPaint:Landroid/graphics/Paint;

    .line 107
    iput p2, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_Orientation:I

    .line 108
    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {p1, v0}, Lcom/oneplus/widget/ViewUtils;->convertDpToPx(Landroid/content/res/Resources;F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_Padding:I

    .line 109
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/oneplus/widget/ViewUtils;->convertDpToPx(Landroid/content/res/Resources;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_MinTickMargin:F

    .line 110
    iget-object v0, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_TickPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    iget-object v0, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_TickPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lcom/oneplus/widget/ViewUtils;->convertDpToPx(Landroid/content/res/Resources;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    return-void
.end method

.method private prepareTickPaint(Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "wheelBounds"    # Landroid/graphics/Rect;
    .param p2, "tickPosition"    # I

    .prologue
    const/4 v6, -0x1

    .line 194
    invoke-virtual {p0}, Lcom/oneplus/widget/Wheel$WheelDrawable;->getCenterValue()I

    move-result v0

    .line 195
    .local v0, "centerValue":I
    if-gez v0, :cond_0

    .line 196
    iget-object v3, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_TickPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    :goto_0
    :pswitch_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/widget/Wheel$WheelDrawable;->getCurrentValuePosition()I

    move-result v2

    .line 200
    .local v2, "currentValuePosition":I
    iget v3, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_Orientation:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 204
    :pswitch_1
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/oneplus/widget/Wheel$WheelDrawable;->getMaxValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float v1, v3, v4

    .line 205
    .local v1, "centerValuePosition":F
    int-to-float v3, v2

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_TickPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 207
    :cond_1
    int-to-float v3, v2

    cmpg-float v3, v3, v1

    if-gez v3, :cond_4

    .line 209
    if-lt p2, v2, :cond_2

    int-to-float v3, p2

    cmpl-float v3, v3, v1

    if-lez v3, :cond_3

    .line 210
    :cond_2
    iget-object v3, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_TickPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v3, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_TickPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/oneplus/widget/Wheel;->-get0()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 216
    :cond_4
    if-gt p2, v2, :cond_5

    int-to-float v3, p2

    cmpg-float v3, v3, v1

    if-gez v3, :cond_6

    .line 217
    :cond_5
    iget-object v3, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_TickPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 219
    :cond_6
    iget-object v3, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_TickPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/oneplus/widget/Wheel;->-get0()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/oneplus/widget/Wheel$WheelDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 119
    .local v6, "bounds":Landroid/graphics/Rect;
    iget v0, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_Orientation:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_0
    :pswitch_0
    return-void

    .line 123
    :pswitch_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_Padding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_Padding:I

    sub-int v10, v0, v1

    .line 124
    .local v10, "tickHeight":I
    if-lez v10, :cond_0

    .line 126
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_MinTickMargin:F

    div-float/2addr v0, v1

    float-to-int v9, v0

    .line 127
    .local v9, "tickCount":I
    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_Padding:I

    add-int v11, v0, v1

    .line 128
    .local v11, "tickTop":I
    add-int v8, v11, v10

    .line 129
    .local v8, "tickBottom":I
    iget v0, v6, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v6, v0}, Lcom/oneplus/widget/Wheel$WheelDrawable;->prepareTickPaint(Landroid/graphics/Rect;I)V

    .line 130
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    int-to-float v2, v11

    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_TickPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, v9, :cond_0

    .line 133
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v7

    int-to-float v3, v9

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 134
    .local v12, "x":I
    invoke-direct {p0, v6, v12}, Lcom/oneplus/widget/Wheel$WheelDrawable;->prepareTickPaint(Landroid/graphics/Rect;I)V

    .line 135
    int-to-float v1, v12

    int-to-float v2, v11

    int-to-float v3, v12

    int-to-float v4, v8

    iget-object v5, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_TickPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCenterValue()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_CenterValue:I

    return v0
.end method

.method public getCurrentValue()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_Value:I

    return v0
.end method

.method public getCurrentValuePosition()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_CurrentValuePosition:I

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_MaxValue:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_TickPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 235
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_TickPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 242
    return-void
.end method

.method final setCurrentValuePosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_CurrentValuePosition:I

    .line 248
    return-void
.end method

.method final setValues(III)V
    .locals 0
    .param p1, "max"    # I
    .param p2, "center"    # I
    .param p3, "current"    # I

    .prologue
    .line 256
    iput p1, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_MaxValue:I

    .line 257
    iput p2, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_CenterValue:I

    .line 258
    iput p3, p0, Lcom/oneplus/widget/Wheel$WheelDrawable;->m_Value:I

    .line 254
    return-void
.end method
