.class public Landroid/graphics/Canvas;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Canvas$EdgeType;,
        Landroid/graphics/Canvas$NoImagePreloadHolder;,
        Landroid/graphics/Canvas$VertexMode;
    }
.end annotation


# static fields
.field public static final ALL_SAVE_FLAG:I = 0x1f

.field public static final CLIP_SAVE_FLAG:I = 0x2

.field public static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field private static final DBG:Z

.field public static final FULL_COLOR_LAYER_SAVE_FLAG:I = 0x8

.field public static final HAS_ALPHA_LAYER_SAVE_FLAG:I = 0x4

.field public static final MATRIX_SAVE_FLAG:I = 0x1

.field private static final MAXMIMUM_BITMAP_SIZE:I = 0x7ffe

.field private static final MAX_BITMAP_SIZE:I = 0x6400000

.field private static final NATIVE_ALLOCATION_SIZE:J = 0x20dL

.field private static final TAG:Ljava/lang/String; = "Canvas"

.field public static sCompatibilityRestore:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field protected mDensity:I

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private mFinalizer:Ljava/lang/Runnable;

.field protected mNativeCanvasWrapper:J

.field protected mScreenDensity:I


# direct methods
.method static synthetic -wrap0()J
    .locals 2

    invoke-static {}, Landroid/graphics/Canvas;->getNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/graphics/Canvas;->DBG:Z

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 88
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 119
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {v1}, Landroid/graphics/Canvas;->initRaster(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 122
    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 123
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 122
    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    .line 118
    :goto_0
    return-void

    .line 125
    :cond_0
    iput-object v1, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 5
    .param p1, "nativeCanvas"    # J

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 88
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 152
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 155
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 156
    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 157
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 156
    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    .line 158
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 88
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Immutable bitmap passed to Canvas constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 143
    invoke-static {p1}, Landroid/graphics/Canvas;->initRaster(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 144
    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 145
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 144
    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    .line 146
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 147
    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 138
    return-void
.end method

.method protected static checkRange(III)V
    .locals 1
    .param p0, "length"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 1537
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int v0, p1, p2

    if-le v0, p0, :cond_1

    .line 1538
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1536
    :cond_1
    return-void
.end method

.method public static native freeCaches()V
.end method

.method public static native freeTextLayoutCaches()V
.end method

.method private static native getNativeFinalizer()J
.end method

.method private static native initRaster(Landroid/graphics/Bitmap;)J
.end method

.method private static native nativeDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V
.end method

.method private static native nativeDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V
.end method

.method private static native nativeDrawVertices(JII[FI[FI[II[SIIJ)V
.end method

.method private static native nativeSetDrawFilter(JJ)V
.end method

.method private static native native_clipPath(JJI)Z
.end method

.method private static native native_clipRect(JFFFFI)Z
.end method

.method private static native native_clipRegion(JJI)Z
.end method

.method private static native native_concat(JJ)V
.end method

.method private static native native_drawArc(JFFFFFFZJ)V
.end method

.method private native native_drawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V
.end method

.method private native native_drawBitmap(JLandroid/graphics/Bitmap;FFJIII)V
.end method

.method private static native native_drawBitmap(J[IIIFFIIZJ)V
.end method

.method private static native native_drawCircle(JFFFJ)V
.end method

.method private static native native_drawColor(JII)V
.end method

.method private static native native_drawLine(JFFFFJ)V
.end method

.method private static native native_drawLines(J[FIIJ)V
.end method

.method private native native_drawNinePatch(JJJFFFFJII)V
.end method

.method private static native native_drawOval(JFFFFJ)V
.end method

.method private static native native_drawPaint(JJ)V
.end method

.method private static native native_drawPath(JJJ)V
.end method

.method private static native native_drawPoint(JFFJ)V
.end method

.method private static native native_drawPoints(J[FIIJ)V
.end method

.method private static native native_drawRect(JFFFFJ)V
.end method

.method private static native native_drawRegion(JJJ)V
.end method

.method private static native native_drawRoundRect(JFFFFFFJ)V
.end method

.method private static native native_drawText(JLjava/lang/String;IIFFIJJ)V
.end method

.method private static native native_drawText(J[CIIFFIJJ)V
.end method

.method private static native native_drawTextOnPath(JLjava/lang/String;JFFIJJ)V
.end method

.method private static native native_drawTextOnPath(J[CIIJFFIJJ)V
.end method

.method private static native native_drawTextRun(JLjava/lang/String;IIIIFFZJJ)V
.end method

.method private static native native_drawTextRun(J[CIIIIFFZJJ)V
.end method

.method private static native native_getCTM(JJ)V
.end method

.method private static native native_getClipBounds(JLandroid/graphics/Rect;)Z
.end method

.method private static native native_getHeight(J)I
.end method

.method private static native native_getSaveCount(J)I
.end method

.method private static native native_getWidth(J)I
.end method

.method private static native native_isOpaque(J)Z
.end method

.method private static native native_quickReject(JFFFF)Z
.end method

.method private static native native_quickReject(JJ)Z
.end method

.method private static native native_restore(JZ)V
.end method

.method private static native native_restoreToCount(JIZ)V
.end method

.method private static native native_rotate(JF)V
.end method

.method private static native native_save(JI)I
.end method

.method private static native native_saveLayer(JFFFFJI)I
.end method

.method private static native native_saveLayerAlpha(JFFFFII)I
.end method

.method private static native native_scale(JFF)V
.end method

.method private static native native_setBitmap(JLandroid/graphics/Bitmap;)V
.end method

.method private static native native_setHighContrastText(JZ)V
.end method

.method private static native native_setMatrix(JJ)V
.end method

.method private static native native_skew(JFF)V
.end method

.method private static native native_translate(JFF)V
.end method

.method private reScaleIfNeeded(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v5, 0x6400000

    .line 2006
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 2007
    .local v0, "bitmapSize":I
    if-le v0, v5, :cond_0

    .line 2008
    const/high16 v5, 0x6400000

    div-int v5, v0, v5

    add-int/lit8 v3, v5, 0x1

    .line 2009
    .local v3, "scaleRatio":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v4, v5, v3

    .line 2010
    .local v4, "scaleWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int v2, v5, v3

    .line 2011
    .local v2, "scaleHeight":I
    const/4 v5, 0x1

    invoke-static {p1, v4, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2012
    sget-boolean v5, Landroid/graphics/Canvas;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "Canvas"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bitmap canvas rescaled with ratio("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") to size("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "), res("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2022
    .end local v0    # "bitmapSize":I
    .end local v2    # "scaleHeight":I
    .end local v3    # "scaleRatio":I
    .end local v4    # "scaleWidth":I
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 2014
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 2015
    .local v1, "err":Ljava/lang/Throwable;
    const-string/jumbo v5, "Canvas"

    const-string/jumbo v6, "reScaleIfNeeded:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2016
    if-eqz p1, :cond_1

    .line 2017
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2018
    const/4 p1, 0x0

    .line 2020
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method


# virtual methods
.method public clipPath(Landroid/graphics/Path;)Z
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 810
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 5
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 800
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    iget v4, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->native_clipPath(JJI)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFF)Z
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 770
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 771
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v2, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 770
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 753
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v6, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(IIII)Z
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 788
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    .line 789
    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    .line 788
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 732
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 733
    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    .line 732
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 708
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 709
    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    .line 708
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 720
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 721
    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    .line 720
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 695
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 696
    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    .line 695
    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_clipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 847
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 5
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "op"    # Landroid/graphics/Region$Op;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 829
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Region;->ni()J

    move-result-wide v2

    iget v4, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->native_clipRegion(JJI)Z

    move-result v0

    return v0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 633
    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->native_concat(JJ)V

    .line 632
    :cond_0
    return-void
.end method

.method public drawARGB(IIII)V
    .locals 1
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    .line 994
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 993
    return-void
.end method

.method public drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1230
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 1231
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 1230
    invoke-static/range {v0 .. v10}, Landroid/graphics/Canvas;->native_drawArc(JFFFFFFZJ)V

    .line 1229
    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1203
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 1202
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1345
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 1346
    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 1347
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    iget v8, p0, Landroid/graphics/Canvas;->mDensity:I

    iget v9, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v10, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 1346
    invoke-direct/range {v0 .. v10}, Landroid/graphics/Canvas;->native_drawBitmap(JLandroid/graphics/Bitmap;FFJIII)V

    .line 1344
    return-void

    .line 1347
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1529
    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v4

    .line 1530
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    move-object v3, p1

    .line 1529
    invoke-static/range {v1 .. v7}, Landroid/graphics/Canvas;->nativeDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V

    .line 1528
    return-void

    .line 1530
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 24
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1421
    if-nez p3, :cond_0

    .line 1422
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1424
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 1428
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Canvas;->reScaleIfNeeded(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1429
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1430
    :cond_1
    return-void

    .line 1434
    :cond_2
    if-nez p4, :cond_3

    const-wide/16 v16, 0x0

    .line 1437
    .local v16, "nativePaint":J
    :goto_0
    if-nez p2, :cond_4

    .line 1438
    const/16 v23, 0x0

    .local v23, "top":I
    const/16 v21, 0x0

    .line 1439
    .local v21, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 1440
    .local v22, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 1448
    .local v20, "bottom":I
    :goto_1
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move/from16 v0, v21

    int-to-float v8, v0

    move/from16 v0, v23

    int-to-float v9, v0

    move/from16 v0, v22

    int-to-float v10, v0

    move/from16 v0, v20

    int-to-float v11, v0

    .line 1449
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v12, v4

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v13, v4

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v14, v4

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Canvas;->mScreenDensity:I

    move/from16 v18, v0

    .line 1450
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v19, v0

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 1448
    invoke-direct/range {v4 .. v19}, Landroid/graphics/Canvas;->native_drawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    .line 1420
    return-void

    .line 1434
    .end local v16    # "nativePaint":J
    .end local v20    # "bottom":I
    .end local v21    # "left":I
    .end local v22    # "right":I
    .end local v23    # "top":I
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    .restart local v16    # "nativePaint":J
    goto :goto_0

    .line 1442
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 1443
    .restart local v21    # "left":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    .line 1444
    .restart local v22    # "right":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 1445
    .restart local v23    # "top":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    .restart local v20    # "bottom":I
    goto :goto_1
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 18
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1374
    if-nez p3, :cond_0

    .line 1375
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1377
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 1378
    if-nez p4, :cond_1

    const-wide/16 v14, 0x0

    .line 1381
    .local v14, "nativePaint":J
    :goto_0
    if-nez p2, :cond_2

    .line 1382
    const/4 v7, 0x0

    .local v7, "top":F
    const/4 v6, 0x0

    .line 1383
    .local v6, "left":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v8, v2

    .line 1384
    .local v8, "right":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v9, v2

    .line 1392
    .local v9, "bottom":F
    :goto_1
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 1393
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Canvas;->mScreenDensity:I

    move/from16 v16, v0

    .line 1394
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v17, v0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 1392
    invoke-direct/range {v2 .. v17}, Landroid/graphics/Canvas;->native_drawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    .line 1373
    return-void

    .line 1378
    .end local v6    # "left":F
    .end local v7    # "top":F
    .end local v8    # "right":F
    .end local v9    # "bottom":F
    .end local v14    # "nativePaint":J
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    .restart local v14    # "nativePaint":J
    goto :goto_0

    .line 1386
    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    .line 1387
    .restart local v6    # "left":F
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v2

    .line 1388
    .restart local v8    # "right":F
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    .line 1389
    .restart local v7    # "top":F
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v2

    .restart local v9    # "bottom":F
    goto :goto_1
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1481
    if-gez p6, :cond_0

    .line 1482
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1484
    :cond_0
    if-gez p7, :cond_1

    .line 1485
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1487
    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move/from16 v0, p6

    if-ge v2, v0, :cond_2

    .line 1488
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1490
    :cond_2
    add-int/lit8 v2, p7, -0x1

    mul-int v2, v2, p3

    add-int v14, p2, v2

    .line 1491
    .local v14, "lastScanline":I
    move-object/from16 v0, p1

    array-length v15, v0

    .line 1492
    .local v15, "length":I
    if-ltz p2, :cond_3

    add-int v2, p2, p6

    if-le v2, v15, :cond_4

    .line 1494
    :cond_3
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1492
    :cond_4
    if-ltz v14, :cond_3

    .line 1493
    add-int v2, v14, p6

    if-gt v2, v15, :cond_3

    .line 1497
    if-eqz p6, :cond_5

    if-nez p7, :cond_6

    .line 1498
    :cond_5
    return-void

    .line 1501
    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 1502
    if-eqz p9, :cond_7

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    :goto_0
    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 1501
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawBitmap(J[IIIFFIIZJ)V

    .line 1479
    return-void

    .line 1502
    :cond_7
    const-wide/16 v12, 0x0

    goto :goto_0
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1517
    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 1515
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1571
    or-int v1, p2, p3

    or-int v1, v1, p5

    or-int v1, v1, p7

    if-gez v1, :cond_0

    .line 1572
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1574
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 1575
    :cond_1
    return-void

    .line 1577
    :cond_2
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    mul-int v12, v1, v2

    .line 1579
    .local v12, "count":I
    move-object/from16 v0, p4

    array-length v1, v0

    mul-int/lit8 v2, v12, 0x2

    move/from16 v0, p5

    invoke-static {v1, v0, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1580
    if-eqz p6, :cond_3

    .line 1582
    move-object/from16 v0, p6

    array-length v1, v0

    move/from16 v0, p7

    invoke-static {v1, v0, v12}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1584
    :cond_3
    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 1586
    if-eqz p8, :cond_4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    :goto_0
    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 1584
    invoke-static/range {v1 .. v11}, Landroid/graphics/Canvas;->nativeDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V

    .line 1570
    return-void

    .line 1586
    :cond_4
    const-wide/16 v10, 0x0

    goto :goto_0
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1175
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawCircle(JFFFJ)V

    .line 1174
    return-void
.end method

.method public drawColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 1004
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iget v2, v2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Canvas;->native_drawColor(JII)V

    .line 1003
    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1015
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Canvas;->native_drawColor(JII)V

    .line 1014
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1078
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawLine(JFFFFJ)V

    .line 1077
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1098
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawLines(J[FIIJ)V

    .line 1097
    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1102
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 1101
    return-void
.end method

.method public drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1161
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawOval(JFFFFJ)V

    .line 1160
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1150
    if-nez p1, :cond_0

    .line 1151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1153
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 1149
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1026
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->native_drawPaint(JJ)V

    .line 1025
    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 18
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1299
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1300
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 1301
    if-nez p3, :cond_0

    const-wide/16 v14, 0x0

    .line 1302
    .local v14, "nativePaint":J
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v6

    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/graphics/NinePatch;->mNativeChunk:J

    .line 1303
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v12, v3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v3

    .line 1304
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Canvas;->mDensity:I

    move/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v17

    move-object/from16 v3, p0

    .line 1302
    invoke-direct/range {v3 .. v17}, Landroid/graphics/Canvas;->native_drawNinePatch(JJJFFFFJII)V

    .line 1298
    return-void

    .line 1301
    .end local v14    # "nativePaint":J
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    .restart local v14    # "nativePaint":J
    goto :goto_0
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 18
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1317
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1318
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 1319
    if-nez p3, :cond_0

    const-wide/16 v14, 0x0

    .line 1320
    .local v14, "nativePaint":J
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v6

    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/graphics/NinePatch;->mNativeChunk:J

    .line 1321
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    .line 1322
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Canvas;->mDensity:I

    move/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v17

    move-object/from16 v3, p0

    .line 1320
    invoke-direct/range {v3 .. v17}, Landroid/graphics/Canvas;->native_drawNinePatch(JJJFFFFJII)V

    .line 1316
    return-void

    .line 1319
    .end local v14    # "nativePaint":J
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    .restart local v14    # "nativePaint":J
    goto :goto_0
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1268
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    .line 1269
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-wide v2, v2, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawRegion(JJJ)V

    .line 1267
    :goto_0
    return-void

    .line 1271
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawPath(JJJ)V

    goto :goto_0
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 1
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 1953
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 1954
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1955
    .local v0, "restoreCount":I
    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 1956
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1952
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 1976
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 1977
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1978
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 1979
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1980
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1979
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1982
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1983
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 1975
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 1963
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 1964
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1965
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 1966
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1968
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1969
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 1962
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1061
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawPoint(JFFJ)V

    .line 1060
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1047
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawPoints(J[FIIJ)V

    .line 1046
    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1054
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1053
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1894
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 1893
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1871
    if-ltz p2, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 1872
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1871
    :cond_1
    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_0

    .line 1874
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p3, :cond_2

    .line 1875
    add-int v2, p2, v7

    mul-int/lit8 v0, v7, 0x2

    aget v4, p4, v0

    mul-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v5, p4, v0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1874
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1870
    :cond_2
    return-void
.end method

.method public drawRGB(III)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 981
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 980
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1140
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawRect(JFFFFJ)V

    .line 1139
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1125
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1124
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1113
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 1114
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    .line 1113
    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawRect(JFFFFJ)V

    .line 1112
    return-void
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1257
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-static/range {v0 .. v9}, Landroid/graphics/Canvas;->native_drawRoundRect(JFFFFFFJ)V

    .line 1256
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1244
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 1243
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1724
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 1725
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1727
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_1

    .line 1728
    instance-of v2, p1, Landroid/text/SpannableString;

    .line 1727
    if-eqz v2, :cond_2

    .line 1729
    :cond_1
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1730
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 1729
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(JLjava/lang/String;IIFFIJJ)V

    .line 1723
    :goto_0
    return-void

    .line 1731
    :cond_2
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 1732
    check-cast v2, Landroid/text/GraphicsOperations;

    move-object v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1735
    :cond_3
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v4

    .line 1736
    .local v4, "buf":[C
    const/4 v2, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {p1, v0, v1, v4, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1737
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sub-int v6, p3, p2

    .line 1738
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1737
    const/4 v5, 0x0

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(J[CIIFFIJJ)V

    .line 1739
    invoke-static {v4}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1685
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 1686
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p4

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1685
    const/4 v5, 0x0

    move-object v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(JLjava/lang/String;IIFFIJJ)V

    .line 1684
    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1702
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 1703
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1705
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 1706
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 1705
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(JLjava/lang/String;IIFFIJJ)V

    .line 1701
    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1667
    or-int v2, p2, p3

    add-int v3, p2, p3

    or-int/2addr v2, v3

    .line 1668
    array-length v3, p1

    sub-int v3, v3, p2

    sub-int v3, v3, p3

    .line 1667
    or-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 1669
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1671
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 1672
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 1671
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawText(J[CIIFFIJJ)V

    .line 1666
    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1935
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1936
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v5

    .line 1937
    move-object/from16 v0, p5

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p5

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move/from16 v7, p3

    move/from16 v8, p4

    .line 1936
    invoke-static/range {v2 .. v13}, Landroid/graphics/Canvas;->native_drawTextOnPath(JLjava/lang/String;JFFIJJ)V

    .line 1934
    :cond_0
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1912
    if-ltz p2, :cond_0

    add-int v2, p2, p3

    move-object/from16 v0, p1

    array-length v3, v0

    if-le v2, v3, :cond_1

    .line 1913
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1915
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 1916
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v7

    .line 1917
    move-object/from16 v0, p7

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    move-object/from16 v0, p7

    iget-wide v14, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v9, p5

    move/from16 v10, p6

    .line 1915
    invoke-static/range {v2 .. v15}, Landroid/graphics/Canvas;->native_drawTextOnPath(J[CIIJFFIJJ)V

    .line 1911
    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 18
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1823
    if-nez p1, :cond_0

    .line 1824
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "text is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1826
    :cond_0
    if-nez p9, :cond_1

    .line 1827
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "paint is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1829
    :cond_1
    or-int v4, p2, p3

    or-int v4, v4, p4

    or-int v4, v4, p5

    sub-int v5, p2, p4

    or-int/2addr v4, v5

    sub-int v5, p3, p2

    or-int/2addr v4, v5

    .line 1830
    sub-int v5, p5, p3

    .line 1829
    or-int/2addr v4, v5

    .line 1830
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int v5, v5, p5

    .line 1829
    or-int/2addr v4, v5

    if-gez v4, :cond_2

    .line 1831
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 1834
    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_3

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/SpannedString;

    if-nez v4, :cond_3

    .line 1835
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/SpannableString;

    .line 1834
    if-eqz v4, :cond_4

    .line 1836
    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1837
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    move-object/from16 v0, p9

    iget-wide v0, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide/from16 v16, v0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    .line 1836
    invoke-static/range {v4 .. v17}, Landroid/graphics/Canvas;->native_drawTextRun(JLjava/lang/String;IIIIFFZJJ)V

    .line 1821
    :goto_0
    return-void

    .line 1838
    :cond_4
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/GraphicsOperations;

    if-eqz v4, :cond_5

    move-object/from16 v4, p1

    .line 1839
    check-cast v4, Landroid/text/GraphicsOperations;

    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    invoke-interface/range {v4 .. v13}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/Canvas;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1842
    :cond_5
    sub-int v10, p5, p4

    .line 1843
    .local v10, "contextLen":I
    sub-int v8, p3, p2

    .line 1844
    .local v8, "len":I
    invoke-static {v10}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v6

    .line 1845
    .local v6, "buf":[C
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2, v6, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1846
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sub-int v7, p2, p4

    .line 1847
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    move-object/from16 v0, p9

    iget-wide v0, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide/from16 v16, v0

    const/4 v9, 0x0

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    .line 1846
    invoke-static/range {v4 .. v17}, Landroid/graphics/Canvas;->native_drawTextRun(J[CIIIIFFZJJ)V

    .line 1848
    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1769
    if-nez p1, :cond_0

    .line 1770
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "text is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1772
    :cond_0
    if-nez p9, :cond_1

    .line 1773
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "paint is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1775
    :cond_1
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    sub-int v3, p2, p4

    or-int/2addr v2, v3

    .line 1776
    add-int v3, p4, p5

    add-int v4, p2, p3

    sub-int/2addr v3, v4

    .line 1775
    or-int/2addr v2, v3

    .line 1777
    move-object/from16 v0, p1

    array-length v3, v0

    add-int v4, p4, p5

    sub-int/2addr v3, v4

    .line 1775
    or-int/2addr v2, v3

    if-gez v2, :cond_2

    .line 1778
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1781
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 1782
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    move-object/from16 v0, p9

    iget-wide v14, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 1781
    invoke-static/range {v2 .. v15}, Landroid/graphics/Canvas;->native_drawTextRun(J[CIIIIFFZJJ)V

    .line 1767
    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 17
    .param p1, "mode"    # Landroid/graphics/Canvas$VertexMode;
    .param p2, "vertexCount"    # I
    .param p3, "verts"    # [F
    .param p4, "vertOffset"    # I
    .param p5, "texs"    # [F
    .param p6, "texOffset"    # I
    .param p7, "colors"    # [I
    .param p8, "colorOffset"    # I
    .param p9, "indices"    # [S
    .param p10, "indexOffset"    # I
    .param p11, "indexCount"    # I
    .param p12, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1638
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1639
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1640
    return-void

    .line 1642
    :cond_0
    if-eqz p5, :cond_1

    .line 1643
    move-object/from16 v0, p5

    array-length v2, v0

    move/from16 v0, p6

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1645
    :cond_1
    if-eqz p7, :cond_2

    .line 1646
    move-object/from16 v0, p7

    array-length v2, v0

    div-int/lit8 v3, p2, 0x2

    move/from16 v0, p8

    invoke-static {v2, v0, v3}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1648
    :cond_2
    if-eqz p9, :cond_3

    .line 1649
    move-object/from16 v0, p9

    array-length v2, v0

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-static {v2, v0, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1651
    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 1653
    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v15

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    .line 1651
    invoke-static/range {v2 .. v16}, Landroid/graphics/Canvas;->nativeDrawVertices(JII[FI[FI[II[SIIJ)V

    .line 1637
    return-void
.end method

.method public final getClipBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 967
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 968
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 969
    return-object v0
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 958
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->native_getClipBounds(JLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getDensity()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method protected getGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_getHeight(J)I

    move-result v0

    return v0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 681
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 683
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 684
    return-object v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "ctm"    # Landroid/graphics/Matrix;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 666
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->native_getCTM(JJ)V

    .line 665
    return-void
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    .prologue
    .line 314
    const/16 v0, 0x7ffe

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    .prologue
    .line 303
    const/16 v0, 0x7ffe

    return v0
.end method

.method public getNativeCanvasWrapper()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    return-wide v0
.end method

.method public getSaveCount()I
    .locals 2

    .prologue
    .line 539
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_getSaveCount(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_getWidth(J)I

    move-result v0

    return v0
.end method

.method public insertInorderBarrier()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public insertReorderBarrier()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_isOpaque(J)Z

    move-result v0

    return v0
.end method

.method public isRecordingFor(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "type"    # Landroid/graphics/Canvas$EdgeType;

    .prologue
    .line 944
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_quickReject(JFFFF)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 4
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "type"    # Landroid/graphics/Canvas$EdgeType;

    .prologue
    .line 919
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->native_quickReject(JJ)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "type"    # Landroid/graphics/Canvas$EdgeType;

    .prologue
    .line 899
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 900
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 899
    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_quickReject(JFFFF)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1992
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 1993
    iget-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1994
    iget-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1995
    iput-object v2, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    .line 1991
    :cond_0
    return-void
.end method

.method public restore()V
    .locals 4

    .prologue
    .line 530
    sget-boolean v1, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 531
    .local v0, "throwOnUnderflow":Z
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v2, v3, v0}, Landroid/graphics/Canvas;->native_restore(JZ)V

    .line 529
    return-void

    .line 530
    .end local v0    # "throwOnUnderflow":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "throwOnUnderflow":Z
    goto :goto_0
.end method

.method public restoreToCount(I)V
    .locals 4
    .param p1, "saveCount"    # I

    .prologue
    .line 556
    sget-boolean v1, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 557
    .local v0, "throwOnUnderflow":Z
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v2, v3, p1, v0}, Landroid/graphics/Canvas;->native_restoreToCount(JIZ)V

    .line 555
    return-void

    .line 556
    .end local v0    # "throwOnUnderflow":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "throwOnUnderflow":Z
    goto :goto_0
.end method

.method public rotate(F)V
    .locals 2
    .param p1, "degrees"    # F

    .prologue
    .line 600
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->native_rotate(JF)V

    .line 599
    return-void
.end method

.method public final rotate(FFF)V
    .locals 2
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 611
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 612
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 613
    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 610
    return-void
.end method

.method public save()I
    .locals 3

    .prologue
    .line 381
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_save(JI)I

    move-result v0

    return v0
.end method

.method public save(I)I
    .locals 2
    .param p1, "saveFlags"    # I

    .prologue
    .line 401
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->native_save(JI)I

    move-result v0

    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;)I
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 462
    const/16 v6, 0x1f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "saveFlags"    # I

    .prologue
    .line 453
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 454
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v8, p6

    .line 453
    invoke-static/range {v0 .. v8}, Landroid/graphics/Canvas;->native_saveLayer(JFFFFJI)I

    move-result v0

    return v0

    .line 454
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 445
    const/16 v0, 0x1f

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "saveFlags"    # I

    .prologue
    .line 435
    if-nez p1, :cond_0

    .line 436
    new-instance p1, Landroid/graphics/RectF;

    .end local p1    # "bounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 438
    .restart local p1    # "bounds":Landroid/graphics/RectF;
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(FFFFI)I
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "alpha"    # I

    .prologue
    .line 521
    const/16 v6, 0x1f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "alpha"    # I
    .param p6, "saveFlags"    # I

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 513
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_saveLayerAlpha(JFFFFII)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;I)I
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "alpha"    # I

    .prologue
    .line 504
    const/16 v0, 0x1f

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "alpha"    # I
    .param p3, "saveFlags"    # I

    .prologue
    .line 494
    if-nez p1, :cond_0

    .line 495
    new-instance p1, Landroid/graphics/RectF;

    .end local p1    # "bounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 497
    .restart local p1    # "bounds":Landroid/graphics/RectF;
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    return v0
.end method

.method public scale(FF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 577
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->native_scale(JFF)V

    .line 576
    return-void
.end method

.method public final scale(FFFF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 589
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 590
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 591
    neg-float v0, p3

    neg-float v1, p4

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 588
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t set a bitmap device on a HW accelerated canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    if-nez p1, :cond_1

    .line 202
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_setBitmap(JLandroid/graphics/Bitmap;)V

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 214
    :goto_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 196
    return-void

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 208
    :cond_2
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 210
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->native_setBitmap(JLandroid/graphics/Bitmap;)V

    .line 211
    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    goto :goto_0
.end method

.method public setDensity(I)V
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 284
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 287
    :cond_0
    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 283
    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 4
    .param p1, "filter"    # Landroid/graphics/DrawFilter;

    .prologue
    .line 855
    const-wide/16 v0, 0x0

    .line 856
    .local v0, "nativeFilter":J
    if-eqz p1, :cond_0

    .line 857
    iget-wide v0, p1, Landroid/graphics/DrawFilter;->mNativeInt:J

    .line 859
    :cond_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    .line 860
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Canvas;->nativeSetDrawFilter(JJ)V

    .line 854
    return-void
.end method

.method public setHighContrastText(Z)V
    .locals 2
    .param p1, "highContrastText"    # Z

    .prologue
    .line 219
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->native_setHighContrastText(JZ)V

    .line 218
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 650
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 651
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 650
    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Canvas;->native_setMatrix(JJ)V

    .line 649
    return-void

    .line 651
    :cond_0
    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    goto :goto_0
.end method

.method public setScreenDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .prologue
    .line 292
    iput p1, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 291
    return-void
.end method

.method public skew(FF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 623
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->native_skew(JFF)V

    .line 622
    return-void
.end method

.method protected throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1279
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Canvas: trying to use a recycled bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1282
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 1283
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    .line 1282
    if-eqz v0, :cond_1

    .line 1284
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Canvas: trying to use a non-premultiplied bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1278
    :cond_1
    return-void
.end method

.method public translate(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 567
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->native_translate(JFF)V

    .line 566
    return-void
.end method
