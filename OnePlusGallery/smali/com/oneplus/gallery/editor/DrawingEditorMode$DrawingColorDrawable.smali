.class final Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawingEditorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/DrawingEditorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DrawingColorDrawable"
.end annotation


# instance fields
.field private final m_BorderColor:I

.field private final m_BorderThickness:F

.field private final m_Color:I

.field private final m_Paint:Landroid/graphics/Paint;

.field private final m_TextureShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "color"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 113
    iput p2, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Color:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_TextureShader:Landroid/graphics/Shader;

    .line 115
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    const v0, 0x7f07007c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderColor:I

    .line 117
    const v0, 0x7f0500c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderThickness:F

    .line 118
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderThickness:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "texture"    # Landroid/graphics/Bitmap;

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Color:I

    .line 123
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_TextureShader:Landroid/graphics/Shader;

    .line 124
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    const v0, 0x7f07007c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderColor:I

    .line 126
    const v0, 0x7f0500c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderThickness:F

    .line 127
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderThickness:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 138
    .local v6, "bounds":Landroid/graphics/Rect;
    iget v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderThickness:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 139
    .local v7, "halfThickness":F
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_TextureShader:Landroid/graphics/Shader;

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float v1, v0, v7

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v2, v0, v7

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float v3, v0, v7

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float v4, v0, v7

    iget-object v5, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->getState()[I

    move-result-object v9

    .line 148
    .local v9, "state":[I
    if-eqz v9, :cond_0

    .line 150
    array-length v0, v9

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_0

    .line 152
    aget v0, v9, v8

    const v1, 0x10100a1

    if-ne v0, v1, :cond_2

    .line 154
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 155
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float v1, v0, v7

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v2, v0, v7

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float v3, v0, v7

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float v4, v0, v7

    iget-object v5, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 162
    .end local v8    # "i":I
    :cond_0
    return-void

    .line 142
    .end local v9    # "state":[I
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;->m_TextureShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 150
    .restart local v8    # "i":I
    .restart local v9    # "state":[I
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 181
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 186
    return-void
.end method
