.class final Lcom/oneplus/camera/ui/CameraPreviewGridImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "CameraPreviewGridImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/CameraPreviewGrid;
.implements Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;


# static fields
.field private static final STROKE_WIDTH:F = 2.0f


# instance fields
.field private m_StrokePaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 30
    const-string v0, "Grid"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/CameraPreviewGridImpl;)Lcom/oneplus/camera/Settings;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CameraPreviewGridImpl;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->getSettings()Lcom/oneplus/camera/Settings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/CameraPreviewGridImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CameraPreviewGridImpl;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onInitialize()V
    .locals 5

    .prologue
    .line 39
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 42
    const-class v2, Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    .line 45
    .local v1, "previewOverlay":Lcom/oneplus/camera/ui/CameraPreviewOverlay;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_StrokePaint:Landroid/graphics/Paint;

    .line 46
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_StrokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_StrokePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_StrokePaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    if-eqz v1, :cond_0

    .line 52
    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->addRenderer(Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;I)Lcom/oneplus/base/Handle;

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 56
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/CameraPreviewGridImpl$1;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl$1;-><init>(Lcom/oneplus/camera/ui/CameraPreviewGridImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 67
    sget-object v2, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->getSettings()Lcom/oneplus/camera/Settings;

    move-result-object v3

    const-string v4, "Grid.IsVisible"

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 75
    sget-object v0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p2}, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->getPreviewBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 79
    .local v9, "bounds":Landroid/graphics/RectF;
    iget v0, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v11

    add-float/2addr v0, v1

    sub-float v2, v0, v10

    .line 80
    .local v2, "y":F
    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v3, v9, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_StrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 81
    iget v0, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v12

    div-float/2addr v1, v11

    add-float/2addr v0, v1

    sub-float v2, v0, v10

    .line 82
    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v3, v9, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_StrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    iget v0, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v11

    add-float/2addr v0, v1

    add-float v4, v0, v10

    .line 86
    .local v4, "x":F
    iget v5, v9, Landroid/graphics/RectF;->top:F

    iget v7, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_StrokePaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v6, v4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 87
    iget v0, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v12

    div-float/2addr v1, v11

    add-float/2addr v0, v1

    add-float v4, v0, v10

    .line 88
    iget v5, v9, Landroid/graphics/RectF;->top:F

    iget v7, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_StrokePaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v6, v4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    .end local v2    # "y":F
    .end local v4    # "x":F
    .end local v9    # "bounds":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method
