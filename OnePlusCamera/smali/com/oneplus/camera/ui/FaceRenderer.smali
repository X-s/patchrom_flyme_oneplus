.class final Lcom/oneplus/camera/ui/FaceRenderer;
.super Lcom/oneplus/camera/UIComponent;
.source "FaceRenderer.java"

# interfaces
.implements Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final DURATION_FACE_FRAME_VISIBLE:J = 0xbb8L

.field private static final FACE_FRAME_MOVE_SPEED:F = 0.5f

.field private static final FACE_FRAME_MOVE_SPEED_FAST:F = 0.7f

.field private static final FACE_FRAME_SCALE:F = 1.3f

.field private static final THRESHOLD_MOVE_FACE_FASTER:F = 0.2f

.field private static final THRESHOLD_STOP_MOVING_FACE:F = 0.01f


# instance fields
.field private m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

.field private final m_CurrentFaceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_FacePaint:Landroid/graphics/Paint;

.field private m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

.field private final m_FreeFaceInfos:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/FaceRenderer;)Lcom/oneplus/camera/CameraActivity;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/FaceRenderer;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/FaceRenderer;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/FaceRenderer;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/FaceRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/FaceRenderer;->clearFaces()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/FaceRenderer;Ljava/util/List;)V
    .locals 0
    .param p1, "faces"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FaceRenderer;->onFacesChanged(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 61
    const-string/jumbo v0, "Face renderer"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FreeFaceInfos:Ljava/util/Queue;

    .line 59
    return-void
.end method

.method private clearFaces()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 72
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;

    .line 73
    .local v0, "faceInfo":Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;
    iput-object v3, v0, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->face:Lcom/oneplus/camera/Camera$Face;

    .line 74
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FreeFaceInfos:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 76
    .end local v0    # "faceInfo":Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 77
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_PreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_PreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-interface {v2}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->invalidateCameraPreviewOverlay()V

    .line 66
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private drawFace(Landroid/graphics/Canvas;Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;JZ)Z
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
    .param p3, "faceInfo"    # Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;
    .param p4, "currentTime"    # J
    .param p6, "mirror"    # Z

    .prologue
    .line 87
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->startTime:J

    move-wide/from16 v22, v0

    sub-long v22, p4, v22

    const-wide/16 v24, 0xbb8

    cmp-long v2, v22, v24

    if-lez v2, :cond_0

    .line 88
    const/4 v2, 0x0

    return v2

    .line 91
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FacePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_1

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/FaceRenderer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 94
    .local v16, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FacePaint:Landroid/graphics/Paint;

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FacePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FacePaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FacePaint:Landroid/graphics/Paint;

    const v7, 0x7f0900a8

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FacePaint:Landroid/graphics/Paint;

    const v7, 0x7f080001

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    .end local v16    # "res":Landroid/content/res/Resources;
    :cond_1
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->currentBounds:Landroid/graphics/RectF;

    .line 103
    .local v9, "currentBounds":Landroid/graphics/RectF;
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->face:Lcom/oneplus/camera/Camera$Face;

    invoke-virtual {v2}, Lcom/oneplus/camera/Camera$Face;->getBounds()Landroid/graphics/RectF;

    move-result-object v18

    .line 104
    .local v18, "targetBounds":Landroid/graphics/RectF;
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->getPreviewBounds()Landroid/graphics/RectF;

    move-result-object v15

    .line 109
    .local v15, "previewBounds":Landroid/graphics/RectF;
    const/4 v12, 0x0

    .line 110
    .local v12, "needUpdate":Z
    invoke-virtual {v9}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 112
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v7, v9, Landroid/graphics/RectF;->left:F

    sub-float v11, v2, v7

    .line 113
    .local v11, "leftDiff":F
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v7, v9, Landroid/graphics/RectF;->top:F

    sub-float v19, v2, v7

    .line 114
    .local v19, "topDiff":F
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v7, v9, Landroid/graphics/RectF;->right:F

    sub-float v17, v2, v7

    .line 115
    .local v17, "rightDiff":F
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v7, v9, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v2, v7

    .line 116
    .local v8, "bottomDiff":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_2

    .line 117
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v7

    if-lez v2, :cond_4

    .line 121
    :cond_2
    const/4 v12, 0x1

    .line 122
    iget v7, v9, Landroid/graphics/RectF;->left:F

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v11, v2

    if-gez v2, :cond_5

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_0
    mul-float/2addr v2, v11

    add-float/2addr v2, v7

    iput v2, v9, Landroid/graphics/RectF;->left:F

    .line 123
    iget v7, v9, Landroid/graphics/RectF;->top:F

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v19, v2

    if-gez v2, :cond_6

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_1
    mul-float v2, v2, v19

    add-float/2addr v2, v7

    iput v2, v9, Landroid/graphics/RectF;->top:F

    .line 124
    iget v7, v9, Landroid/graphics/RectF;->right:F

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v17, v2

    if-gez v2, :cond_7

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_2
    mul-float v2, v2, v17

    add-float/2addr v2, v7

    iput v2, v9, Landroid/graphics/RectF;->right:F

    .line 125
    iget v7, v9, Landroid/graphics/RectF;->bottom:F

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_8

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_3
    mul-float/2addr v2, v8

    add-float/2addr v2, v7

    iput v2, v9, Landroid/graphics/RectF;->bottom:F

    .line 134
    .end local v8    # "bottomDiff":F
    .end local v11    # "leftDiff":F
    .end local v17    # "rightDiff":F
    .end local v19    # "topDiff":F
    :goto_4
    invoke-static {}, Lcom/oneplus/camera/ui/FaceRenderer;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/FaceRenderer;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v7

    aget v2, v2, v7

    packed-switch v2, :pswitch_data_0

    .line 143
    iget v3, v9, Landroid/graphics/RectF;->left:F

    .line 144
    .local v3, "left":F
    iget v4, v9, Landroid/graphics/RectF;->top:F

    .line 145
    .local v4, "top":F
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v20

    .line 146
    .local v20, "width":F
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v10

    .line 149
    .local v10, "height":F
    :goto_5
    iget v2, v15, Landroid/graphics/RectF;->left:F

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v7, v3

    add-float v3, v2, v7

    .line 150
    iget v2, v15, Landroid/graphics/RectF;->top:F

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v4

    add-float v4, v2, v7

    .line 151
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v20

    add-float v5, v3, v2

    .line 152
    .local v5, "right":F
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v10

    add-float v6, v4, v2

    .line 155
    .local v6, "bottom":F
    if-eqz p6, :cond_3

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/FaceRenderer;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 159
    iget v2, v15, Landroid/graphics/RectF;->top:F

    iget v7, v15, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v6

    add-float v4, v2, v7

    .line 160
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v10

    add-float v6, v4, v2

    .line 170
    :cond_3
    :goto_6
    sub-float v2, v5, v3

    const v7, 0x3e999998    # 0.29999995f

    mul-float/2addr v2, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v13, v2, v7

    .line 171
    .local v13, "paddingX":F
    sub-float v2, v6, v4

    const v7, 0x3e999998    # 0.29999995f

    mul-float/2addr v2, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v14, v2, v7

    .line 172
    .local v14, "paddingY":F
    sub-float/2addr v3, v13

    .line 173
    sub-float/2addr v4, v14

    .line 174
    add-float/2addr v5, v13

    .line 175
    add-float/2addr v6, v14

    .line 178
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FacePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 181
    return v12

    .line 118
    .end local v3    # "left":F
    .end local v4    # "top":F
    .end local v5    # "right":F
    .end local v6    # "bottom":F
    .end local v10    # "height":F
    .end local v13    # "paddingX":F
    .end local v14    # "paddingY":F
    .end local v20    # "width":F
    .restart local v8    # "bottomDiff":F
    .restart local v11    # "leftDiff":F
    .restart local v17    # "rightDiff":F
    .restart local v19    # "topDiff":F
    :cond_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_2

    .line 119
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_2

    .line 128
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_4

    .line 122
    :cond_5
    const v2, 0x3f333333    # 0.7f

    goto/16 :goto_0

    .line 123
    :cond_6
    const v2, 0x3f333333    # 0.7f

    goto/16 :goto_1

    .line 124
    :cond_7
    const v2, 0x3f333333    # 0.7f

    goto/16 :goto_2

    .line 125
    :cond_8
    const v2, 0x3f333333    # 0.7f

    goto/16 :goto_3

    .line 131
    .end local v8    # "bottomDiff":F
    .end local v11    # "leftDiff":F
    .end local v17    # "rightDiff":F
    .end local v19    # "topDiff":F
    :cond_9
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_4

    .line 137
    :pswitch_0
    iget v2, v9, Landroid/graphics/RectF;->bottom:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v3, v7, v2

    .line 138
    .restart local v3    # "left":F
    iget v4, v9, Landroid/graphics/RectF;->left:F

    .line 139
    .restart local v4    # "top":F
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v20

    .line 140
    .restart local v20    # "width":F
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v10

    .restart local v10    # "height":F
    goto/16 :goto_5

    .line 164
    .restart local v5    # "right":F
    .restart local v6    # "bottom":F
    :cond_a
    iget v2, v15, Landroid/graphics/RectF;->left:F

    iget v7, v15, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v5

    add-float v3, v2, v7

    .line 165
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v20

    add-float v5, v3, v2

    goto :goto_6

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onFacesChanged(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$Face;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "faces":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    const/4 v12, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FaceRenderer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 190
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 191
    sget-object v10, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v10}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 192
    sget-object v10, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v10}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 190
    if-nez v10, :cond_0

    .line 193
    sget-object v10, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v10}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 190
    if-eqz v10, :cond_1

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FaceRenderer;->clearFaces()V

    .line 196
    return-void

    .line 200
    :cond_1
    iget-object v10, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_5

    .line 202
    iget-object v10, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;

    .line 203
    .local v3, "faceInfo":Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;
    const/4 v5, 0x0

    .line 204
    .local v5, "isKnownFace":Z
    iget-object v10, v3, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->face:Lcom/oneplus/camera/Camera$Face;

    invoke-virtual {v10}, Lcom/oneplus/camera/Camera$Face;->getId()I

    move-result v10

    if-ltz v10, :cond_2

    .line 206
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .local v7, "j":I
    :goto_1
    if-ltz v7, :cond_2

    .line 208
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$Face;

    .line 209
    .local v1, "face":Lcom/oneplus/camera/Camera$Face;
    iget-object v10, v3, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->face:Lcom/oneplus/camera/Camera$Face;

    invoke-virtual {v10}, Lcom/oneplus/camera/Camera$Face;->getId()I

    move-result v10

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$Face;->getId()I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 211
    iput-object v1, v3, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->face:Lcom/oneplus/camera/Camera$Face;

    .line 212
    const/4 v5, 0x1

    .line 217
    .end local v1    # "face":Lcom/oneplus/camera/Camera$Face;
    .end local v7    # "j":I
    :cond_2
    if-nez v5, :cond_3

    .line 219
    iput-object v12, v3, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->face:Lcom/oneplus/camera/Camera$Face;

    .line 220
    iget-object v10, v3, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->currentBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->setEmpty()V

    .line 221
    iget-object v10, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 222
    iget-object v10, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FreeFaceInfos:Ljava/util/Queue;

    invoke-interface {v10, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 206
    .restart local v1    # "face":Lcom/oneplus/camera/Camera$Face;
    .restart local v7    # "j":I
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 225
    .end local v1    # "face":Lcom/oneplus/camera/Camera$Face;
    .end local v3    # "faceInfo":Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;
    .end local v5    # "isKnownFace":Z
    .end local v7    # "j":I
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 226
    .local v8, "time":J
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    :goto_2
    if-ltz v4, :cond_a

    .line 228
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$Face;

    .line 229
    .restart local v1    # "face":Lcom/oneplus/camera/Camera$Face;
    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$Face;->getId()I

    move-result v2

    .line 230
    .local v2, "faceId":I
    const/4 v6, 0x1

    .line 231
    .local v6, "isNewFace":Z
    if-ltz v2, :cond_6

    .line 233
    iget-object v10, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .restart local v7    # "j":I
    :goto_3
    if-ltz v7, :cond_6

    .line 235
    iget-object v10, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;

    .line 236
    .restart local v3    # "faceInfo":Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;
    iget-object v10, v3, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->face:Lcom/oneplus/camera/Camera$Face;

    invoke-virtual {v10}, Lcom/oneplus/camera/Camera$Face;->getId()I

    move-result v10

    if-ne v10, v2, :cond_8

    .line 238
    const/4 v6, 0x0

    .line 243
    .end local v3    # "faceInfo":Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;
    .end local v7    # "j":I
    :cond_6
    if-eqz v6, :cond_7

    .line 245
    iget-object v10, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FreeFaceInfos:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FreeFaceInfos:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;

    move-object v3, v10

    .line 246
    .restart local v3    # "faceInfo":Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;
    :goto_4
    iput-object v1, v3, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->face:Lcom/oneplus/camera/Camera$Face;

    .line 247
    iget-object v10, v3, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->currentBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->setEmpty()V

    .line 248
    iput-wide v8, v3, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->startTime:J

    .line 249
    iget-object v10, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v3    # "faceInfo":Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 233
    .restart local v3    # "faceInfo":Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;
    .restart local v7    # "j":I
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 245
    .end local v3    # "faceInfo":Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;
    .end local v7    # "j":I
    :cond_9
    new-instance v3, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;

    invoke-direct {v3, v12}, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;-><init>(Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;)V

    goto :goto_4

    .line 252
    .end local v1    # "face":Lcom/oneplus/camera/Camera$Face;
    .end local v2    # "faceId":I
    .end local v6    # "isNewFace":Z
    :cond_a
    iget-object v10, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_PreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    if-eqz v10, :cond_b

    .line 253
    iget-object v10, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_PreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-interface {v10}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->invalidateCameraPreviewOverlay()V

    .line 186
    :cond_b
    return-void
.end method


# virtual methods
.method protected onInitialize()V
    .locals 3

    .prologue
    .line 262
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 265
    const-class v0, Lcom/oneplus/camera/FaceTracker;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/FaceRenderer;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FaceTracker;

    iput-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    .line 266
    const-class v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/FaceRenderer;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    iput-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_PreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    .line 269
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_PreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_PreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->addRenderer(Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;I)Lcom/oneplus/base/Handle;

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FaceRenderer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    .line 274
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/FaceRenderer$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/FaceRenderer$1;-><init>(Lcom/oneplus/camera/ui/FaceRenderer;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 283
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/FaceRenderer$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/FaceRenderer$2;-><init>(Lcom/oneplus/camera/ui/FaceRenderer;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 292
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/FaceRenderer$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/FaceRenderer$3;-><init>(Lcom/oneplus/camera/ui/FaceRenderer;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 301
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/FaceRenderer$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/FaceRenderer$4;-><init>(Lcom/oneplus/camera/ui/FaceRenderer;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 310
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/FaceRenderer$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/FaceRenderer$5;-><init>(Lcom/oneplus/camera/ui/FaceRenderer;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 319
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    sget-object v1, Lcom/oneplus/camera/FaceTracker;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/FaceRenderer$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/FaceRenderer$6;-><init>(Lcom/oneplus/camera/ui/FaceRenderer;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/FaceTracker;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 259
    :cond_1
    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    return-void

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 344
    invoke-virtual {p2}, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->getPreviewBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 349
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FaceRenderer;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v7

    .line 350
    .local v7, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v7, :cond_1

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v0, v1, :cond_1

    const/4 v6, 0x1

    .line 351
    .local v6, "mirror":Z
    :goto_0
    const/4 v9, 0x0

    .line 352
    .local v9, "needUpdate":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 353
    .local v4, "currentTime":J
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .end local v9    # "needUpdate":Z
    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_2

    .line 354
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_CurrentFaceInfos:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/ui/FaceRenderer;->drawFace(Landroid/graphics/Canvas;Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;JZ)Z

    move-result v0

    or-int/2addr v9, v0

    .line 353
    .local v9, "needUpdate":Z
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 350
    .end local v4    # "currentTime":J
    .end local v6    # "mirror":Z
    .end local v8    # "i":I
    .end local v9    # "needUpdate":Z
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "mirror":Z
    goto :goto_0

    .line 355
    .restart local v4    # "currentTime":J
    .restart local v8    # "i":I
    :cond_2
    if-eqz v9, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_PreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    if-eqz v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer;->m_PreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-interface {v0}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->invalidateCameraPreviewOverlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 336
    return-void

    .line 359
    .end local v4    # "currentTime":J
    .end local v6    # "mirror":Z
    .end local v7    # "camera":Lcom/oneplus/camera/Camera;
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    .line 360
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 359
    throw v0
.end method
