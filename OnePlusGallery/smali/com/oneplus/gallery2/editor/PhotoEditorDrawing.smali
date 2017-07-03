.class public Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;
.super Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;
.source "PhotoEditorDrawing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$1;,
        Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;,
        Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;,
        Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;
    }
.end annotation


# static fields
.field public static final MAX_PATH_COUNT:I = 0x200

.field public static final MAX_PATH_DATA_COUNT:I = 0x1000

.field private static final MIN_DATA_DISTANCE_PERCENTAGE:F = 0.01f

.field private static final PATH_SEGMENT_INTERPOLATION_COUNT:I


# instance fields
.field private m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

.field private m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

.field private m_FixedPreviewCanvas:Landroid/graphics/Canvas;

.field private volatile m_IsFixedPreviewUpdateNeeded:Z

.field private volatile m_IsPreviewUpdateNeeded:Z

.field private final m_Lock:Ljava/lang/Object;

.field private m_MosaicBitmap:Landroid/graphics/Bitmap;

.field private final m_MosaicSize:F

.field private final m_PathInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoHeight:I

.field private m_PhotoWidth:I

.field private m_PreparationTask:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;

.field private m_PreviewBitmap:Landroid/graphics/Bitmap;

.field private m_PreviewCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "mosaicSize"    # F

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;-><init>(Z)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    .line 135
    iput p1, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_MosaicSize:F

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;
    .param p1, "x1"    # Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->prepare(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;
    .param p1, "x1"    # Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;
    .param p2, "x2"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->onPrepared(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;Z)V

    return-void
.end method

