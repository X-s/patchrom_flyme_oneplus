.class final Lcom/oneplus/camera/ui/CameraPreviewGridImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "CameraPreviewGridImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/CameraPreviewGrid;
.implements Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;


# static fields
.field private static final STROKE_WIDTH:F = 20.0f


# instance fields
.field private m_HorizontalDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private m_VerticalDrawable:Landroid/graphics/drawable/NinePatchDrawable;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/ui/CameraPreviewGridImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/CameraPreviewGridImpl;)Lcom/oneplus/base/Settings;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 32
    const-string/jumbo v0, "Grid"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onInitialize()V
    .locals 5

    .prologue
    .line 41
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 44
    const-class v2, Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    .line 47
    .local v1, "previewOverlay":Lcom/oneplus/camera/ui/CameraPreviewOverlay;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 48
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_HorizontalDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 49
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_VerticalDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 52
    if-eqz v1, :cond_0

    .line 53
    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->addRenderer(Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;I)Lcom/oneplus/base/Handle;

    .line 56
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/CameraPreviewGridImpl$1;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl$1;-><init>(Lcom/oneplus/camera/ui/CameraPreviewGridImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 67
    sget-object v2, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v3

    const-string/jumbo v4, "Grid.IsVisible"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v9, 0x41200000    # 10.0f

    .line 75
    sget-object v3, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {p2}, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->getPreviewBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 79
    .local v0, "bounds":Landroid/graphics/RectF;
    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    sub-float v2, v3, v9

    .line 80
    .local v2, "y":F
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_HorizontalDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    float-to-int v6, v2

    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    add-float v8, v2, v9

    float-to-int v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 81
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_HorizontalDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 83
    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v11

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    sub-float v2, v3, v9

    .line 84
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_HorizontalDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    float-to-int v6, v2

    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    add-float v8, v2, v9

    float-to-int v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 85
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_HorizontalDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    add-float v1, v3, v9

    .line 89
    .local v1, "x":F
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_VerticalDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    float-to-int v5, v1

    iget v6, v0, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    add-float v7, v1, v9

    float-to-int v7, v7

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_VerticalDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v11

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    add-float v1, v3, v9

    .line 93
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_VerticalDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    float-to-int v5, v1

    iget v6, v0, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    add-float v7, v1, v9

    float-to-int v7, v7

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 94
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->m_VerticalDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    .end local v0    # "bounds":Landroid/graphics/RectF;
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    return-void
.end method
