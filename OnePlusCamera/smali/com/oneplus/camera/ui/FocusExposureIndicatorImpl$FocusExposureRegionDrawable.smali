.class final Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FocusExposureIndicatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FocusExposureRegionDrawable"
.end annotation


# instance fields
.field private final m_BaseDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_ExposureCompBorderWidth:I

.field private final m_ExposureCompPaint:Landroid/graphics/Paint;

.field private m_RelativeExposureComp:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 210
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$DrawableItem;

    new-instance v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$DrawableItem;

    invoke-direct {v1, p2, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$DrawableItem;-><init>(II)V

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;-><init>(Landroid/content/Context;[Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$DrawableItem;)V

    .line 208
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$DrawableItem;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableItems"    # [Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$DrawableItem;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 212
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 215
    array-length v2, p2

    if-nez v2, :cond_0

    .line 216
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Need at least one item"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_0
    array-length v2, p2

    if-ne v2, v5, :cond_1

    .line 221
    aget-object v2, p2, v3

    iget v2, v2, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$DrawableItem;->resId:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable$1;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable$1;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 274
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f080000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompBorderWidth:I

    .line 275
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompPaint:Landroid/graphics/Paint;

    .line 276
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompBorderWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 279
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 212
    return-void

    .line 246
    :cond_1
    new-instance v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;)V

    .line 247
    .local v0, "animationDrawable":Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 248
    aget-object v2, p2, v1

    iget v2, v2, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$DrawableItem;->resId:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v3, p2, v1

    iget v3, v3, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$DrawableItem;->duration:I

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    :cond_2
    invoke-virtual {v0, v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 250
    new-instance v2, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable$2;-><init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;)V

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->addCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 270
    iput-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 288
    .local v9, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 289
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    iget v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_RelativeExposureComp:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 294
    iget v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompBorderWidth:I

    div-int/lit8 v10, v0, 0x2

    .line 295
    .local v10, "offset":I
    invoke-virtual {v9, v10, v10}, Landroid/graphics/Rect;->inset(II)V

    .line 296
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    const/high16 v5, 0x43870000    # 270.0f

    iget v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_RelativeExposureComp:F

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float/2addr v6, v0

    iget-object v8, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 297
    neg-int v0, v10

    neg-int v1, v10

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 284
    .end local v10    # "offset":I
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 324
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 331
    return-void
.end method

.method public setRelativeExposureComp(F)V
    .locals 0
    .param p1, "exposureComp"    # F

    .prologue
    .line 339
    iput p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_RelativeExposureComp:F

    .line 340
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->invalidateSelf()V

    .line 337
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->startAnimation(Z)V

    .line 344
    return-void
.end method

.method public startAnimation(Z)V
    .locals 2
    .param p1, "oneShot"    # Z

    .prologue
    .line 350
    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 353
    .local v0, "drawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 354
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 348
    .end local v0    # "drawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 359
    :cond_0
    return-void
.end method
