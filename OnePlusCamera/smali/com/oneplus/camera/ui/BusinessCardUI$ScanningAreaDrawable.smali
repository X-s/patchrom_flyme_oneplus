.class Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BusinessCardUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/BusinessCardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanningAreaDrawable"
.end annotation


# instance fields
.field private final m_BackgroundPaint:Landroid/graphics/Paint;

.field private final m_Center:Landroid/graphics/Rect;

.field private m_HollowPaint:Landroid/graphics/Paint;

.field private m_InnerCornerPaint:Landroid/graphics/Paint;

.field private m_InnerFramePaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/oneplus/camera/ui/BusinessCardUI;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/BusinessCardUI;IILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/BusinessCardUI;
    .param p2, "backgroundColor"    # I
    .param p3, "hollowColor"    # I
    .param p4, "hollowCenter"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 249
    iput-object p1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->this$0:Lcom/oneplus/camera/ui/BusinessCardUI;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 251
    iput-object p4, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    .line 253
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_BackgroundPaint:Landroid/graphics/Paint;

    .line 254
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_BackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_BackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    .line 258
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 260
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 262
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerFramePaint:Landroid/graphics/Paint;

    .line 263
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 264
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 265
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerFramePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 268
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerCornerPaint:Landroid/graphics/Paint;

    .line 269
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerCornerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 270
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 271
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerCornerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 249
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 279
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 280
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 282
    .local v0, "temp":Landroid/graphics/Canvas;
    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_BackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 284
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 287
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerFramePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 290
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x3c

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 291
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x3c

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 293
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x3c

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 294
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x3c

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 296
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x3c

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 297
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x3c

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 299
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x3c

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 300
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x3c

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_Center:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_InnerCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 301
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;->m_BackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 276
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 311
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 314
    return-void
.end method
