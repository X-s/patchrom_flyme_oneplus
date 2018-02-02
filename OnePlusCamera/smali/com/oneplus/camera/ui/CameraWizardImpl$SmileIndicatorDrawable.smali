.class public Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraWizardImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CameraWizardImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmileIndicatorDrawable"
.end annotation


# instance fields
.field private final m_BackgroundPaint:Landroid/graphics/Paint;

.field private final m_Center:Landroid/graphics/PointF;

.field private m_HollowPaint:Landroid/graphics/Paint;

.field private m_IndicatorPaint:Landroid/graphics/Paint;

.field private final m_Radius:F

.field private m_StickCircleCenter:Landroid/graphics/PointF;

.field private m_StickCircleRadius:F

.field private m_StickRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/graphics/PointF;FLandroid/graphics/Rect;Landroid/graphics/PointF;F)V
    .locals 4
    .param p1, "backgroundColor"    # I
    .param p2, "hollowColor"    # I
    .param p3, "hollowCenter"    # Landroid/graphics/PointF;
    .param p4, "hollowRadius"    # F
    .param p5, "stickRect"    # Landroid/graphics/Rect;
    .param p6, "stickCircleCenter"    # Landroid/graphics/PointF;
    .param p7, "stickCircleRadius"    # F

    .prologue
    const/4 v3, 0x1

    .line 570
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 572
    iput-object p3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_Center:Landroid/graphics/PointF;

    .line 573
    iput p4, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_Radius:F

    .line 575
    iput-object p5, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_StickRect:Landroid/graphics/Rect;

    .line 576
    iput-object p6, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_StickCircleCenter:Landroid/graphics/PointF;

    .line 577
    iput p7, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_StickCircleRadius:F

    .line 579
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_BackgroundPaint:Landroid/graphics/Paint;

    .line 580
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_BackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 581
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_BackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 583
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    .line 584
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 585
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 586
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 588
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_IndicatorPaint:Landroid/graphics/Paint;

    .line 589
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_IndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 590
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_IndicatorPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 591
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_IndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 570
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 597
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 598
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 599
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 601
    .local v0, "temp":Landroid/graphics/Canvas;
    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_BackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 603
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_Center:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_Center:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_Radius:F

    iget-object v4, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 605
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_BackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 608
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_StickRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_IndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 609
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_StickCircleCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_StickCircleCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_StickCircleRadius:F

    iget-object v4, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;->m_IndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 595
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 619
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 622
    return-void
.end method
