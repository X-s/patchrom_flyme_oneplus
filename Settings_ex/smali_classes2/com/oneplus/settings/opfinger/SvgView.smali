.class public Lcom/oneplus/settings/opfinger/SvgView;
.super Landroid/view/View;
.source "SvgView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SvgView"


# instance fields
.field private mDuration:I

.field private mFadeFactor:F

.field private mHaveMoved:Z

.field private mLoader:Ljava/lang/Thread;

.field private mOffsetY:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mParallax:F

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase:F

.field private final mSvg:Lcom/oneplus/settings/opfinger/SvgHelper;

.field private mSvgAnimator:Landroid/animation/ObjectAnimator;

.field private mSvgExceptionAnimator:Landroid/animation/ObjectAnimator;

.field private final mSvgLock:Ljava/lang/Object;

.field private mSvgResetAnimator:Landroid/animation/ObjectAnimator;

.field private mSvgResource:I


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/opfinger/SvgView;)Lcom/oneplus/settings/opfinger/SvgHelper;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvg:Lcom/oneplus/settings/opfinger/SvgHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/opfinger/SvgView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/opfinger/SvgView;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResource:I

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/opfinger/SvgView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/opfinger/SvgView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/SvgView;->updatePathsPhaseLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/opfinger/SvgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v2, Lcom/oneplus/settings/opfinger/SvgHelper;

    iget-object v4, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Lcom/oneplus/settings/opfinger/SvgHelper;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvg:Lcom/oneplus/settings/opfinger/SvgHelper;

    .line 35
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgLock:Ljava/lang/Object;

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    .line 42
    iput v7, p0, Lcom/oneplus/settings/opfinger/SvgView;->mParallax:F

    .line 49
    iput-boolean v5, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    .line 58
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    sget-object v2, Lcom/android/settings_ex/R$styleable;->SvgView:[I

    .line 60
    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 63
    .local v8, "a":Landroid/content/res/TypedArray;
    if-eqz v8, :cond_0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 68
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    iget v4, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit8 v4, v4, 0x32

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    .line 71
    const/high16 v5, -0x1000000

    .line 70
    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    const/4 v2, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v8, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    .line 73
    const/4 v2, 0x3

    const/16 v4, 0xfa0

    invoke-virtual {v8, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    .line 74
    const/4 v2, 0x4

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v8, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mFadeFactor:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v9    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    if-eqz v8, :cond_1

    .line 78
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 88
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 90
    const/high16 v2, -0x10000

    const v4, -0xff0100

    const v5, -0xffff01

    const/16 v7, -0x100

    filled-new-array {v2, v4, v5, v7}, [I

    move-result-object v5

    .line 92
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v3

    .line 88
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 55
    .local v0, "mShader":Landroid/graphics/Shader;
    return-void

    .line 76
    .end local v0    # "mShader":Landroid/graphics/Shader;
    :catchall_0
    move-exception v1

    .line 77
    if-eqz v8, :cond_2

    .line 78
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    :cond_2
    throw v1
.end method

.method private updatePathsPhaseLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 107
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 108
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 109
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;

    .line 110
    .local v2, "svgPath":Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;
    iget-object v3, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 111
    iget-object v3, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->measure:Landroid/graphics/PathMeasure;

    iget v4, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->length:F

    iget v5, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    mul-float/2addr v4, v5

    .line 112
    iget-object v5, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    const/4 v6, 0x1

    .line 111
    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 114
    iget-object v3, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    invoke-virtual {v3, v7, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "svgPath":Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;
    :cond_0
    return-void
.end method


# virtual methods
.method public getParallax()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mParallax:F

    return v0
.end method

.method public getPhase()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    return v0
.end method

.method public getSvgResource()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResource:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    iget-object v5, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 179
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 180
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/oneplus/settings/opfinger/SvgView;->mOffsetY:F

    add-float/2addr v6, v7

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    iget-object v4, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 182
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 183
    iget-object v4, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;

    .line 186
    .local v3, "svgPath":Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;
    iget v4, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    iget v6, p0, Lcom/oneplus/settings/opfinger/SvgView;->mFadeFactor:F

    mul-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v4, v6

    float-to-int v0, v4

    .line 187
    .local v0, "alpha":I
    iget-object v4, v3, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->paint:Landroid/graphics/Paint;

    int-to-float v6, v0

    iget v7, p0, Lcom/oneplus/settings/opfinger/SvgView;->mParallax:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    iget-object v4, v3, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    iget-object v6, v3, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "alpha":I
    .end local v3    # "svgPath":Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 175
    return-void

    .line 178
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 151
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mLoader:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mLoader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/oneplus/settings/opfinger/SvgView$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/settings/opfinger/SvgView$1;-><init>(Lcom/oneplus/settings/opfinger/SvgView;II)V

    .line 170
    const-string/jumbo v3, "SVG Loader"

    .line 159
    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mLoader:Ljava/lang/Thread;

    .line 171
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mLoader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 148
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "SvgView"

    const-string/jumbo v2, "Unexpected error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 253
    if-eqz p1, :cond_1

    .line 254
    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 255
    const-string/jumbo v0, "phase"

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 257
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 258
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 267
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    .line 268
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->invalidate()V

    .line 252
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 261
    const-string/jumbo v0, "phase"

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 264
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 255
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 261
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public resetWithAnimation()V
    .locals 4

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 286
    const-string/jumbo v0, "phase"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 288
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    .line 284
    return-void

    .line 286
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public resetWithoutAnimation()V
    .locals 4

    .prologue
    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 297
    const-string/jumbo v0, "phase"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 298
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 299
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    .line 295
    return-void

    .line 297
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public reveal(Landroid/view/View;I)V
    .locals 4
    .param p1, "scroller"    # Landroid/view/View;
    .param p2, "parentBottom"    # I

    .prologue
    .line 237
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_0

    .line 238
    const-string/jumbo v1, "phase"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    .line 239
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 240
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 242
    :cond_0
    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mOffsetY:F

    .line 244
    .local v0, "previousOffset":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int v2, p2, v2

    sub-int/2addr v1, v2

    .line 243
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mOffsetY:F

    .line 245
    iget v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mOffsetY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->invalidate()V

    .line 236
    :cond_1
    return-void

    .line 238
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public reveal(Z)V
    .locals 9
    .param p1, "success"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 196
    iget-boolean v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    if-nez v2, :cond_1

    .line 197
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    .line 198
    const-string/jumbo v2, "phase"

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    .line 199
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    iget v3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 203
    const-string/jumbo v2, "phase"

    .line 202
    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 204
    .local v0, "mSvgAnimator1":Landroid/animation/ObjectAnimator;
    iget v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 207
    if-eqz p1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 232
    :goto_0
    iput-boolean v7, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    .line 195
    return-void

    .line 210
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 211
    .local v1, "set":Landroid/animation/AnimatorSet;
    new-array v2, v6, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v8

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 212
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 216
    .end local v0    # "mSvgAnimator1":Landroid/animation/ObjectAnimator;
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    const-string/jumbo v2, "phase"

    new-array v3, v6, [F

    fill-array-data v3, :array_2

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    .line 217
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    iget v3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 220
    const-string/jumbo v2, "phase"

    .line 219
    new-array v3, v6, [F

    fill-array-data v3, :array_3

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 221
    .restart local v0    # "mSvgAnimator1":Landroid/animation/ObjectAnimator;
    iget v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    if-eqz p1, :cond_2

    .line 225
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 227
    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 228
    .restart local v1    # "set":Landroid/animation/AnimatorSet;
    new-array v2, v6, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v8

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 229
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 198
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 202
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 216
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 219
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public revealWithoutAnimation()V
    .locals 4

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 276
    const-string/jumbo v0, "phase"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    .line 277
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 278
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 274
    return-void

    .line 276
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setParallax(F)V
    .locals 0
    .param p1, "parallax"    # F

    .prologue
    .line 123
    iput p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mParallax:F

    .line 124
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->invalidate()V

    .line 122
    return-void
.end method

.method public setPhase(F)V
    .locals 2
    .param p1, "phase"    # F

    .prologue
    .line 132
    iput p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/SvgView;->updatePathsPhaseLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->invalidate()V

    .line 131
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setSvgResource(I)V
    .locals 0
    .param p1, "svgResource"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResource:I

    .line 143
    return-void
.end method
