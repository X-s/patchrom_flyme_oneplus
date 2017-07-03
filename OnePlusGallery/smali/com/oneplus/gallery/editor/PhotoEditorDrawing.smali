.class public Lcom/oneplus/gallery/editor/PhotoEditorDrawing;
.super Lcom/oneplus/gallery/editor/PhotoEditorOverlay;
.source "PhotoEditorDrawing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/editor/PhotoEditorDrawing$1;,
        Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;,
        Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;,
        Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;
    }
.end annotation


# static fields
.field public static final MAX_PATH_COUNT:I = 0x200

.field public static final MAX_PATH_DATA_COUNT:I = 0x1000

.field private static final MIN_DATA_DISTANCE_PERCENTAGE:F = 0.01f

.field private static final PATH_SEGMENT_INTERPOLATION_COUNT:I


# instance fields
.field private m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

.field private m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

.field private m_FixedPreviewCanvas:Landroid/graphics/Canvas;

.field private volatile m_IsFixedPreviewUpdateNeeded:Z

.field private volatile m_IsPreviewUpdateNeeded:Z

.field private final m_Lock:Ljava/lang/Object;

.field private m_MosaicBitmap:Landroid/graphics/Bitmap;

.field private final m_MosaicSize:I

.field private final m_PathInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoHeight:I

.field private m_PhotoWidth:I

.field private m_PreparationTask:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;

.field private m_PreviewBitmap:Landroid/graphics/Bitmap;

.field private m_PreviewCanvas:Landroid/graphics/Canvas;

.field private m_PreviewScale:F


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "mosaicSize"    # I

    .prologue
    const/4 v1, 0x1

    .line 136
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorOverlay;-><init>(Z)V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    .line 137
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_MosaicSize:I

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/editor/PhotoEditorDrawing;Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditorDrawing;
    .param p1, "x1"    # Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->prepare(Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/editor/PhotoEditorDrawing;Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditorDrawing;
    .param p1, "x1"    # Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;
    .param p2, "x2"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->onPrepared(Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;Z)V

    return-void
.end method

.method private drawPaths(Landroid/graphics/Canvas;IIF)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "baseWidth"    # I
    .param p3, "baseHeight"    # I
    .param p4, "scale"    # F

    .prologue
    .line 299
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->drawPaths(Landroid/graphics/Canvas;IIFII)V

    .line 300
    return-void
.end method

