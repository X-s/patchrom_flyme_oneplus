.class public Lcom/oneplus/widget/ShadowTextRenderer;
.super Ljava/lang/Object;
.source "ShadowTextRenderer.java"


# instance fields
.field private m_HasStroke:Z

.field private m_MaximumSize:Landroid/util/Size;

.field private final m_MeasuredTextBounds:Landroid/graphics/Rect;

.field private final m_StrokePaint:Landroid/graphics/Paint;

.field private m_Text:Ljava/lang/String;

.field private final m_TextPaint:Landroid/graphics/Paint;

.field private m_TextSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ShadowTextRenderer;-><init>(Ljava/lang/CharSequence;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_HasStroke:Z

    .line 15
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MaximumSize:Landroid/util/Size;

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    .line 32
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTypefaceFromAttrs(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/widget/ShadowTextRenderer;->getTypefaceFromAttrs(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private getTypefaceFromAttrs(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "style"    # I

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 103
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 104
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_1

    .line 109
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 109
    .restart local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private measure()V
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextSize:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    iget v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextSize:F

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ShadowTextRenderer;->measure(F)V

    goto :goto_0
.end method

.method private measure(F)V
    .locals 5
    .param p1, "currentTextSize"    # F

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MaximumSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MaximumSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x41400000    # 12.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MaximumSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 131
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 132
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    invoke-direct {p0, p1}, Lcom/oneplus/widget/ShadowTextRenderer;->measure(F)V

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v2, 0x0

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Canvas could not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 52
    .local v3, "length":I
    if-eqz v3, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/oneplus/widget/ShadowTextRenderer;->measure()V

    .line 57
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    add-float v5, p3, v0

    .line 58
    .local v5, "bottom":F
    iget-object v1, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 59
    iget-boolean v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_HasStroke:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v1, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/oneplus/widget/ShadowTextRenderer;->measure()V

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/widget/ShadowTextRenderer;->measure()V

    .line 75
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextSize:F

    return v0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    return-void
.end method

.method public setMaximumSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 153
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MaximumSize:Landroid/util/Size;

    .line 154
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 155
    return-void
.end method

.method public setShadow(FFFI)V
    .locals 3
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 161
    cmpg-float v0, p1, v2

    if-gtz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public setStroke(Z)V
    .locals 0
    .param p1, "hasStroke"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_HasStroke:Z

    .line 172
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 178
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 180
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 187
    const/16 v10, 0x8

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-virtual {p1, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 196
    .local v7, "style":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 197
    .local v2, "isTextSizeChanged":Z
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 199
    const/4 v10, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextSize:F

    .line 201
    iget-object v10, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    iget v11, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextSize:F

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 202
    iget-object v10, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    iget v11, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextSize:F

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 203
    const/4 v2, 0x0

    .line 205
    :cond_0
    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 207
    const/4 v10, 0x2

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 209
    .local v0, "color":I
    iget-object v10, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    .end local v0    # "color":I
    :cond_1
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x7

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 213
    :cond_2
    const/4 v10, 0x1

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 214
    .local v8, "textStyle":I
    const/4 v10, 0x7

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "familyName":Ljava/lang/String;
    invoke-direct {p0, v1, v8}, Lcom/oneplus/widget/ShadowTextRenderer;->getTypefaceFromAttrs(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    .line 216
    .local v9, "typeface":Landroid/graphics/Typeface;
    iget-object v10, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 217
    iget-object v10, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 218
    const/4 v2, 0x1

    .line 220
    .end local v1    # "familyName":Ljava/lang/String;
    .end local v8    # "textStyle":I
    .end local v9    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x6

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 222
    const/4 v10, 0x3

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 223
    .local v3, "shadowColor":I
    const/4 v10, 0x6

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 224
    .local v6, "shadowRadius":F
    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 225
    .local v4, "shadowDx":F
    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 226
    .local v5, "shadowDy":F
    iget-object v10, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v6, v4, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 228
    .end local v3    # "shadowColor":I
    .end local v4    # "shadowDx":F
    .end local v5    # "shadowDy":F
    .end local v6    # "shadowRadius":F
    :cond_4
    if-eqz v2, :cond_5

    .line 229
    iget-object v10, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 231
    :cond_5
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    return-void

    .line 187
    :array_0
    .array-data 4
        0x1010095
        0x1010097
        0x1010098
        0x1010161
        0x1010162
        0x1010163
        0x1010164
        0x10103ac
    .end array-data
.end method

.method public setTextSize(F)V
    .locals 4
    .param p1, "size"    # F

    .prologue
    .line 238
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 240
    iput p1, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextSize:F

    .line 241
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 242
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 243
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 245
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 252
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 253
    iget-object v0, p0, Lcom/oneplus/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 254
    return-void
.end method
