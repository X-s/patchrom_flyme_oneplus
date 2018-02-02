.class public Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;
.super Lcom/oneplus/camera/UIComponent;
.source "MotionVectorPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$1;,
        Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$2;,
        Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$3;,
        Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;,
        Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;
    }
.end annotation


# static fields
.field private static final CIRCLE_RADIUS:F = 8.0f

.field private static final ENABLE_DRAW_CIRCLE:Z = false

.field private static final ENABLE_DRAW_MOTION_STATE:Z = true

.field private static final ENABLE_DRAW_MOTION_VECTOR:Z = false

.field private static final MSG_UPDATE_MOTION_STATE:I = 0x2715

.field private static final MSG_UPDATE_MOTION_VECTORS:I = 0x2711

.field private static final STROKE_WIDTH:F = 4.0f


# instance fields
.field private m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

.field private m_MotionStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_MotionStateHandle:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;

.field private m_MotionVectorsEventHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/MotionVectorEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_MotionVectorsHandle:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;

.field private m_Paint:Landroid/graphics/Paint;

.field private m_PreviewRendererHandle:Lcom/oneplus/base/Handle;

.field private m_Renderer:Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)Lcom/oneplus/base/PropertyChangedCallback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_MotionStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)Lcom/oneplus/base/EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_MotionVectorsEventHandler:Lcom/oneplus/base/EventHandler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;Lcom/oneplus/camera/ui/CameraPreviewOverlay;)Lcom/oneplus/camera/ui/CameraPreviewOverlay;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;Lcom/oneplus/camera/ui/Viewfinder;)Lcom/oneplus/camera/ui/Viewfinder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->onDebugModeChanged()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->onPreviewRenderer(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->updateRenderer()V

    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 124
    const-string/jumbo v0, "Motion Vector Preview Renderer"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 53
    new-instance v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$1;-><init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Renderer:Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;

    .line 64
    new-instance v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$2;-><init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_MotionVectorsEventHandler:Lcom/oneplus/base/EventHandler;

    .line 72
    new-instance v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$3;-><init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_MotionStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 122
    return-void
.end method

.method private getMotionStateText(I)Ljava/lang/String;
    .locals 3
    .param p1, "motionState"    # I

    .prologue
    .line 131
    const-string/jumbo v0, "Motion state: "

    .line 135
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 3
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 164
    .local v0, "isDebugMode":Z
    if-eqz v0, :cond_1

    .line 166
    if-nez p2, :cond_0

    .line 167
    return-void

    .line 168
    :cond_0
    new-instance v1, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;-><init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    invoke-static {p2, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 161
    :cond_1
    return-void
.end method

.method private onDebugModeChanged()V
    .locals 5

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 194
    .local v1, "isDebugMode":Z
    iget-object v2, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onDebugModeChanged() - Debug: "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 196
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 197
    return-void

    .line 198
    :cond_0
    new-instance v2, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$5;

    invoke-direct {v2, p0, v1, v0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$5;-><init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;ZLcom/oneplus/camera/Camera;)V

    invoke-static {v0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 220
    invoke-direct {p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->updateRenderer()V

    .line 190
    return-void
.end method

.method private onPreviewRenderer(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_MotionStateHandle:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_MotionStateHandle:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;

    iget v12, v1, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;->motionState:I

    .line 282
    .local v12, "motionState":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->getMotionStateText(I)Ljava/lang/String;

    move-result-object v13

    .line 283
    .local v13, "motionStateText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    const/high16 v4, 0x42400000    # 48.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 292
    :cond_0
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 293
    .local v16, "textBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    const/high16 v4, -0x10000

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v13, v5, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 295
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/lit16 v4, v4, 0xb4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_MotionStateHandle:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_MotionStateHandle:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;

    .line 302
    .end local v12    # "motionState":I
    .end local v13    # "motionStateText":Ljava/lang/String;
    .end local v16    # "textBounds":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_MotionVectorsHandle:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_MotionVectorsHandle:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;

    iget-object v0, v1, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;->vectors:[[Landroid/graphics/PointF;

    move-object/from16 v18, v0

    .line 305
    .local v18, "vectors":[[Landroid/graphics/PointF;
    if-nez v18, :cond_2

    .line 306
    return-void

    .line 307
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v1, :cond_3

    .line 308
    return-void

    .line 309
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    if-nez v1, :cond_4

    .line 311
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 318
    :cond_4
    move-object/from16 v0, v18

    array-length v15, v0

    .line 319
    .local v15, "rowCounts":I
    if-gtz v15, :cond_5

    .line 320
    return-void

    .line 321
    :cond_5
    const/4 v1, 0x0

    aget-object v1, v18, v1

    array-length v7, v1

    .line 322
    .local v7, "columnCounts":I
    if-gtz v7, :cond_6

    .line 323
    return-void

    .line 324
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v4, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v4}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/RectF;

    .line 325
    .local v14, "previewBounds":Landroid/graphics/RectF;
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v4, v7

    div-float v9, v1, v4

    .line 326
    .local v9, "gridWidth":F
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float v4, v15

    div-float v8, v1, v4

    .line 327
    .local v8, "gridHeight":F
    const/4 v1, 0x0

    cmpg-float v1, v9, v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    cmpg-float v1, v8, v1

    if-gtz v1, :cond_8

    .line 328
    :cond_7
    return-void

    .line 331
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 332
    iget v1, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 335
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v15, :cond_a

    .line 337
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v7, :cond_9

    .line 339
    aget-object v1, v18, v10

    add-int/lit8 v4, v7, -0x1

    sub-int/2addr v4, v11

    aget-object v17, v1, v4

    .line 340
    .local v17, "vector":Landroid/graphics/PointF;
    int-to-float v1, v11

    mul-float/2addr v1, v9

    add-int/lit8 v4, v11, 0x1

    int-to-float v4, v4

    mul-float/2addr v4, v9

    add-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v1, v4

    .line 341
    .local v2, "centerX":F
    int-to-float v1, v10

    mul-float/2addr v1, v8

    add-int/lit8 v4, v10, 0x1

    int-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v3, v1, v4

    .line 358
    .local v3, "centerY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    move-object/from16 v0, v17

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float v4, v2, v1

    move-object/from16 v0, v17

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float v5, v3, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 337
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 335
    .end local v2    # "centerX":F
    .end local v3    # "centerY":F
    .end local v17    # "vector":Landroid/graphics/PointF;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 364
    .end local v11    # "j":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_MotionVectorsHandle:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_MotionVectorsHandle:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;

    .line 276
    .end local v7    # "columnCounts":I
    .end local v8    # "gridHeight":F
    .end local v9    # "gridWidth":F
    .end local v10    # "i":I
    .end local v14    # "previewBounds":Landroid/graphics/RectF;
    .end local v15    # "rowCounts":I
    .end local v18    # "vectors":[[Landroid/graphics/PointF;
    :cond_b
    return-void
.end method

.method private updateMotionState(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_MotionStateHandle:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;

    .line 383
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_PreviewRendererHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-interface {v0}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->invalidateCameraPreviewOverlay()V

    .line 373
    :cond_0
    return-void
.end method

.method private updateMotionVectors(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;

    .prologue
    .line 393
    return-void
.end method

.method private updateRenderer()V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    if-nez v0, :cond_0

    .line 408
    return-void

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    iget-object v1, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_Renderer:Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->addRenderer(Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_PreviewRendererHandle:Lcom/oneplus/base/Handle;

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-interface {v0}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->invalidateCameraPreviewOverlay()V

    .line 405
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_PreviewRendererHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->m_PreviewRendererHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 150
    :sswitch_0
    new-instance v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;-><init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;I)V

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->updateMotionState(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionStateHandle;)V

    goto :goto_0

    .line 154
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->updateMotionVectors(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;)V

    goto :goto_0

    .line 147
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2715 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 229
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 232
    const-class v1, Lcom/oneplus/camera/ui/Viewfinder;

    new-instance v2, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$6;-><init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 240
    const-class v1, Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    new-instance v2, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$7;-><init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 251
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 252
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$8;-><init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 260
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$9;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$9;-><init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 270
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->onDebugModeChanged()V

    .line 226
    :cond_0
    return-void
.end method