.method private drawPaths(Landroid/graphics/Canvas;IIFII)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "baseWidth"    # I
    .param p3, "baseHeight"    # I
    .param p4, "scale"    # F
    .param p5, "startIndex"    # I
    .param p6, "endIndex"    # I

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 306
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 307
    monitor-exit v23

    .line 364
    :goto_0
    return-void

    .line 310
    :cond_0
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 311
    .local v14, "paint":Landroid/graphics/Paint;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 312
    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 313
    sget-object v22, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 314
    sget-object v22, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_MosaicBitmap:Landroid/graphics/Bitmap;

    .line 318
    .local v9, "mosaicBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p3

    if-eq v0, v1, :cond_2

    .line 320
    :cond_1
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 321
    .local v11, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    .local v19, "tempCanvas":Landroid/graphics/Canvas;
    new-instance v22, Landroid/graphics/Rect;

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v24, Landroid/graphics/Rect;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 323
    move-object v9, v11

    .line 327
    .end local v11    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "tempCanvas":Landroid/graphics/Canvas;
    :cond_2
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 328
    .local v15, "path":Landroid/graphics/Path;
    const/4 v10, 0x0

    .line 329
    .local v10, "mosaicShader":Landroid/graphics/Shader;
    move/from16 v7, p5

    .local v7, "i":I
    :goto_1
    move/from16 v0, p6

    if-gt v7, v0, :cond_8

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    .line 333
    .local v17, "pathInfo":Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    move-object/from16 v16, v0

    .line 334
    .local v16, "pathData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 329
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 336
    :cond_3
    invoke-virtual {v15}, Landroid/graphics/Path;->reset()V

    .line 337
    const/4 v8, 0x0

    .local v8, "j":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    .local v18, "size":I
    :goto_3
    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    .line 339
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v20, v22, v24

    .line 340
    .local v20, "x":F
    add-int/lit8 v22, v8, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v21, v22, v24

    .line 341
    .local v21, "y":F
    const/16 v22, 0x2

    move/from16 v0, v22

    if-lt v8, v0, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x4

    move/from16 v0, v22

    if-gt v8, v0, :cond_5

    .line 345
    add-int/lit8 v22, v8, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v12, v22, v24

    .line 346
    .local v12, "nextX":F
    add-int/lit8 v22, v8, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v13, v22, v24

    .line 347
    .local v13, "nextY":F
    sub-float v22, v12, v20

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v22, v22, v24

    add-float v5, v20, v22

    .line 348
    .local v5, "endX":F
    sub-float v22, v13, v21

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v22, v22, v24

    add-float v6, v21, v22

    .line 349
    .local v6, "endY":F
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 337
    .end local v5    # "endX":F
    .end local v6    # "endY":F
    .end local v12    # "nextX":F
    .end local v13    # "nextY":F
    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_3

    .line 351
    :cond_5
    if-nez v8, :cond_4

    .line 352
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_4

    .line 363
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "mosaicBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "mosaicShader":Landroid/graphics/Shader;
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v15    # "path":Landroid/graphics/Path;
    .end local v16    # "pathData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v17    # "pathInfo":Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;
    .end local v18    # "size":I
    .end local v20    # "x":F
    .end local v21    # "y":F
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 356
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v9    # "mosaicBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "mosaicShader":Landroid/graphics/Shader;
    .restart local v14    # "paint":Landroid/graphics/Paint;
    .restart local v15    # "path":Landroid/graphics/Path;
    .restart local v16    # "pathData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v17    # "pathInfo":Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;
    .restart local v18    # "size":I
    :cond_6
    :try_start_1
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->fill:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    move-object/from16 v22, v0

    sget-object v24, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;->MOSAIC:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_7

    if-nez v10, :cond_7

    if-eqz v9, :cond_7

    .line 357
    new-instance v10, Landroid/graphics/BitmapShader;

    .end local v10    # "mosaicShader":Landroid/graphics/Shader;
    sget-object v22, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v24, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v10, v9, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 358
    .restart local v10    # "mosaicShader":Landroid/graphics/Shader;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p4

    invoke-direct {v0, v1, v14, v10, v2}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->preparePaint(Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;Landroid/graphics/Paint;Landroid/graphics/Shader;F)V

    .line 361
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 363
    .end local v8    # "j":I
    .end local v16    # "pathData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v17    # "pathInfo":Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;
    .end local v18    # "size":I
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

    .line 370
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    if-nez v2, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v1

    .line 372
    :cond_1
    iget v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    if-lez v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    iget v0, v2, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->thickness:F

    .line 375
    .local v0, "thickness":F
    iget v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    int-to-float v2, v2

    mul-float/2addr p1, v2

    .line 376
    iget v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    int-to-float v2, v2

    mul-float/2addr p2, v2

    .line 377
    neg-float v2, v0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    neg-float v2, v0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onPrepared(Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;Z)V
    .locals 3
    .param p1, "task"    # Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;
    .param p2, "success"    # Z

    .prologue
    .line 479
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    if-eq v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreparationTask:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;

    if-eq v0, p1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v1, "onPrepared() - Task has been cancelled"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p1, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;->mosaicBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_MosaicBitmap:Landroid/graphics/Bitmap;

    .line 494
    invoke-virtual {p0, p2}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->completePreparation(Z)V

    goto :goto_0
.end method

