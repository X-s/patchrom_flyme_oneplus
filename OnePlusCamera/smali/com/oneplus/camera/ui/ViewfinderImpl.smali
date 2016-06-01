.class final Lcom/oneplus/camera/ui/ViewfinderImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "ViewfinderImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/CameraPreviewOverlay;
.implements Lcom/oneplus/camera/ui/Viewfinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/ViewfinderImpl$10;,
        Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;
    }
.end annotation


# static fields
.field private static final MSG_RECREATE_DIRECT_OUTPUT_SURFACE:I = 0x2710

.field private static final USE_TEXTURE_VIEW:Z


# instance fields
.field private m_DirectOutputSurface:Landroid/view/Surface;

.field private m_DirectOutputSurfaceFormat:I

.field private m_DirectOutputSurfaceHolder:Landroid/view/SurfaceHolder;

.field private m_DirectOutputSurfaceSize:Landroid/util/Size;

.field private m_DirectOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

.field private m_DirectOutputTextureView:Landroid/view/TextureView;

.field private m_IsDirectOutputSurfaceCreated:Z

.field private final m_OverlayRendererHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_OverlayView:Landroid/view/View;

.field private m_PreferredBounds:Landroid/graphics/RectF;

.field private m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

.field private m_ScreenSize:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 83
    const-string v0, "Viewfinder"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayRendererHandles:Ljava/util/LinkedList;

    .line 56
    sget-object v0, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->DIRECT:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    .line 57
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    .line 84
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 85
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 86
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_CONTAINER_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->removeRenderer(Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/ViewfinderImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceDestroyed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/camera/ui/ViewfinderImpl;)Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/ui/ViewfinderImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/camera/ui/ViewfinderImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;

    .prologue
    .line 38
    iget v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceFormat:I

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/ViewfinderImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceCreated()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/ViewfinderImpl;III)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceChanged(III)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ui/ViewfinderImpl;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onDrawOverlay(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/camera/ui/ViewfinderImpl;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->initializeUI(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/base/ScreenSize;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;
    .param p1, "x1"    # Lcom/oneplus/base/ScreenSize;
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onScreenSizeChanged(Lcom/oneplus/base/ScreenSize;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/camera/ui/ViewfinderImpl;Landroid/util/Size;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;
    .param p1, "x1"    # Landroid/util/Size;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onPreviewSizeChanged(Landroid/util/Size;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/camera/ui/ViewfinderImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewReceiverState()V

    return-void
.end method

.method private calculatePreviewBounds(Landroid/util/Size;Lcom/oneplus/base/Rotation;Landroid/util/Size;ZLandroid/graphics/RectF;)V
    .locals 15
    .param p1, "containerSize"    # Landroid/util/Size;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;
    .param p3, "previewSize"    # Landroid/util/Size;
    .param p4, "isScreen"    # Z
    .param p5, "result"    # Landroid/graphics/RectF;

    .prologue
    .line 124
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 125
    new-instance v7, Landroid/util/Size;

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-direct {v7, v13, v14}, Landroid/util/Size;-><init>(II)V

    .end local p3    # "previewSize":Landroid/util/Size;
    .local v7, "previewSize":Landroid/util/Size;
    move-object/from16 p3, v7

    .line 128
    .end local v7    # "previewSize":Landroid/util/Size;
    .restart local p3    # "previewSize":Landroid/util/Size;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v9, v13, v14

    .line 129
    .local v9, "ratioX":F
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v10, v13, v14

    .line 130
    .local v10, "ratioY":F
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 131
    .local v8, "ratio":F
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v6, v13

    .line 132
    .local v6, "newPreviewWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v5, v13

    .line 133
    .local v5, "newPreviewHeight":I
    const/4 v4, 0x0

    .line 134
    .local v4, "leftOffset":F
    const/4 v12, 0x0

    .line 135
    .local v12, "topOffset":F
    const/4 v11, 0x0

    .line 136
    .local v11, "rightOffset":F
    const/4 v1, 0x0

    .line 138
    .local v1, "bottomOffset":F
    if-eqz p4, :cond_5

    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    div-int/lit8 v2, v13, 0x3

    .line 143
    .local v2, "centerX":I
    const/4 v13, 0x0

    div-int/lit8 v14, v6, 0x2

    sub-int v14, v2, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p5

    iput v13, v0, Landroid/graphics/RectF;->left:F

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v13

    sub-int/2addr v13, v5

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p5

    iput v13, v0, Landroid/graphics/RectF;->top:F

    .line 145
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->left:F

    int-to-float v14, v6

    add-float/2addr v13, v14

    move-object/from16 v0, p5

    iput v13, v0, Landroid/graphics/RectF;->right:F

    .line 146
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->top:F

    int-to-float v14, v5

    add-float/2addr v13, v14

    move-object/from16 v0, p5

    iput v13, v0, Landroid/graphics/RectF;->bottom:F

    .line 147
    iget-object v13, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    if-eqz v13, :cond_1

    .line 149
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->left:F

    iget-object v14, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    sub-float v4, v13, v14

    .line 150
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->top:F

    iget-object v14, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    sub-float v12, v13, v14

    .line 151
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->right:F

    iget-object v14, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    sub-float v11, v13, v14

    .line 152
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v14, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    sub-float v1, v13, v14

    .line 170
    .end local v2    # "centerX":I
    :cond_1
    :goto_0
    iget-object v13, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    if-eqz v13, :cond_3

    .line 172
    const/4 v13, 0x0

    cmpl-float v13, v4, v13

    if-lez v13, :cond_2

    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-lez v13, :cond_2

    cmpg-float v13, v11, v4

    if-gtz v13, :cond_2

    .line 174
    neg-float v13, v11

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 177
    :cond_2
    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-lez v13, :cond_3

    const/4 v13, 0x0

    cmpl-float v13, v1, v13

    if-lez v13, :cond_3

    cmpg-float v13, v1, v12

    if-gtz v13, :cond_3

    .line 179
    const/4 v13, 0x0

    neg-float v14, v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 190
    :cond_3
    :goto_1
    return-void

    .line 157
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    div-int/lit8 v3, v13, 0x3

    .line 158
    .local v3, "centerY":I
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v13

    sub-int/2addr v13, v6

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p5

    iput v13, v0, Landroid/graphics/RectF;->left:F

    .line 159
    const/4 v13, 0x0

    div-int/lit8 v14, v5, 0x2

    sub-int v14, v3, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p5

    iput v13, v0, Landroid/graphics/RectF;->top:F

    .line 160
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->left:F

    int-to-float v14, v6

    add-float/2addr v13, v14

    move-object/from16 v0, p5

    iput v13, v0, Landroid/graphics/RectF;->right:F

    .line 161
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->top:F

    int-to-float v14, v5

    add-float/2addr v13, v14

    move-object/from16 v0, p5

    iput v13, v0, Landroid/graphics/RectF;->bottom:F

    .line 162
    iget-object v13, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    if-eqz v13, :cond_1

    .line 164
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->left:F

    iget-object v14, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    sub-float v4, v13, v14

    .line 165
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->top:F

    iget-object v14, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    sub-float v12, v13, v14

    .line 166
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->right:F

    iget-object v14, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    sub-float v11, v13, v14

    .line 167
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v14, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v13, v14

    goto/16 :goto_0

    .line 185
    .end local v3    # "centerY":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v13

    sub-int/2addr v13, v6

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p5

    iput v13, v0, Landroid/graphics/RectF;->left:F

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v13

    sub-int/2addr v13, v5

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p5

    iput v13, v0, Landroid/graphics/RectF;->top:F

    .line 187
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->left:F

    int-to-float v14, v6

    add-float/2addr v13, v14

    move-object/from16 v0, p5

    iput v13, v0, Landroid/graphics/RectF;->right:F

    .line 188
    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->top:F

    int-to-float v14, v5

    add-float/2addr v13, v14

    move-object/from16 v0, p5

    iput v13, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method private initializeUI(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    const/4 v2, -0x2

    .line 250
    instance-of v1, p1, Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Activity root layout must be RelativeLayout."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 294
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 297
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 304
    :goto_0
    new-instance v1, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    .line 305
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 306
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 309
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v2, Lcom/oneplus/camera/ui/ViewfinderImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ViewfinderImpl$2;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    move-object v1, p1

    .line 329
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 333
    new-instance v1, Lcom/oneplus/camera/ui/ViewfinderImpl$3;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/camera/ui/ViewfinderImpl$3;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    .line 341
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 342
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 345
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewBounds()V

    .line 346
    return-void

    .line 301
    .restart local p1    # "rootView":Landroid/view/View;
    :cond_2
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 302
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private onDirectOutputSurfaceChanged(III)V
    .locals 6
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 471
    iget-object v3, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDirectOutputSurfaceChanged() - Format : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iput p1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceFormat:I

    .line 475
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    .line 478
    sget-object v3, Lcom/oneplus/camera/ui/ViewfinderImpl$10;->$SwitchMap$com$oneplus$camera$ui$Viewfinder$PreviewRenderingMode:[I

    iget-object v4, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    invoke-virtual {v4}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 495
    :goto_0
    return-void

    .line 482
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 483
    .local v2, "previewSize":Landroid/util/Size;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 484
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 485
    .local v1, "isFixedSizeNeeded":Z
    :goto_1
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v3, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 486
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewReceiverState()V

    goto :goto_0

    .line 484
    .end local v1    # "isFixedSizeNeeded":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 488
    .restart local v1    # "isFixedSizeNeeded":Z
    :cond_3
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updateDirectOutputSurfaceSize(Landroid/util/Size;)V

    goto :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onDirectOutputSurfaceCreated()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string v1, "onDirectOutputSurfaceCreated()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    .line 374
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updateDirectOutputSurfaceSize(Landroid/util/Size;)V

    .line 375
    return-void
.end method

.method private onDirectOutputSurfaceDestroyed()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string v1, "onDirectOutputSurfaceDestroyed()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    .line 358
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 359
    return-void
.end method

.method private onDirectOutputSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 7
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 396
    iget-object v4, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDirectOutputSurfaceTextureChanged() - Size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v4, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    .line 402
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurface:Landroid/view/Surface;

    .line 403
    .local v2, "oldSurface":Landroid/view/Surface;
    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v4, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurface:Landroid/view/Surface;

    .line 406
    sget-object v4, Lcom/oneplus/camera/ui/ViewfinderImpl$10;->$SwitchMap$com$oneplus$camera$ui$Viewfinder$PreviewRenderingMode:[I

    iget-object v5, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 425
    :goto_0
    if-eqz v2, :cond_0

    .line 426
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 427
    :cond_0
    return-void

    .line 410
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 411
    .local v3, "previewSize":Landroid/util/Size;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 412
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_1

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 413
    .local v1, "isFixedSizeNeeded":Z
    :goto_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v4, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 414
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewReceiverState()V

    goto :goto_0

    .line 412
    .end local v1    # "isFixedSizeNeeded":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 416
    .restart local v1    # "isFixedSizeNeeded":Z
    :cond_4
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updateDirectOutputSurfaceSize(Landroid/util/Size;)V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onDirectOutputSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 381
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string v3, "onDirectOutputSurfaceTextureCreated()"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iput-object p1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 383
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    .line 384
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    .line 385
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 386
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updateDirectOutputSurfaceSize(Landroid/util/Size;)V

    .line 390
    :goto_1
    return-void

    .line 386
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string v2, "onDirectOutputSurfaceTextureCreated() - Configuration orientation is incorrect, update surface txture later"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onDirectOutputSurfaceTextureDestroyed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string v1, "onDirectOutputSurfaceTextureDestroyed()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iput-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    .line 436
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 440
    iput-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurface:Landroid/view/Surface;

    .line 442
    :cond_0
    return-void
.end method

.method private onDrawOverlay(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 448
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayRendererHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 450
    sget-object v2, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->obtain(Landroid/graphics/RectF;)Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    move-result-object v1

    .line 451
    .local v1, "params":Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayRendererHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 452
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayRendererHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;

    iget-object v2, v2, Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;->renderer:Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;

    invoke-interface {v2, p1, v1}, Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;->onRender(Landroid/graphics/Canvas;Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;)V

    .line 451
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->recycle()V

    .line 455
    .end local v0    # "i":I
    .end local v1    # "params":Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
    :cond_1
    return-void
.end method

.method private onPreviewSizeChanged(Landroid/util/Size;)V
    .locals 2
    .param p1, "previewSize"    # Landroid/util/Size;

    .prologue
    .line 647
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 650
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewSizeChanged() - Change surface view to visible"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 657
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updateDirectOutputSurfaceSize(Landroid/util/Size;)V

    .line 660
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewBounds(Landroid/util/Size;)V

    .line 661
    return-void
.end method

.method private onScreenSizeChanged(Lcom/oneplus/base/ScreenSize;Z)V
    .locals 4
    .param p1, "screenSize"    # Lcom/oneplus/base/ScreenSize;
    .param p2, "isInit"    # Z

    .prologue
    .line 668
    if-nez p2, :cond_0

    .line 669
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenSizeChanged() - Changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/base/ScreenSize;->toSize()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    .line 676
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    .line 680
    .local v0, "containerSize":Landroid/util/Size;
    :goto_0
    sget-object v1, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_CONTAINER_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 683
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewBounds()V

    .line 684
    return-void

    .line 679
    .end local v0    # "containerSize":Landroid/util/Size;
    :cond_1
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .restart local v0    # "containerSize":Landroid/util/Size;
    goto :goto_0
.end method

.method private recreateDirectOutputSurface()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string v1, "recreateDirectOutputSurface()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 819
    :cond_0
    return-void
.end method

.method private removeRenderer(Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->verifyAccess()V

    .line 827
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayRendererHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private updateDirectOutputSurfaceSize(Landroid/util/Size;)V
    .locals 5
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 839
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-lez v2, :cond_3

    .line 841
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 842
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v1, 0x1

    .line 864
    .local v1, "isFixedSizeNeeded":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_1

    .line 865
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 866
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v2, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 867
    :cond_2
    iget v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceFormat:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceChanged(III)V

    .line 870
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v1    # "isFixedSizeNeeded":Z
    :cond_3
    return-void

    .line 842
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateDirectOutputSurfaceTrxtureTransform(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 876
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 877
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 878
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 879
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 880
    return-void
.end method

.method private updatePreviewBounds()V
    .locals 2

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewBounds(Landroid/util/Size;)V

    .line 887
    return-void
.end method

.method private updatePreviewBounds(Landroid/util/Size;)V
    .locals 9
    .param p1, "previewSize"    # Landroid/util/Size;

    .prologue
    .line 891
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 896
    .local v5, "previewBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/ui/ViewfinderImpl;->calculatePreviewBounds(Landroid/util/Size;Lcom/oneplus/base/Rotation;Landroid/util/Size;ZLandroid/graphics/RectF;)V

    .line 899
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_4

    .line 900
    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updateDirectOutputSurfaceTrxtureTransform(Landroid/graphics/RectF;)V

    .line 912
    :cond_2
    :goto_1
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 915
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 916
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 919
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->DIRECT:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 926
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v8

    .line 927
    .local v8, "previewWidth":I
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 934
    .local v7, "previewHeight":I
    :goto_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 937
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string v1, "updatePreviewBounds() - Target size is same as current surface size"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceFormat:I

    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceChanged(III)V

    goto :goto_0

    .line 901
    .end local v7    # "previewHeight":I
    .end local v8    # "previewWidth":I
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 903
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 904
    .local v6, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 905
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 906
    iget v0, v5, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 907
    iget v0, v5, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 908
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    goto/16 :goto_1

    .line 931
    .end local v6    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 932
    .restart local v8    # "previewWidth":I
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v7

    .restart local v7    # "previewHeight":I
    goto :goto_2
.end method

.method private updatePreviewReceiverState()V
    .locals 7

    .prologue
    .line 951
    const/4 v2, 0x1

    .line 952
    .local v2, "isReceiverReady":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 953
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v6, Lcom/oneplus/camera/ui/ViewfinderImpl$10;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v5}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 959
    :pswitch_0
    const/4 v2, 0x0

    .line 964
    :pswitch_1
    const/4 v4, 0x0

    .line 965
    .local v4, "receiver":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 966
    .local v3, "previewSize":Landroid/util/Size;
    sget-object v5, Lcom/oneplus/camera/ui/ViewfinderImpl$10;->$SwitchMap$com$oneplus$camera$ui$Viewfinder$PreviewRenderingMode:[I

    iget-object v6, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    invoke-virtual {v6}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 989
    .end local v4    # "receiver":Ljava/lang/Object;
    :goto_0
    if-eqz v2, :cond_0

    .line 991
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 993
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 994
    const/4 v2, 0x0

    .line 1004
    :cond_0
    :goto_1
    if-eqz v2, :cond_5

    .line 1005
    sget-object v5, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v4}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1008
    :goto_2
    return-void

    .line 969
    .restart local v4    # "receiver":Ljava/lang/Object;
    :pswitch_2
    iget-boolean v5, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    if-nez v5, :cond_2

    .line 970
    const/4 v2, 0x0

    .line 980
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 981
    .local v4, "receiver":Landroid/view/SurfaceHolder;
    goto :goto_0

    .line 973
    .local v4, "receiver":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 974
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_3

    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v5}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 976
    :cond_3
    iget-object v5, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v5, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 977
    const/4 v2, 0x0

    goto :goto_3

    .line 984
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :pswitch_3
    const/4 v4, 0x0

    goto :goto_0

    .line 998
    .end local v4    # "receiver":Ljava/lang/Object;
    :cond_4
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 999
    const/4 v2, 0x0

    goto :goto_1

    .line 1007
    :cond_5
    sget-object v5, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 953
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 966
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addRenderer(Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;I)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "renderer"    # Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->verifyAccess()V

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string v2, "addRenderer() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 103
    :cond_1
    if-nez p1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string v2, "addRenderer() - No renderer to add"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_2
    new-instance v0, Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;)V

    .line 111
    .local v0, "handle":Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayRendererHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public copyDisplayPreviewFrame(Landroid/graphics/Bitmap;I)Z
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->verifyAccess()V

    .line 199
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputTextureView:Landroid/view/TextureView;

    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string v2, "copyPreviewFrame() - No direct output TextureView"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    return v0

    .line 204
    :cond_0
    if-nez p1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string v2, "copyPreviewFrame() - No bitmap to receive preview frame"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 212
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_IS_DISPLAY_PREVIEW_FRAME_COPY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 222
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    .line 223
    :cond_0
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RENDERING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    goto :goto_0

    .line 225
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 240
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 243
    :goto_0
    return-void

    .line 236
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->recreateDirectOutputSurface()V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public invalidateCameraPreviewOverlay()V
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->verifyAccess()V

    .line 463
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 465
    :cond_0
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 503
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 509
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 510
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 511
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 512
    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->initializeUI(Landroid/view/View;)V

    .line 542
    :goto_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ViewfinderImpl$5;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ViewfinderImpl$5;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 557
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ViewfinderImpl$6;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ViewfinderImpl$6;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 565
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/ScreenSize;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onScreenSizeChanged(Lcom/oneplus/base/ScreenSize;Z)V

    .line 568
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ViewfinderImpl$7;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ViewfinderImpl$7;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 578
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ViewfinderImpl$8;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ViewfinderImpl$8;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 586
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ViewfinderImpl$9;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ViewfinderImpl$9;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 640
    return-void

    .line 515
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ViewfinderImpl$4;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ViewfinderImpl$4;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0
.end method

.method public pointFromPreview(FFLandroid/graphics/PointF;I)Z
    .locals 11
    .param p1, "previewX"    # F
    .param p2, "previewY"    # F
    .param p3, "result"    # Landroid/graphics/PointF;
    .param p4, "flags"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 693
    if-nez p3, :cond_1

    .line 747
    :cond_0
    :goto_0
    return v7

    .line 695
    :cond_1
    and-int/lit8 v8, p4, 0x1

    if-nez v8, :cond_2

    .line 697
    cmpg-float v8, p1, v9

    if-ltz v8, :cond_0

    cmpl-float v8, p1, v10

    if-gtz v8, :cond_0

    cmpg-float v8, p2, v9

    if-ltz v8, :cond_0

    cmpl-float v8, p2, v10

    if-gtz v8, :cond_0

    .line 702
    :cond_2
    sget-object v7, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/ui/ViewfinderImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    .line 704
    .local v4, "previewBounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 706
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 707
    .local v1, "containerWidth":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 716
    .local v0, "containerHeight":F
    :goto_1
    mul-float v5, v1, p1

    .line 717
    .local v5, "x":F
    mul-float v6, v0, p2

    .line 720
    .local v6, "y":F
    sget-object v7, Lcom/oneplus/camera/ui/ViewfinderImpl$10;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 745
    :goto_2
    iget v7, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v5

    iput v7, p3, Landroid/graphics/PointF;->x:F

    .line 746
    iget v7, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v6

    iput v7, p3, Landroid/graphics/PointF;->y:F

    .line 747
    const/4 v7, 0x1

    goto :goto_0

    .line 711
    .end local v0    # "containerHeight":F
    .end local v1    # "containerWidth":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 712
    .restart local v1    # "containerWidth":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    .restart local v0    # "containerHeight":F
    goto :goto_1

    .line 724
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :pswitch_0
    sub-float v2, v0, v6

    .line 725
    .local v2, "newX":F
    move v6, v5

    .line 726
    move v5, v2

    .line 727
    goto :goto_2

    .line 731
    .end local v2    # "newX":F
    :pswitch_1
    sub-float v3, v1, v5

    .line 732
    .local v3, "newY":F
    move v5, v6

    .line 733
    move v6, v3

    .line 734
    goto :goto_2

    .line 738
    .end local v3    # "newY":F
    :pswitch_2
    sub-float v5, v1, v5

    .line 739
    sub-float v6, v0, v6

    goto :goto_2

    .line 720
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pointToPreview(FFLandroid/graphics/PointF;I)Z
    .locals 7
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F
    .param p3, "result"    # Landroid/graphics/PointF;
    .param p4, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 757
    if-nez p3, :cond_1

    .line 805
    :cond_0
    :goto_0
    return v5

    .line 761
    :cond_1
    sget-object v6, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/ViewfinderImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    .line 762
    .local v4, "previewBounds":Landroid/graphics/RectF;
    and-int/lit8 v6, p4, 0x1

    if-nez v6, :cond_2

    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 766
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 767
    .local v1, "containerWidth":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 768
    .local v0, "containerHeight":F
    iget v5, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v5

    .line 769
    iget v5, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v5

    .line 770
    sget-object v5, Lcom/oneplus/camera/ui/ViewfinderImpl$10;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 795
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 797
    div-float v5, p1, v1

    iput v5, p3, Landroid/graphics/PointF;->x:F

    .line 798
    div-float v5, p2, v0

    iput v5, p3, Landroid/graphics/PointF;->y:F

    .line 805
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    .line 774
    :pswitch_0
    sub-float v3, v1, p1

    .line 775
    .local v3, "newY":F
    move p1, p2

    .line 776
    move p2, v3

    .line 777
    goto :goto_1

    .line 781
    .end local v3    # "newY":F
    :pswitch_1
    sub-float v2, v0, p2

    .line 782
    .local v2, "newX":F
    move p2, p1

    .line 783
    move p1, v2

    .line 784
    goto :goto_1

    .line 788
    .end local v2    # "newX":F
    :pswitch_2
    sub-float p1, v1, p1

    .line 789
    sub-float p2, v0, p2

    goto :goto_1

    .line 802
    :cond_3
    div-float v5, p1, v0

    iput v5, p3, Landroid/graphics/PointF;->x:F

    .line 803
    div-float v5, p2, v1

    iput v5, p3, Landroid/graphics/PointF;->y:F

    goto :goto_2

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPreferredPreviewBounds(Landroid/graphics/RectF;I)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "flags"    # I

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    .line 1014
    return-void
.end method