.method private drawPaths(Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "baseWidth"    # I
    .param p3, "baseHeight"    # I

    .prologue
    .line 297
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->drawPaths(Landroid/graphics/Canvas;IIII)V

    .line 298
    return-void
.end method

.method private drawPaths(Landroid/graphics/Canvas;IIII)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "baseWidth"    # I
    .param p3, "baseHeight"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I

    .prologue
    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 304
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    monitor-exit v23

    .line 362
    :goto_0
    return-void

    .line 308
    :cond_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 309
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 310
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 311
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 312
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_MosaicBitmap:Landroid/graphics/Bitmap;

    .line 316
    .local v13, "mosaicBitmap":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move/from16 v0, p3

    if-eq v3, v0, :cond_2

    .line 318
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 319
    .local v14, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    invoke-direct {v0, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 320
    .local v20, "tempCanvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v3, v7, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v7, v8, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v3, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 321
    move-object v13, v14

    .line 325
    .end local v14    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v20    # "tempCanvas":Landroid/graphics/Canvas;
    :cond_2
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 326
    .local v17, "path":Landroid/graphics/Path;
    const/4 v6, 0x0

    .line 327
    .local v6, "mosaicShader":Landroid/graphics/Shader;
    move/from16 v11, p4

    .local v11, "i":I
    :goto_1
    move/from16 v0, p5

    if-gt v11, v0, :cond_8

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    .line 331
    .local v4, "pathInfo":Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;
    iget-object v0, v4, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    move-object/from16 v18, v0

    .line 332
    .local v18, "pathData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 327
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 334
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 335
    const/4 v12, 0x0

    .local v12, "j":I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    .local v19, "size":I
    :goto_3
    move/from16 v0, v19

    if-ge v12, v0, :cond_6

    .line 337
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move/from16 v0, p2

    int-to-float v7, v0

    mul-float v21, v3, v7

    .line 338
    .local v21, "x":F
    add-int/lit8 v3, v12, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move/from16 v0, p3

    int-to-float v7, v0

    mul-float v22, v3, v7

    .line 339
    .local v22, "y":F
    const/4 v3, 0x2

    if-lt v12, v3, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    if-gt v12, v3, :cond_5

    .line 343
    add-int/lit8 v3, v12, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move/from16 v0, p2

    int-to-float v7, v0

    mul-float v15, v3, v7

    .line 344
    .local v15, "nextX":F
    add-int/lit8 v3, v12, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move/from16 v0, p3

    int-to-float v7, v0

    mul-float v16, v3, v7

    .line 345
    .local v16, "nextY":F
    sub-float v3, v15, v21

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v3, v7

    add-float v9, v21, v3

    .line 346
    .local v9, "endX":F
    sub-float v3, v16, v22

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v3, v7

    add-float v10, v22, v3

    .line 347
    .local v10, "endY":F
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 335
    .end local v9    # "endX":F
    .end local v10    # "endY":F
    .end local v15    # "nextX":F
    .end local v16    # "nextY":F
    :cond_4
    :goto_4
    add-int/lit8 v12, v12, 0x2

    goto :goto_3

    .line 349
    :cond_5
    if-nez v12, :cond_4

    .line 350
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_4

    .line 361
    .end local v4    # "pathInfo":Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "mosaicShader":Landroid/graphics/Shader;
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v13    # "mosaicBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "path":Landroid/graphics/Path;
    .end local v18    # "pathData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v19    # "size":I
    .end local v21    # "x":F
    .end local v22    # "y":F
    :catchall_0
    move-exception v3

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 354
    .restart local v4    # "pathInfo":Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "mosaicShader":Landroid/graphics/Shader;
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    .restart local v13    # "mosaicBitmap":Landroid/graphics/Bitmap;
    .restart local v17    # "path":Landroid/graphics/Path;
    .restart local v18    # "pathData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v19    # "size":I
    :cond_6
    :try_start_1
    iget-object v3, v4, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->fill:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;

    sget-object v7, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;->MOSAIC:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;

    if-ne v3, v7, :cond_7

    if-nez v6, :cond_7

    if-eqz v13, :cond_7

    .line 355
    new-instance v6, Landroid/graphics/BitmapShader;

    .end local v6    # "mosaicShader":Landroid/graphics/Shader;
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v13, v3, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .restart local v6    # "mosaicShader":Landroid/graphics/Shader;
    :cond_7
    move-object/from16 v3, p0

    move/from16 v7, p2

    move/from16 v8, p3

    .line 356
    invoke-direct/range {v3 .. v8}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->preparePaint(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;Landroid/graphics/Paint;Landroid/graphics/Shader;II)V

    .line 359
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 361
    .end local v4    # "pathInfo":Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;
    .end local v12    # "j":I
    .end local v18    # "pathData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v19    # "size":I
    :cond_8
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private isVisiblePathData(FF)Z
    .locals 3
    .param p1, "relativeX"    # F
    .param p2, "relativeY"    # F

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    if-nez v2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v1

    .line 370
    :cond_1
    iget v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    if-lez v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    iget v0, v2, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->thickness:F

    .line 373
    .local v0, "thickness":F
    iget v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    int-to-float v2, v2

    mul-float/2addr p1, v2

    .line 374
    iget v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    int-to-float v2, v2

    mul-float/2addr p2, v2

    .line 375
    neg-float v2, v0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    neg-float v2, v0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onPrepared(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;Z)V
    .locals 3
    .param p1, "task"    # Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;
    .param p2, "success"    # Z

    .prologue
    .line 480
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    if-eq v0, v1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreparationTask:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;

    if-eq v0, p1, :cond_1

    .line 487
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v1, "onPrepared() - Task has been cancelled"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v0, p1, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->mosaicBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_MosaicBitmap:Landroid/graphics/Bitmap;

    .line 495
    invoke-virtual {p0, p2}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->completePreparation(Z)V

    goto :goto_0
.end method

.method private prepare(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;)Z
    .locals 20
    .param p1, "task"    # Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;

    .prologue
    .line 528
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_MosaicSize:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->previewWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->previewHeight:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v9, v0

    .line 529
    .local v9, "mosaicSize":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-gt v9, v0, :cond_0

    .line 531
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->previewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->previewHeight:I

    move/from16 v18, v0

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->mosaicBitmap:Landroid/graphics/Bitmap;

    .line 532
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->mosaicBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->previewPixels:[I

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 533
    const/16 v17, 0x1

    .line 589
    :goto_0
    return v17

    .line 537
    :cond_0
    move-object/from16 v0, p1

    iget v14, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->previewWidth:I

    .line 538
    .local v14, "width":I
    move-object/from16 v0, p1

    iget v7, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->previewHeight:I

    .line 539
    .local v7, "height":I
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->previewPixels:[I

    .line 540
    .local v11, "pixels":[I
    const/4 v13, 0x0

    .local v13, "top":I
    :goto_1
    if-ge v13, v7, :cond_a

    .line 542
    const/4 v8, 0x0

    .local v8, "left":I
    :goto_2
    if-ge v8, v14, :cond_9

    .line 545
    const/4 v10, 0x0

    .line 546
    .local v10, "pixelCount":I
    const/4 v2, 0x0

    .local v2, "a":I
    const/4 v12, 0x0

    .local v12, "r":I
    const/4 v6, 0x0

    .local v6, "g":I
    const/4 v3, 0x0

    .line 547
    .local v3, "b":I
    const/16 v16, 0x0

    .local v16, "y":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v9, :cond_1

    .line 549
    add-int v17, v13, v16

    move/from16 v0, v17

    if-lt v0, v7, :cond_3

    .line 564
    :cond_1
    div-int/2addr v2, v10

    .line 565
    div-int/2addr v12, v10

    .line 566
    div-int/2addr v6, v10

    .line 567
    div-int/2addr v3, v10

    .line 568
    shl-int/lit8 v17, v2, 0x18

    shl-int/lit8 v18, v12, 0x10

    or-int v17, v17, v18

    shl-int/lit8 v18, v6, 0x8

    or-int v17, v17, v18

    or-int v5, v17, v3

    .line 571
    .local v5, "color":I
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v0, v9, :cond_2

    .line 573
    add-int v17, v13, v16

    move/from16 v0, v17

    if-lt v0, v7, :cond_6

    .line 542
    :cond_2
    add-int/2addr v8, v9

    goto :goto_2

    .line 551
    .end local v5    # "color":I
    :cond_3
    add-int v17, v13, v16

    mul-int v4, v17, v14

    .line 552
    .local v4, "baseOffset":I
    const/4 v15, 0x0

    .local v15, "x":I
    :goto_5
    if-ge v15, v9, :cond_4

    .line 554
    add-int v17, v8, v15

    move/from16 v0, v17

    if-lt v0, v14, :cond_5

    .line 547
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 556
    :cond_5
    add-int v17, v4, v8

    add-int v17, v17, v15

    aget v5, v11, v17

    .line 557
    .restart local v5    # "color":I
    add-int/lit8 v10, v10, 0x1

    .line 558
    ushr-int/lit8 v17, v5, 0x18

    add-int v2, v2, v17

    .line 559
    shr-int/lit8 v17, v5, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    add-int v12, v12, v17

    .line 560
    shr-int/lit8 v17, v5, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    add-int v6, v6, v17

    .line 561
    and-int/lit16 v0, v5, 0xff

    move/from16 v17, v0

    add-int v3, v3, v17

    .line 552
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 575
    .end local v4    # "baseOffset":I
    .end local v15    # "x":I
    :cond_6
    add-int v17, v13, v16

    mul-int v4, v17, v14

    .line 576
    .restart local v4    # "baseOffset":I
    const/4 v15, 0x0

    .restart local v15    # "x":I
    :goto_6
    if-ge v15, v9, :cond_7

    .line 578
    add-int v17, v8, v15

    move/from16 v0, v17

    if-lt v0, v14, :cond_8

    .line 571
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 580
    :cond_8
    add-int v17, v4, v8

    add-int v17, v17, v15

    aput v5, v11, v17

    .line 576
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 540
    .end local v2    # "a":I
    .end local v3    # "b":I
    .end local v4    # "baseOffset":I
    .end local v5    # "color":I
    .end local v6    # "g":I
    .end local v10    # "pixelCount":I
    .end local v12    # "r":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_9
    add-int/2addr v13, v9

    goto/16 :goto_1

    .line 585
    .end local v8    # "left":I
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->previewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->previewHeight:I

    move/from16 v18, v0

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->mosaicBitmap:Landroid/graphics/Bitmap;

    .line 586
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->mosaicBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-static {v11}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 589
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method private preparePaint(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;Landroid/graphics/Paint;Landroid/graphics/Shader;II)V
    .locals 2
    .param p1, "pathInfo"    # Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "mosaicShader"    # Landroid/graphics/Shader;
    .param p4, "baseWidth"    # I
    .param p5, "baseHeight"    # I

    .prologue
    .line 596
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$1;->$SwitchMap$com$oneplus$gallery2$editor$PhotoEditorDrawing$PathFill:[I

    iget-object v1, p1, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->fill:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 607
    :goto_0
    iget v0, p1, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->thickness:F

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 608
    return-void

    .line 599
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 600
    iget v0, p1, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->color:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 603
    :pswitch_1
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 604
    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addPathData(FF)Z
    .locals 11
    .param p1, "relativeX"    # F
    .param p2, "relativeY"    # F

    .prologue
    const v10, 0x3c23d70a    # 0.01f

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 148
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->verifyAccess()V

    .line 149
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    if-nez v8, :cond_0

    .line 151
    iget-object v7, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v8, "addPathData() - Path not started"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return v6

    .line 154
    :cond_0
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    iget-object v8, v8, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x2000

    if-lt v8, v9, :cond_1

    .line 156
    iget-object v7, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v8, "addPathData() - Maximum data count reached"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 163
    :cond_2
    iget-object v7, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPathData() - Invalid data : ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    monitor-enter v8

    .line 170
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    iget-object v6, v6, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 171
    .local v0, "count":I
    if-le v0, v7, :cond_5

    .line 173
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    iget-object v6, v6, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    add-int/lit8 v9, v0, -0x2

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 174
    .local v3, "prevX":F
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    iget-object v6, v6, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    add-int/lit8 v9, v0, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 175
    .local v4, "prevY":F
    sub-float v6, p1, v3

    iget v9, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    int-to-float v9, v9

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 176
    .local v1, "diffX":I
    sub-float v6, p2, v4

    iget v9, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    int-to-float v9, v9

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 177
    .local v2, "diffY":I
    iget v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    iget v9, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    if-ge v6, v9, :cond_4

    iget v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    .line 179
    .local v5, "smaller":I
    :goto_1
    mul-int v6, v1, v1

    mul-int v9, v2, v2

    add-int/2addr v6, v9

    int-to-float v6, v6

    mul-int v9, v5, v5

    int-to-float v9, v9

    mul-float/2addr v9, v10

    mul-float/2addr v9, v10

    cmpg-float v6, v6, v9

    if-gez v6, :cond_5

    .line 180
    monitor-exit v8

    move v6, v7

    goto/16 :goto_0

    .line 177
    .end local v5    # "smaller":I
    :cond_4
    iget v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    goto :goto_1

    .line 182
    .end local v1    # "diffX":I
    .end local v2    # "diffY":I
    .end local v3    # "prevX":F
    .end local v4    # "prevY":F
    :cond_5
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    iget-object v6, v6, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    iget-object v6, v6, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_IsPreviewUpdateNeeded:Z

    .line 185
    monitor-exit v8

    move v6, v7

    .line 188
    goto/16 :goto_0

    .line 185
    .end local v0    # "count":I
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public clearPaths()V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->verifyAccess()V

    .line 198
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    .line 201
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_IsFixedPreviewUpdateNeeded:Z

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_IsPreviewUpdateNeeded:Z

    .line 204
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 206
    return-void

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public completePath()V
    .locals 25

    .prologue
    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->verifyAccess()V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 291
    :goto_0
    return-void

    .line 220
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 222
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    move-object/from16 v19, v0

    .line 223
    .local v19, "originalData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_7

    .line 226
    const/4 v14, 0x0

    .line 227
    .local v14, "isVisiblePath":Z
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v8, v22, -0x2

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_1

    .line 229
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v24

    add-int/lit8 v22, v8, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->isVisiblePathData(FF)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 231
    const/4 v14, 0x1

    .line 237
    :cond_1
    if-eqz v14, :cond_6

    .line 239
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    div-int/lit8 v3, v22, 0x2

    .line 240
    .local v3, "dataCount":I
    const/high16 v13, 0x3f800000    # 1.0f

    .line 241
    .local v13, "interpolationFactor":F
    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v3, v0, :cond_5

    .line 243
    new-instance v16, Ljava/util/ArrayList;

    add-int/lit8 v22, v3, -0x2

    mul-int/lit8 v22, v22, 0x0

    mul-int/lit8 v22, v22, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    .local v16, "newData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v20

    .line 245
    .local v20, "srcX":F
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 246
    .local v21, "srcY":F
    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 247
    .local v4, "destX":F
    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 248
    .local v5, "destY":F
    sub-float v6, v4, v20

    .line 249
    .local v6, "diffX":F
    sub-float v7, v5, v21

    .line 250
    .local v7, "diffY":F
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const/4 v8, 0x4

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_4

    .line 256
    move/from16 v20, v4

    .line 257
    move/from16 v21, v5

    .line 258
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 259
    add-int/lit8 v22, v8, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 260
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_3
    if-lez v15, :cond_3

    .line 262
    sub-float v17, v4, v20

    .line 263
    .local v17, "newDiffX":F
    sub-float v18, v5, v21

    .line 264
    .local v18, "newDiffY":F
    add-float v22, v6, v17

    div-float v9, v22, v13

    .line 265
    .local v9, "intDiffX":F
    add-float v22, v7, v18

    div-float v10, v22, v13

    .line 266
    .local v10, "intDiffY":F
    add-float v11, v20, v9

    .line 267
    .local v11, "intX":F
    add-float v12, v21, v10

    .line 268
    .local v12, "intY":F
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    move/from16 v20, v11

    .line 271
    move/from16 v21, v12

    .line 272
    sub-float v6, v4, v11

    .line 273
    sub-float v7, v5, v12

    .line 260
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 227
    .end local v3    # "dataCount":I
    .end local v4    # "destX":F
    .end local v5    # "destY":F
    .end local v6    # "diffX":F
    .end local v7    # "diffY":F
    .end local v9    # "intDiffX":F
    .end local v10    # "intDiffY":F
    .end local v11    # "intX":F
    .end local v12    # "intY":F
    .end local v13    # "interpolationFactor":F
    .end local v15    # "j":I
    .end local v16    # "newData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v17    # "newDiffX":F
    .end local v18    # "newDiffY":F
    .end local v20    # "srcX":F
    .end local v21    # "srcY":F
    :cond_2
    add-int/lit8 v8, v8, -0x2

    goto/16 :goto_1

    .line 275
    .restart local v3    # "dataCount":I
    .restart local v4    # "destX":F
    .restart local v5    # "destY":F
    .restart local v6    # "diffX":F
    .restart local v7    # "diffY":F
    .restart local v13    # "interpolationFactor":F
    .restart local v15    # "j":I
    .restart local v16    # "newData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v20    # "srcX":F
    .restart local v21    # "srcY":F
    :cond_3
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 278
    .end local v15    # "j":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    .line 279
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_IsFixedPreviewUpdateNeeded:Z

    .line 280
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_IsPreviewUpdateNeeded:Z

    .line 282
    .end local v4    # "destX":F
    .end local v5    # "destY":F
    .end local v6    # "diffX":F
    .end local v7    # "diffY":F
    .end local v16    # "newData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v20    # "srcX":F
    .end local v21    # "srcY":F
    :cond_5
    sget-object v22, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 289
    .end local v3    # "dataCount":I
    .end local v8    # "i":I
    .end local v13    # "interpolationFactor":F
    .end local v14    # "isVisiblePath":Z
    :goto_4
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    .line 290
    monitor-exit v23

    goto/16 :goto_0

    .end local v19    # "originalData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 285
    .restart local v8    # "i":I
    .restart local v14    # "isVisiblePath":Z
    .restart local v19    # "originalData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 288
    .end local v8    # "i":I
    .end local v14    # "isVisiblePath":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method protected onDrawOverlay(Landroid/graphics/Canvas;IILandroid/graphics/Rect;I)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "baseWidth"    # I
    .param p3, "baseHeight"    # I
    .param p4, "clipRect"    # Landroid/graphics/Rect;
    .param p5, "flags"    # I

    .prologue
    .line 388
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_a

    .line 390
    iget-object v14, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    monitor-enter v14

    .line 392
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_IsFixedPreviewUpdateNeeded:Z

    if-eqz v2, :cond_2

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    .line 395
    .local v7, "endIndex":I
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    if-eqz v2, :cond_1

    .line 396
    add-int/lit8 v7, v7, -0x1

    .line 397
    :cond_1
    if-ltz v7, :cond_8

    .line 399
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    .line 401
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    .line 402
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_FixedPreviewCanvas:Landroid/graphics/Canvas;

    .line 406
    :goto_0
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_FixedPreviewCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    move-object v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->drawPaths(Landroid/graphics/Canvas;IIII)V

    .line 407
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_IsFixedPreviewUpdateNeeded:Z

    .line 412
    .end local v7    # "endIndex":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_IsPreviewUpdateNeeded:Z

    if-eqz v2, :cond_6

    .line 414
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_9

    .line 416
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    .line 417
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreviewCanvas:Landroid/graphics/Canvas;

    .line 421
    :goto_2
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 422
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreviewCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 423
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    if-eqz v2, :cond_5

    .line 424
    iget-object v9, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreviewCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    move-object v8, p0

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->drawPaths(Landroid/graphics/Canvas;IIII)V

    .line 425
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_IsPreviewUpdateNeeded:Z

    .line 427
    :cond_6
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 434
    :goto_3
    return-void

    .line 405
    .restart local v7    # "endIndex":I
    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_FixedPreviewCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 427
    .end local v7    # "endIndex":I
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 409
    .restart local v7    # "endIndex":I
    :cond_8
    :try_start_2
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_FixedPreviewCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_2

    .line 410
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_FixedPreviewCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 420
    .end local v7    # "endIndex":I
    :cond_9
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreviewCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 433
    :cond_a
    invoke-direct/range {p0 .. p3}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->drawPaths(Landroid/graphics/Canvas;II)V

    goto :goto_3
.end method

.method protected onPrepare(Lcom/oneplus/gallery2/media/PhotoMedia;Landroid/graphics/Bitmap;)Z
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery2/media/PhotoMedia;
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 442
    if-nez p1, :cond_0

    .line 444
    iget-object v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v6, "onPrepare() - No media to prepare"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :goto_0
    return v4

    .line 447
    :cond_0
    if-nez p2, :cond_1

    .line 449
    iget-object v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v6, "onPrepare() - No preview bitmap"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/PhotoMedia;->peekSize()Landroid/util/Size;

    move-result-object v3

    .line 455
    .local v3, "size":Landroid/util/Size;
    if-nez v3, :cond_2

    .line 457
    iget-object v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v6, "onPrepare() - No photo size"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_2
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    .line 461
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    .line 464
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 465
    .local v2, "previewWidth":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 466
    .local v0, "previewHeight":I
    mul-int v5, v2, v0

    new-array v1, v5, [I

    .line 467
    .local v1, "previewPixels":[I
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 468
    new-instance v5, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;

    invoke-direct {v5, p0, v2, v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;-><init>(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;II[I)V

    iput-object v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreparationTask:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;

    .line 469
    iget-object v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreparationTask:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v5, v4}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 472
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 504
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreparationTask:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreparationTask:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->cancel(Z)Z

    .line 507
    iput-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreparationTask:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->clearPaths()V

    .line 514
    iput-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    .line 515
    iput-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_FixedPreviewCanvas:Landroid/graphics/Canvas;

    .line 516
    iput-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    .line 517
    iput-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PreviewCanvas:Landroid/graphics/Canvas;

    .line 520
    invoke-super {p0}, Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;->onRelease()V

    .line 521
    return-void
.end method

.method public removeLastPath()V
    .locals 3

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->verifyAccess()V

    .line 617
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->completePath()V

    .line 618
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_IsFixedPreviewUpdateNeeded:Z

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_IsPreviewUpdateNeeded:Z

    .line 625
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 628
    :cond_0
    monitor-exit v1

    .line 629
    return-void

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startPath(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;IF)Z
    .locals 5
    .param p1, "fill"    # Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;
    .param p2, "color"    # I
    .param p3, "thickness"    # F

    .prologue
    const/4 v1, 0x0

    .line 642
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->verifyAccess()V

    .line 643
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->READY:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    if-eq v2, v3, :cond_0

    .line 645
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPath() - Current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :goto_0
    return v1

    .line 648
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x200

    if-lt v2, v3, :cond_1

    .line 650
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v3, "startPath() - Maximum path count reached"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_1
    if-nez p1, :cond_2

    .line 657
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v3, "startPath() - No fill type"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-lez v2, :cond_3

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 662
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPath() - Invalid thickness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->completePath()V

    .line 670
    new-instance v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;-><init>(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;IF)V

    .line 671
    .local v0, "pathInfo":Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 673
    :try_start_0
    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathInfo;

    .line 674
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    monitor-exit v2

    .line 676
    const/4 v1, 0x1

    goto :goto_0

    .line 675
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
