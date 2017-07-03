.class public final Lcom/oneplus/gallery/editor/DrawingEditorMode;
.super Lcom/oneplus/gallery/editor/BaseEditorMode;
.source "DrawingEditorMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/editor/DrawingEditorMode$5;,
        Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;,
        Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;
    }
.end annotation


# static fields
.field private static final DISABLE_ALL_GESTURES_FLAGS:I

.field private static final DRAWING_COLORS:[I

.field private static final DRAWING_MOSAIC_SIZE_RATIO:F = 0.02f

.field private static final DRAWING_THICKNESS_RATIO:F = 0.0125f

.field private static final DRAWING_THICKNESS_RATIO_MOSAIC:F = 2.0f

.field private static final DURATION_SHOW_CONTROL_UI_DELAY:J = 0x1f4L

.field private static final ENABLE_MOVING_BUTTON:Z = true

.field private static final ENABLE_SCALING:Z = false

.field private static final FIRST_DRAWING_COLOR_INDEX:I = 0x1

.field private static final INTERVAL_UPDATE_OVERLAYS:J = 0x1eL

.field private static final MOVING_BUTTON_INDEX:I = -0x1


# instance fields
.field private final m_DrawingColorButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m_DrawingColorIndex:I

.field private m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

.field private m_DrawingThickness:F

.field private m_IgnorePreviewTouchEvent:Z

.field private m_LastDrawingColorIndex:I

.field private m_LastOverlaysUpdateTime:J

.field private m_Mode:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

.field private m_MosaicSize:I

.field private final m_ShowControlUIRunnable:Ljava/lang/Runnable;

.field private final m_TempDestPoint:Landroid/graphics/PointF;

.field private final m_TempSrcPoint:Landroid/graphics/PointF;

.field private m_ToggleModeButton:Landroid/view/View;

.field private m_UndoDrawingButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xf8

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 42
    sget v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAG_GESTURE_DOUBLE_TAP_SCALE:I

    sget v1, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAG_GESTURE_MULTIPLE_FINGERS_SCALE:I

    or-int/2addr v0, v1

    sget v1, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAG_GESTURE_MULTIPLE_FINGERS_SCROLL:I

    or-int/2addr v0, v1

    sget v1, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAG_GESTURE_ONE_FINGER_SCROLL:I

    or-int/2addr v0, v1

    sput v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->DISABLE_ALL_GESTURES_FLAGS:I

    .line 46
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/16 v1, 0xff

    const/16 v2, 0xeb

    const/16 v3, 0x35

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/4 v1, 0x1

    const/16 v2, 0x5d

    const/16 v3, 0x21

    invoke-static {v7, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xdf

    const/16 v3, 0x2d

    const/16 v4, 0x26

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x34

    const/16 v3, 0xb4

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x4

    const/16 v2, 0x47

    const/16 v3, 0x6b

    const/16 v4, 0xd9

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x24

    const/16 v3, 0xaa

    invoke-static {v2, v3, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xa8

    const/16 v3, 0x93

    invoke-static {v6, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x2a

    const/16 v3, 0x99

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->DRAWING_COLORS:[I

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/BaseEditorMode;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    .line 72
    sget-object v0, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->DRAWING:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    iput-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    .line 74
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_TempDestPoint:Landroid/graphics/PointF;

    .line 75
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_TempSrcPoint:Landroid/graphics/PointF;

    .line 81
    new-instance v0, Lcom/oneplus/gallery/editor/DrawingEditorMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode$1;-><init>(Lcom/oneplus/gallery/editor/DrawingEditorMode;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_ShowControlUIRunnable:Ljava/lang/Runnable;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/editor/DrawingEditorMode;)Lcom/oneplus/gallery/editor/PhotoEditorDrawing;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/DrawingEditorMode;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/editor/DrawingEditorMode;)Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/DrawingEditorMode;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/editor/DrawingEditorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/DrawingEditorMode;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->toggleMode()V

    return-void
.end method

.method static synthetic access$302(Lcom/oneplus/gallery/editor/DrawingEditorMode;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/DrawingEditorMode;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/editor/DrawingEditorMode;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/DrawingEditorMode;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/editor/DrawingEditorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/DrawingEditorMode;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->updateDrawingButtonsSelection()V

    return-void
.end method

.method private toggleMode()V
    .locals 2

    .prologue
    .line 544
    sget-object v0, Lcom/oneplus/gallery/editor/DrawingEditorMode$5;->$SwitchMap$com$oneplus$gallery$editor$DrawingEditorMode$Mode:[I

    iget-object v1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    invoke-virtual {v1}, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 574
    :goto_0
    return-void

    .line 549
    :pswitch_0
    sget-object v0, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->MOVING:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    iput-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    .line 552
    iget v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    iput v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_LastDrawingColorIndex:I

    .line 553
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    .line 554
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->updateDrawingButtonsSelection()V

    .line 557
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->enablePreviewImageGesture()V

    goto :goto_0

    .line 563
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->DRAWING:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    iput-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    .line 566
    iget v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_LastDrawingColorIndex:I

    iput v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    .line 567
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->updateDrawingButtonsSelection()V

    .line 570
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v0

    sget v1, Lcom/oneplus/gallery/editor/DrawingEditorMode;->DISABLE_ALL_GESTURES_FLAGS:I

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->disablePreviewImageGesture(I)V

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDrawingButtonsSelection()V
    .locals 5

    .prologue
    .line 580
    const/4 v1, 0x0

    .line 581
    .local v1, "currentButton":Landroid/view/View;
    iget v3, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    if-ltz v3, :cond_0

    .line 582
    iget-object v3, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    iget v4, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentButton":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 583
    .restart local v1    # "currentButton":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 585
    iget-object v3, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 586
    .local v0, "candButton":Landroid/view/View;
    if-ne v1, v0, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 583
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 586
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 588
    .end local v0    # "candButton":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public handlePreviewTouchEvent(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/MotionEvent;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imageBounds"    # Landroid/graphics/Rect;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    invoke-super/range {p0 .. p3}, Lcom/oneplus/gallery/editor/BaseEditorMode;->handlePreviewTouchEvent(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/MotionEvent;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    sget-object v13, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->MOVING:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    if-ne v12, v13, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_IgnorePreviewTouchEvent:Z

    if-eqz v12, :cond_2

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 214
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_IgnorePreviewTouchEvent:Z

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_ShowControlUIRunnable:Ljava/lang/Runnable;

    const-wide/16 v14, 0x1f4

    invoke-static {v12, v13, v14, v15}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 224
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_IgnorePreviewTouchEvent:Z

    .line 227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    if-eqz v12, :cond_0

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    invoke-virtual {v12}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->completePath()V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery/editor/PhotoEditor;->refreshPreview(I)V

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 239
    .local v10, "x":F
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 240
    .local v11, "y":F
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto :goto_0

    .line 245
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    if-eqz v12, :cond_0

    .line 247
    sget-object v4, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;->COLOR:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    .line 248
    .local v4, "fill":Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;
    const/4 v3, -0x1

    .line 249
    .local v3, "color":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingThickness:F

    .line 250
    .local v7, "thickness":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_4

    .line 252
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 253
    .local v2, "button":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 255
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 256
    .local v6, "tag":Ljava/lang/Object;
    instance-of v12, v6, Ljava/lang/Integer;

    if-eqz v12, :cond_5

    .line 257
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "tag":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 268
    .end local v2    # "button":Landroid/view/View;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    invoke-virtual {v12, v4, v3, v7}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->startPath(Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;IF)Z

    move-result v12

    if-nez v12, :cond_7

    .line 270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->TAG:Ljava/lang/String;

    const-string v13, "handlePreviewTouchEvent() - Fail to start new path"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    .restart local v2    # "button":Landroid/view/View;
    .restart local v6    # "tag":Ljava/lang/Object;
    :cond_5
    sget-object v4, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;->MOSAIC:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    .line 261
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v7, v12

    .line 263
    goto :goto_2

    .line 250
    .end local v6    # "tag":Ljava/lang/Object;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 275
    .end local v2    # "button":Landroid/view/View;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oneplus/gallery/PhotoEditorFragment;->hideControlUI()V

    .line 276
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->setUIVisibility(ZZ)V

    goto/16 :goto_0

    .line 284
    .end local v3    # "color":I
    .end local v4    # "fill":Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;
    .end local v5    # "i":I
    .end local v7    # "thickness":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    if-eqz v12, :cond_0

    .line 286
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, v10, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float v10, v12, v13

    .line 287
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float v11, v12, v13

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_TempSrcPoint:Landroid/graphics/PointF;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_TempSrcPoint:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_TempDestPoint:Landroid/graphics/PointF;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/oneplus/gallery/editor/PhotoEditor;->mapToOriginal(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_TempDestPoint:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_TempDestPoint:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->addPathData(FF)Z

    move-result v12

    if-nez v12, :cond_8

    .line 294
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->TAG:Ljava/lang/String;

    const-string v13, "handlePreviewTouchEvent() - Fail to add path data"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oneplus/gallery/PhotoEditorFragment;->showControlUI()V

    goto/16 :goto_0

    .line 300
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 301
    .local v8, "time":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_LastOverlaysUpdateTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_9

    .line 303
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_LastOverlaysUpdateTime:J

    sub-long v12, v8, v12

    const-wide/16 v14, 0x1e

    cmp-long v12, v12, v14

    if-ltz v12, :cond_0

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery/editor/PhotoEditor;->refreshPreview(I)V

    .line 306
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_LastOverlaysUpdateTime:J

    goto/16 :goto_0

    .line 310
    :cond_9
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_LastOverlaysUpdateTime:J

    goto/16 :goto_0

    .line 319
    .end local v8    # "time":J
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    if-eqz v12, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    invoke-virtual {v12}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->completePath()V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery/editor/PhotoEditor;->refreshPreview(I)V

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_ShowControlUIRunnable:Ljava/lang/Runnable;

    const-wide/16 v14, 0x1f4

    invoke-static {v12, v13, v14, v15}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateUI(Landroid/view/View;)Landroid/view/View;
    .locals 9
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v3

    .line 341
    .local v3, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    const v8, 0x7f03001f

    move-object v7, p1

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {v3, v8, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 344
    const v7, 0x7f06008b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, "baseView":Landroid/view/View;
    const v7, 0x7f06008c

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_UndoDrawingButton:Landroid/view/View;

    .line 346
    const v7, 0x7f06008d

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_ToggleModeButton:Landroid/view/View;

    .line 349
    iget-object v7, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_UndoDrawingButton:Landroid/view/View;

    new-instance v8, Lcom/oneplus/gallery/editor/DrawingEditorMode$2;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode$2;-><init>(Lcom/oneplus/gallery/editor/DrawingEditorMode;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v7, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_ToggleModeButton:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 379
    const v7, 0x7f06008e

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 380
    .local v1, "buttonContainer":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/oneplus/gallery/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 381
    .local v6, "res":Landroid/content/res/Resources;
    const/4 v4, -0x1

    .local v4, "i":I
    :goto_0
    sget-object v7, Lcom/oneplus/gallery/editor/DrawingEditorMode;->DRAWING_COLORS:[I

    array-length v7, v7

    if-ge v4, v7, :cond_2

    .line 383
    add-int/lit8 v5, v4, 0x1

    .line 384
    .local v5, "index":I
    const v7, 0x7f030020

    invoke-static {v3, v7, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 385
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 386
    .local v2, "colorButton":Landroid/widget/ImageButton;
    if-ltz v4, :cond_1

    .line 388
    new-instance v7, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;

    sget-object v8, Lcom/oneplus/gallery/editor/DrawingEditorMode;->DRAWING_COLORS:[I

    aget v8, v8, v4

    invoke-direct {v7, v6, v8}, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    sget-object v7, Lcom/oneplus/gallery/editor/DrawingEditorMode;->DRAWING_COLORS:[I

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 393
    :goto_1
    new-instance v7, Lcom/oneplus/gallery/editor/DrawingEditorMode$4;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode$4;-><init>(Lcom/oneplus/gallery/editor/DrawingEditorMode;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget v7, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    if-ne v5, v7, :cond_0

    .line 408
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 409
    :cond_0
    iget-object v7, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 392
    :cond_1
    new-instance v7, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;

    const v8, 0x7f020080

    invoke-static {v6, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/oneplus/gallery/editor/DrawingEditorMode$DrawingColorDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 413
    .end local v2    # "colorButton":Landroid/widget/ImageButton;
    .end local v5    # "index":I
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->isEnter()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 437
    :cond_3
    return-object v0
.end method

.method protected onDestroyUI()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 447
    return-void
.end method

.method protected onEnter(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    iget v1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_MosaicSize:I

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    .line 458
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->addOverlay(Lcom/oneplus/gallery/editor/PhotoEditorOverlay;)V

    .line 475
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 484
    iget-object v1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    sget-object v2, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->MOVING:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    if-ne v1, v2, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->toggleMode()V

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v0

    .line 499
    .local v0, "fragment":Lcom/oneplus/gallery/PhotoEditorFragment;
    iget-object v1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_ShowControlUIRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 500
    invoke-virtual {v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->showControlUI()V

    .line 501
    return-void
.end method

.method protected onMediaChanged(Lcom/oneplus/gallery/media/PhotoMedia;)V
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery/media/PhotoMedia;

    .prologue
    .line 509
    invoke-super {p0, p1}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onMediaChanged(Lcom/oneplus/gallery/media/PhotoMedia;)V

    .line 512
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 513
    .local v0, "activity":Lcom/oneplus/gallery/GalleryActivity;
    if-eqz v0, :cond_0

    sget-object v4, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/ScreenSize;

    move-object v3, v4

    .line 514
    .local v3, "screenSize":Lcom/oneplus/base/ScreenSize;
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 515
    .local v1, "minScreenSide":I
    :goto_1
    invoke-interface {p1}, Lcom/oneplus/gallery/media/PhotoMedia;->getWidth()I

    move-result v4

    invoke-interface {p1}, Lcom/oneplus/gallery/media/PhotoMedia;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v1

    div-float v2, v4, v5

    .line 516
    .local v2, "scaleRatio":F
    int-to-float v4, v1

    const v5, 0x3c4ccccd    # 0.0125f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingThickness:F

    .line 517
    iget v4, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingThickness:F

    mul-float/2addr v4, v2

    iput v4, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingThickness:F

    .line 518
    int-to-float v4, v1

    const v5, 0x3ca3d70a    # 0.02f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_MosaicSize:I

    .line 521
    const/4 v4, 0x1

    iput v4, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    .line 522
    return-void

    .line 513
    .end local v1    # "minScreenSide":I
    .end local v2    # "scaleRatio":F
    .end local v3    # "screenSize":Lcom/oneplus/base/ScreenSize;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 514
    .restart local v3    # "screenSize":Lcom/oneplus/base/ScreenSize;
    :cond_1
    const/16 v1, 0x438

    goto :goto_1
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    invoke-virtual {v0}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->release()V

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery/editor/PhotoEditorDrawing;

    .line 537
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onRelease()V

    .line 538
    return-void
.end method
