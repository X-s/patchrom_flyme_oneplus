.class public final Lcom/oneplus/gallery2/editor/DrawingEditorMode;
.super Lcom/oneplus/gallery2/editor/BaseEditorMode;
.source "DrawingEditorMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/editor/DrawingEditorMode$5;,
        Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;,
        Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;
    }
.end annotation


# static fields
.field private static final DISABLE_ALL_GESTURES_FLAGS:I

.field private static final DRAWING_COLORS:[I

.field private static final DRAWING_MOSAIC_SIZE_RATIO:F = 0.02f

.field private static final DRAWING_THICKNESS_RATIO:F = 0.0125f

.field private static final DRAWING_THICKNESS_RATIO_MOSAIC:F = 0.025f

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

.field private m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

.field private m_IgnorePreviewTouchEvent:Z

.field private m_LastDrawingColorIndex:I

.field private m_LastOverlaysUpdateTime:J

.field private m_Mode:Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;

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

    .line 43
    sget v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAG_GESTURE_DOUBLE_TAP_SCALE:I

    sget v1, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAG_GESTURE_MULTIPLE_FINGERS_SCALE:I

    or-int/2addr v0, v1

    sget v1, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAG_GESTURE_MULTIPLE_FINGERS_SCROLL:I

    or-int/2addr v0, v1

    sget v1, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAG_GESTURE_ONE_FINGER_SCROLL:I

    or-int/2addr v0, v1

    sput v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->DISABLE_ALL_GESTURES_FLAGS:I

    .line 47
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

    sput-object v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->DRAWING_COLORS:[I

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/editor/BaseEditorMode;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    .line 72
    sget-object v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;->DRAWING:Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;

    .line 73
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_TempDestPoint:Landroid/graphics/PointF;

    .line 74
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_TempSrcPoint:Landroid/graphics/PointF;

    .line 80
    new-instance v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode$1;-><init>(Lcom/oneplus/gallery2/editor/DrawingEditorMode;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_ShowControlUIRunnable:Ljava/lang/Runnable;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/editor/DrawingEditorMode;)Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/editor/DrawingEditorMode;)Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/editor/DrawingEditorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->toggleMode()V

    return-void
.end method

.method static synthetic access$302(Lcom/oneplus/gallery2/editor/DrawingEditorMode;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/DrawingEditorMode;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/editor/DrawingEditorMode;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/editor/DrawingEditorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->updateDrawingButtonsSelection()V

    return-void
.end method

.method private toggleMode()V
    .locals 2

    .prologue
    .line 540
    sget-object v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$5;->$SwitchMap$com$oneplus$gallery2$editor$DrawingEditorMode$Mode:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 570
    :goto_0
    return-void

    .line 545
    :pswitch_0
    sget-object v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;->MOVING:Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;

    .line 548
    iget v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    iput v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_LastDrawingColorIndex:I

    .line 549
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    .line 550
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->updateDrawingButtonsSelection()V

    .line 553
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->enablePreviewImageGesture()V

    goto :goto_0

    .line 559
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;->DRAWING:Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;

    .line 562
    iget v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_LastDrawingColorIndex:I

    iput v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    .line 563
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->updateDrawingButtonsSelection()V

    .line 566
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-result-object v0

    sget v1, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->DISABLE_ALL_GESTURES_FLAGS:I

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->disablePreviewImageGesture(I)V

    goto :goto_0

    .line 540
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
    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, "currentButton":Landroid/view/View;
    iget v3, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    if-ltz v3, :cond_0

    .line 578
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    iget v4, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentButton":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 579
    .restart local v1    # "currentButton":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 581
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 582
    .local v0, "candButton":Landroid/view/View;
    if-ne v1, v0, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 579
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 582
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 584
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
    .line 207
    invoke-super/range {p0 .. p3}, Lcom/oneplus/gallery2/editor/BaseEditorMode;->handlePreviewTouchEvent(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/MotionEvent;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;

    sget-object v13, Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;->MOVING:Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;

    if-ne v12, v13, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_IgnorePreviewTouchEvent:Z

    if-eqz v12, :cond_2

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 219
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_IgnorePreviewTouchEvent:Z

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_ShowControlUIRunnable:Ljava/lang/Runnable;

    const-wide/16 v14, 0x1f4

    invoke-static {v12, v13, v14, v15}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 229
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_IgnorePreviewTouchEvent:Z

    .line 232
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    if-eqz v12, :cond_0

    .line 234
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    invoke-virtual {v12}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->completePath()V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery2/editor/PhotoEditor;->refreshPreview(I)V

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 244
    .local v10, "x":F
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 245
    .local v11, "y":F
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    if-eqz v12, :cond_0

    .line 252
    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;->COLOR:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;

    .line 253
    .local v4, "fill":Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;
    const/4 v3, -0x1

    .line 254
    .local v3, "color":I
    const v7, 0x3c4ccccd    # 0.0125f

    .line 255
    .local v7, "thickness":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_4

    .line 257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 258
    .local v2, "button":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 260
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 261
    .local v6, "tag":Ljava/lang/Object;
    instance-of v12, v6, Ljava/lang/Integer;

    if-eqz v12, :cond_5

    .line 262
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "tag":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 273
    .end local v2    # "button":Landroid/view/View;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    invoke-virtual {v12, v4, v3, v7}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->startPath(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;IF)Z

    move-result v12

    if-nez v12, :cond_7

    .line 275
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->TAG:Ljava/lang/String;

    const-string v13, "handlePreviewTouchEvent() - Fail to start new path"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    .restart local v2    # "button":Landroid/view/View;
    .restart local v6    # "tag":Ljava/lang/Object;
    :cond_5
    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;->MOSAIC:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;

    .line 266
    const v7, 0x3ccccccd    # 0.025f

    .line 268
    goto :goto_2

    .line 255
    .end local v6    # "tag":Ljava/lang/Object;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 280
    .end local v2    # "button":Landroid/view/View;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oneplus/gallery2/PhotoEditorFragment;->hideControlUI()V

    .line 281
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->setUIVisibility(ZZ)V

    goto/16 :goto_0

    .line 289
    .end local v3    # "color":I
    .end local v4    # "fill":Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;
    .end local v5    # "i":I
    .end local v7    # "thickness":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    if-eqz v12, :cond_0

    .line 291
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, v10, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float v10, v12, v13

    .line 292
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float v11, v12, v13

    .line 293
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_TempSrcPoint:Landroid/graphics/PointF;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_TempSrcPoint:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_TempDestPoint:Landroid/graphics/PointF;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/oneplus/gallery2/editor/PhotoEditor;->mapToOriginal(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_TempDestPoint:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_TempDestPoint:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->addPathData(FF)Z

    move-result v12

    if-nez v12, :cond_8

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->TAG:Ljava/lang/String;

    const-string v13, "handlePreviewTouchEvent() - Fail to add path data"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oneplus/gallery2/PhotoEditorFragment;->showControlUI()V

    goto/16 :goto_0

    .line 305
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 306
    .local v8, "time":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_LastOverlaysUpdateTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_9

    .line 308
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_LastOverlaysUpdateTime:J

    sub-long v12, v8, v12

    const-wide/16 v14, 0x1e

    cmp-long v12, v12, v14

    if-ltz v12, :cond_0

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery2/editor/PhotoEditor;->refreshPreview(I)V

    .line 311
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_LastOverlaysUpdateTime:J

    goto/16 :goto_0

    .line 315
    :cond_9
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_LastOverlaysUpdateTime:J

    goto/16 :goto_0

    .line 324
    .end local v8    # "time":J
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    if-eqz v12, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    invoke-virtual {v12}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->completePath()V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery2/editor/PhotoEditor;->refreshPreview(I)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_ShowControlUIRunnable:Ljava/lang/Runnable;

    const-wide/16 v14, 0x1f4

    invoke-static {v12, v13, v14, v15}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 245
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
    .line 345
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v3

    .line 346
    .local v3, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    const v8, 0x7f03001f

    move-object v7, p1

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {v3, v8, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 349
    const v7, 0x7f06008b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 350
    .local v0, "baseView":Landroid/view/View;
    const v7, 0x7f06008c

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_UndoDrawingButton:Landroid/view/View;

    .line 351
    const v7, 0x7f06008d

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_ToggleModeButton:Landroid/view/View;

    .line 354
    iget-object v7, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_UndoDrawingButton:Landroid/view/View;

    new-instance v8, Lcom/oneplus/gallery2/editor/DrawingEditorMode$2;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode$2;-><init>(Lcom/oneplus/gallery2/editor/DrawingEditorMode;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v7, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_ToggleModeButton:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 384
    const v7, 0x7f06008e

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 385
    .local v1, "buttonContainer":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/oneplus/gallery2/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 386
    .local v6, "res":Landroid/content/res/Resources;
    const/4 v4, -0x1

    .local v4, "i":I
    :goto_0
    sget-object v7, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->DRAWING_COLORS:[I

    array-length v7, v7

    if-ge v4, v7, :cond_2

    .line 388
    add-int/lit8 v5, v4, 0x1

    .line 389
    .local v5, "index":I
    const v7, 0x7f030020

    invoke-static {v3, v7, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 390
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

    .line 391
    .local v2, "colorButton":Landroid/widget/ImageButton;
    if-ltz v4, :cond_1

    .line 393
    new-instance v7, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;

    sget-object v8, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->DRAWING_COLORS:[I

    aget v8, v8, v4

    invoke-direct {v7, v6, v8}, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    sget-object v7, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->DRAWING_COLORS:[I

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 398
    :goto_1
    new-instance v7, Lcom/oneplus/gallery2/editor/DrawingEditorMode$4;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode$4;-><init>(Lcom/oneplus/gallery2/editor/DrawingEditorMode;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget v7, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    if-ne v5, v7, :cond_0

    .line 413
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 414
    :cond_0
    iget-object v7, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 397
    :cond_1
    new-instance v7, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;

    const v8, 0x7f020080

    invoke-static {v6, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/oneplus/gallery2/editor/DrawingEditorMode$DrawingColorDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 418
    .end local v2    # "colorButton":Landroid/widget/ImageButton;
    .end local v5    # "index":I
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->isEnter()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 442
    :cond_3
    return-object v0
.end method

.method protected onDestroyUI()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 452
    return-void
.end method

.method protected onEnter(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 460
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    const v1, 0x3ca3d70a    # 0.02f

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;-><init>(F)V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    .line 463
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->addOverlay(Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;)V

    .line 480
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 489
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;

    sget-object v2, Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;->MOVING:Lcom/oneplus/gallery2/editor/DrawingEditorMode$Mode;

    if-ne v1, v2, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->toggleMode()V

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-result-object v0

    .line 504
    .local v0, "fragment":Lcom/oneplus/gallery2/PhotoEditorFragment;
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_ShowControlUIRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 505
    invoke-virtual {v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->showControlUI()V

    .line 506
    return-void
.end method

.method protected onMediaSizeChanged(Landroid/util/Size;)V
    .locals 1
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 514
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/editor/BaseEditorMode;->onMediaSizeChanged(Landroid/util/Size;)V

    .line 517
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingColorIndex:I

    .line 518
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->release()V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->m_DrawingOverlay:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    .line 533
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery2/editor/BaseEditorMode;->onRelease()V

    .line 534
    return-void
.end method
