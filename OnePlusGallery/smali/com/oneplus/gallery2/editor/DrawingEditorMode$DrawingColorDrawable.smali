.class final Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawingEditorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/DrawingEditorMode;
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
    .line 117
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 118
    iput p2, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Color:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_TextureShader:Landroid/graphics/Shader;

    .line 120
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    const v0, 0x7f07007c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderColor:I

    .line 122
    const v0, 0x7f0500c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderThickness:F

    .line 123
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderThickness:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "texture"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Color:I

    .line 128
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_TextureShader:Landroid/graphics/Shader;

    .line 129
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    const v0, 0x7f07007c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderColor:I

    .line 131
    const v0, 0x7f0500c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderThickness:F

    .line 132
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderThickness:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 143
    .local v6, "bounds":Landroid/graphics/Rect;
    iget v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderThickness:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 144
    .local v7, "halfThickness":F
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_TextureShader:Landroid/graphics/Shader;

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
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

    iget-object v5, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->getState()[I

    move-result-object v9

    .line 153
    .local v9, "state":[I
    if-eqz v9, :cond_0

    .line 155
    array-length v0, v9

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_0

    .line 157
    aget v0, v9, v8

    const v1, 0x10100a1

    if-ne v0, v1, :cond_2

    .line 159
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 160
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_BorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 162
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

    iget-object v5, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 167
    .end local v8    # "i":I
    :cond_0
    return-void

    .line 147
    .end local v9    # "state":[I
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_Paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;->m_TextureShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 155
    .restart local v8    # "i":I
    .restart local v9    # "state":[I
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 186
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 191
    return-void
.end method