.method private prepare(Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;)Z
    .locals 20
    .param p1, "task"    # Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;

    .prologue
    .line 527
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_MosaicSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;->previewScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v9, v0

    .line 528
    .local v9, "mosaicSize":I
    move-object/from16 v0, p1

    iget v14, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;->previewWidth:I

    .line 529
    .local v14, "width":I
    move-object/from16 v0, p1

    iget v7, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;->previewHeight:I

    .line 530
    .local v7, "height":I
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;->previewPixels:[I

    .line 531
    .local v11, "pixels":[I
    const/4 v13, 0x0

    .local v13, "top":I
    :goto_0
    if-ge v13, v7, :cond_9

    .line 533
    const/4 v8, 0x0

    .local v8, "left":I
    :goto_1
    if-ge v8, v14, :cond_8

    .line 536
    const/4 v10, 0x0

    .line 537
    .local v10, "pixelCount":I
    const/4 v2, 0x0

    .local v2, "a":I
    const/4 v12, 0x0

    .local v12, "r":I
    const/4 v6, 0x0

    .local v6, "g":I
    const/4 v3, 0x0

    .line 538
    .local v3, "b":I
    const/16 v16, 0x0

    .local v16, "y":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v9, :cond_0

    .line 540
    add-int v17, v13, v16

    move/from16 v0, v17

    if-lt v0, v7, :cond_2

    .line 555
    :cond_0
    div-int/2addr v2, v10

    .line 556
    div-int/2addr v12, v10

    .line 557
    div-int/2addr v6, v10

    .line 558
    div-int/2addr v3, v10

    .line 559
    shl-int/lit8 v17, v2, 0x18

    shl-int/lit8 v18, v12, 0x10

    or-int v17, v17, v18

    shl-int/lit8 v18, v6, 0x8

    or-int v17, v17, v18

    or-int v5, v17, v3

    .line 562
    .local v5, "color":I
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v0, v9, :cond_1

    .line 564
    add-int v17, v13, v16

    move/from16 v0, v17

    if-lt v0, v7, :cond_5

    .line 533
    :cond_1
    add-int/2addr v8, v9

    goto :goto_1

    .line 542
    .end local v5    # "color":I
    :cond_2
    add-int v17, v13, v16

    mul-int v4, v17, v14

    .line 543
    .local v4, "baseOffset":I
    const/4 v15, 0x0

    .local v15, "x":I
    :goto_4
    if-ge v15, v9, :cond_3

    .line 545
    add-int v17, v8, v15

    move/from16 v0, v17

    if-lt v0, v14, :cond_4

    .line 538
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 547
    :cond_4
    add-int v17, v4, v8

    add-int v17, v17, v15

    aget v5, v11, v17

    .line 548
    .restart local v5    # "color":I
    add-int/lit8 v10, v10, 0x1

    .line 549
    ushr-int/lit8 v17, v5, 0x18

    add-int v2, v2, v17

    .line 550
    shr-int/lit8 v17, v5, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    add-int v12, v12, v17

    .line 551
    shr-int/lit8 v17, v5, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    add-int v6, v6, v17

    .line 552
    and-int/lit16 v0, v5, 0xff

    move/from16 v17, v0

    add-int v3, v3, v17

    .line 543
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 566
    .end local v4    # "baseOffset":I
    .end local v15    # "x":I
    :cond_5
    add-int v17, v13, v16

    mul-int v4, v17, v14

    .line 567
    .restart local v4    # "baseOffset":I
    const/4 v15, 0x0

    .restart local v15    # "x":I
    :goto_5
    if-ge v15, v9, :cond_6

    .line 569
    add-int v17, v8, v15

    move/from16 v0, v17

    if-lt v0, v14, :cond_7

    .line 562
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 571
    :cond_7
    add-int v17, v4, v8

    add-int v17, v17, v15

    aput v5, v11, v17

    .line 567
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 531
    .end local v2    # "a":I
    .end local v3    # "b":I
    .end local v4    # "baseOffset":I
    .end local v5    # "color":I
    .end local v6    # "g":I
    .end local v10    # "pixelCount":I
    .end local v12    # "r":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_8
    add-int/2addr v13, v9

    goto/16 :goto_0

    .line 576
    .end local v8    # "left":I
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;->previewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;->previewHeight:I

    move/from16 v18, v0

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;->mosaicBitmap:Landroid/graphics/Bitmap;

    .line 577
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;->mosaicBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-static {v11}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 580
    const/16 v17, 0x1

    return v17
.end method

.method private preparePaint(Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;Landroid/graphics/Paint;Landroid/graphics/Shader;F)V
    .locals 2
    .param p1, "pathInfo"    # Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "mosaicShader"    # Landroid/graphics/Shader;
    .param p4, "scale"    # F

    .prologue
    .line 587
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$1;->$SwitchMap$com$oneplus$gallery$editor$PhotoEditorDrawing$PathFill:[I

    iget-object v1, p1, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->fill:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    invoke-virtual {v1}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 598
    :goto_0
    iget v0, p1, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->thickness:F

    mul-float/2addr v0, p4

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 599
    return-void

    .line 590
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 591
    iget v0, p1, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->color:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 594
    :pswitch_1
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 595
    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 587
    nop

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

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->verifyAccess()V

    .line 151
    iget-object v8, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    if-nez v8, :cond_0

    .line 153
    iget-object v7, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v8, "addPathData() - Path not started"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return v6

    .line 156
    :cond_0
    iget-object v8, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    iget-object v8, v8, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x2000

    if-lt v8, v9, :cond_1

    .line 158
    iget-object v7, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v8, "addPathData() - Maximum data count reached"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 165
    :cond_2
    iget-object v7, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

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

    .line 170
    :cond_3
    iget-object v8, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    monitor-enter v8

    .line 172
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    iget-object v6, v6, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 173
    .local v0, "count":I
    if-le v0, v7, :cond_5

    .line 175
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    iget-object v6, v6, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    add-int/lit8 v9, v0, -0x2

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 176
    .local v3, "prevX":F
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    iget-object v6, v6, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    add-int/lit8 v9, v0, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 177
    .local v4, "prevY":F
    sub-float v6, p1, v3

    iget v9, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    int-to-float v9, v9

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 178
    .local v1, "diffX":I
    sub-float v6, p2, v4

    iget v9, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    int-to-float v9, v9

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 179
    .local v2, "diffY":I
    iget v6, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    iget v9, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    if-ge v6, v9, :cond_4

    iget v5, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    .line 181
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

    .line 182
    monitor-exit v8

    move v6, v7

    goto/16 :goto_0

    .line 179
    .end local v5    # "smaller":I
    :cond_4
    iget v5, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    goto :goto_1

    .line 184
    .end local v1    # "diffX":I
    .end local v2    # "diffY":I
    .end local v3    # "prevX":F
    .end local v4    # "prevY":F
    :cond_5
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    iget-object v6, v6, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    iget-object v6, v6, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_IsPreviewUpdateNeeded:Z

    .line 187
    monitor-exit v8

    move v6, v7

    .line 190
    goto/16 :goto_0

    .line 187
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
    .line 199
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->verifyAccess()V

    .line 200
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    .line 203
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_IsFixedPreviewUpdateNeeded:Z

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_IsPreviewUpdateNeeded:Z

    .line 206
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 208
    return-void

    .line 206
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
    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->verifyAccess()V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 293
    :goto_0
    return-void

    .line 222
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 224
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    move-object/from16 v19, v0

    .line 225
    .local v19, "originalData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_7

    .line 228
    const/4 v14, 0x0

    .line 229
    .local v14, "isVisiblePath":Z
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v8, v22, -0x2

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_1

    .line 231
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

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->isVisiblePathData(FF)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 233
    const/4 v14, 0x1

    .line 239
    :cond_1
    if-eqz v14, :cond_6

    .line 241
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    div-int/lit8 v3, v22, 0x2

    .line 242
    .local v3, "dataCount":I
    const/high16 v13, 0x3f800000    # 1.0f

    .line 243
    .local v13, "interpolationFactor":F
    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v3, v0, :cond_5

    .line 245
    new-instance v16, Ljava/util/ArrayList;

    add-int/lit8 v22, v3, -0x2

    mul-int/lit8 v22, v22, 0x0

    mul-int/lit8 v22, v22, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    .local v16, "newData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v20

    .line 247
    .local v20, "srcX":F
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 248
    .local v21, "srcY":F
    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 249
    .local v4, "destX":F
    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 250
    .local v5, "destY":F
    sub-float v6, v4, v20

    .line 251
    .local v6, "diffX":F
    sub-float v7, v5, v21

    .line 252
    .local v7, "diffY":F
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    const/4 v8, 0x4

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_4

    .line 258
    move/from16 v20, v4

    .line 259
    move/from16 v21, v5

    .line 260
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 261
    add-int/lit8 v22, v8, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 262
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_3
    if-lez v15, :cond_3

    .line 264
    sub-float v17, v4, v20

    .line 265
    .local v17, "newDiffX":F
    sub-float v18, v5, v21

    .line 266
    .local v18, "newDiffY":F
    add-float v22, v6, v17

    div-float v9, v22, v13

    .line 267
    .local v9, "intDiffX":F
    add-float v22, v7, v18

    div-float v10, v22, v13

    .line 268
    .local v10, "intDiffY":F
    add-float v11, v20, v9

    .line 269
    .local v11, "intX":F
    add-float v12, v21, v10

    .line 270
    .local v12, "intY":F
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    move/from16 v20, v11

    .line 273
    move/from16 v21, v12

    .line 274
    sub-float v6, v4, v11

    .line 275
    sub-float v7, v5, v12

    .line 262
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 229
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

    .line 277
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

    .line 278
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 280
    .end local v15    # "j":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    .line 281
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_IsFixedPreviewUpdateNeeded:Z

    .line 282
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_IsPreviewUpdateNeeded:Z

    .line 284
    .end local v4    # "destX":F
    .end local v5    # "destY":F
    .end local v6    # "diffX":F
    .end local v7    # "diffY":F
    .end local v16    # "newData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v20    # "srcX":F
    .end local v21    # "srcY":F
    :cond_5
    sget-object v22, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 291
    .end local v3    # "dataCount":I
    .end local v8    # "i":I
    .end local v13    # "interpolationFactor":F
    .end local v14    # "isVisiblePath":Z
    :goto_4
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    .line 292
    monitor-exit v23

    goto/16 :goto_0

    .end local v19    # "originalData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 287
    .restart local v8    # "i":I
    .restart local v14    # "isVisiblePath":Z
    .restart local v19    # "originalData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 290
    .end local v8    # "i":I
    .end local v14    # "isVisiblePath":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

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
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "baseWidth"    # I
    .param p3, "baseHeight"    # I
    .param p4, "clipRect"    # Landroid/graphics/Rect;
    .param p5, "flags"    # I

    .prologue
    .line 390
    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_a

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 394
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_IsFixedPreviewUpdateNeeded:Z

    if-eqz v4, :cond_2

    .line 396
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v10, v4, -0x1

    .line 397
    .local v10, "endIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    if-eqz v4, :cond_1

    .line 398
    add-int/lit8 v10, v10, -0x1

    .line 399
    :cond_1
    if-ltz v10, :cond_8

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_7

    .line 403
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    .line 404
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_FixedPreviewCanvas:Landroid/graphics/Canvas;

    .line 408
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_FixedPreviewCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewScale:F

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->drawPaths(Landroid/graphics/Canvas;IIFII)V

    .line 409
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_IsFixedPreviewUpdateNeeded:Z

    .line 414
    .end local v10    # "endIndex":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_IsPreviewUpdateNeeded:Z

    if-eqz v4, :cond_6

    .line 416
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_9

    .line 418
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    .line 419
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewCanvas:Landroid/graphics/Canvas;

    .line 423
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 425
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    if-eqz v4, :cond_5

    .line 426
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewScale:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    move-object/from16 v11, p0

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v11 .. v17}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->drawPaths(Landroid/graphics/Canvas;IIFII)V

    .line 427
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_IsPreviewUpdateNeeded:Z

    .line 429
    :cond_6
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 436
    :goto_3
    return-void

    .line 407
    .restart local v10    # "endIndex":I
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_FixedPreviewCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 429
    .end local v10    # "endIndex":I
    :catchall_0
    move-exception v4

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 411
    .restart local v10    # "endIndex":I
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_FixedPreviewCanvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_2

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_FixedPreviewCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    .line 422
    .end local v10    # "endIndex":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 435
    :cond_a
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->drawPaths(Landroid/graphics/Canvas;IIF)V

    goto :goto_3
.end method

.method protected onPrepare(Lcom/oneplus/gallery/media/PhotoMedia;Landroid/graphics/Bitmap;)Z
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery/media/PhotoMedia;
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 444
    if-nez p1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v1, "onPrepare() - No media to prepare"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 471
    :goto_0
    return v0

    .line 449
    :cond_0
    if-nez p2, :cond_1

    .line 451
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v1, "onPrepare() - No preview bitmap"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 452
    goto :goto_0

    .line 456
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery/media/PhotoMedia;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    .line 457
    invoke-interface {p1}, Lcom/oneplus/gallery/media/PhotoMedia;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoHeight:I

    .line 460
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PhotoWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewScale:F

    .line 463
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 464
    .local v2, "previewWidth":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 465
    .local v3, "previewHeight":I
    mul-int v0, v2, v3

    new-array v4, v0, [I

    .line 466
    .local v4, "previewPixels":[I
    invoke-static {v4}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 467
    new-instance v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;

    iget v5, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewScale:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;-><init>(Lcom/oneplus/gallery/editor/PhotoEditorDrawing;II[IF)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreparationTask:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;

    .line 468
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreparationTask:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 471
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 503
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreparationTask:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreparationTask:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;->cancel(Z)Z

    .line 506
    iput-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreparationTask:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PreparationTask;

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->clearPaths()V

    .line 513
    iput-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_FixedPreviewBitmap:Landroid/graphics/Bitmap;

    .line 514
    iput-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_FixedPreviewCanvas:Landroid/graphics/Canvas;

    .line 515
    iput-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    .line 516
    iput-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PreviewCanvas:Landroid/graphics/Canvas;

    .line 519
    invoke-super {p0}, Lcom/oneplus/gallery/editor/PhotoEditorOverlay;->onRelease()V

    .line 520
    return-void
.end method

.method public removeLastPath()V
    .locals 3

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->verifyAccess()V

    .line 608
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->completePath()V

    .line 609
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_IsFixedPreviewUpdateNeeded:Z

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_IsPreviewUpdateNeeded:Z

    .line 616
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 619
    :cond_0
    monitor-exit v1

    .line 620
    return-void

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startPath(Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;IF)Z
    .locals 5
    .param p1, "fill"    # Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;
    .param p2, "color"    # I
    .param p3, "thickness"    # F

    .prologue
    const/4 v1, 0x0

    .line 633
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->verifyAccess()V

    .line 634
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->READY:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    if-eq v2, v3, :cond_0

    .line 636
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPath() - Current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :goto_0
    return v1

    .line 639
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x200

    if-lt v2, v3, :cond_1

    .line 641
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v3, "startPath() - Maximum path count reached"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_1
    if-nez p1, :cond_2

    .line 648
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

    const-string v3, "startPath() - No fill type"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 651
    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-lez v2, :cond_3

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 653
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->TAG:Ljava/lang/String;

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

    .line 658
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->completePath()V

    .line 661
    new-instance v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;-><init>(Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;IF)V

    .line 662
    .local v0, "pathInfo":Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 664
    :try_start_0
    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_CurrentPathInfo:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;

    .line 665
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing;->m_PathInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    monitor-exit v2

    .line 667
    const/4 v1, 0x1

    goto :goto_0

    .line 666
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
