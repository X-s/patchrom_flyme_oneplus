.class public Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;
.super Landroid/view/View;
.source "TaskViewThumbnail.java"


# instance fields
.field mBitmapRect:Landroid/graphics/RectF;

.field mBitmapShader:Landroid/graphics/BitmapShader;

.field mClipRect:Landroid/graphics/Rect;

.field mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

.field mDimAlpha:F

.field mDrawPaint:Landroid/graphics/Paint;

.field mInvisible:Z

.field mLayoutRect:Landroid/graphics/RectF;

.field mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field mScaleMatrix:Landroid/graphics/Matrix;

.field mTaskBar:Landroid/view/View;

.field mThumbnailAlpha:F

.field mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

.field mThumbnailAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mBitmapRect:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mLayoutRect:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    .line 60
    new-instance v0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail$1;-><init>(Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mClipRect:Landroid/graphics/Rect;

    .line 92
    invoke-static {}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 94
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    iput v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 102
    return-void
.end method

.method onFocusChanged(Z)V
    .locals 5
    .param p1, "focused"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x96

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 213
    if-eqz p1, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->getAlpha()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->getAlpha()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    .line 111
    :cond_0
    return-void
.end method

.method prepareEnterRecentsAnimation(Z)V
    .locals 1
    .param p1, "isTaskViewLaunchTargetTask"    # Z

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    .line 234
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 235
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    iput v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    goto :goto_0
.end method

.method rebindToTask(Lcom/android/systemui_ex/recents/model/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 199
    iget-object v0, p1, Lcom/android/systemui_ex/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p1, Lcom/android/systemui_ex/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setDimAlpha(F)V
    .locals 0
    .param p1, "dimAlpha"    # F

    .prologue
    .line 193
    iput p1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDimAlpha:F

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 195
    return-void
.end method

.method setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 126
    if-eqz p1, :cond_0

    .line 127
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 129
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 130
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 137
    return-void

    .line 133
    :cond_0
    iput-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 134
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method startFadeAnimation(FIILjava/lang/Runnable;)V
    .locals 4
    .param p1, "finalAlpha"    # F
    .param p2, "delay"    # I
    .param p3, "duration"    # I
    .param p4, "postAnimRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/systemui_ex/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 251
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 252
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 254
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 256
    if-eqz p4, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail$2;

    invoke-direct {v1, p0, p4}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail$2;-><init>(Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 265
    return-void
.end method

.method startLaunchTaskAnimation(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "postAnimRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 245
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method unbindFromTask()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 209
    return-void
.end method

.method updateClipToTaskBar(Landroid/view/View;)V
    .locals 5
    .param p1, "taskBar"    # Landroid/view/View;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    .line 170
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v0, v1

    .line 172
    .local v0, "top":I
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mClipRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->setClipBounds(Landroid/graphics/Rect;)V

    .line 174
    return-void
.end method

.method updateThumbnailPaintFilter()V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 141
    iget-boolean v3, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v3, :cond_0

    .line 157
    :goto_0
    return-void

    .line 144
    :cond_0
    iget v3, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v3, v5, v3

    iget v4, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v2, v3

    .line 145
    .local v2, "mul":I
    iget v3, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v3, v5, v3

    iget v4, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v0, v3

    .line 146
    .local v0, "add":I
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-static {v7, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/LightingColorFilter;->setColorMultiply(I)V

    .line 148
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    const/4 v4, 0x0

    invoke-static {v4, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/LightingColorFilter;->setColorAdd(I)V

    .line 149
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 150
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->invalidate()V

    goto :goto_0

    .line 152
    :cond_1
    add-int v1, v2, v0

    .line 153
    .local v1, "grey":I
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 154
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-static {v7, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method updateThumbnailScale()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 163
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 165
    :cond_0
    return-void
.end method

.method updateThumbnailVisibility(I)V
    .locals 3
    .param p1, "clipBottom"    # I

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 179
    .local v0, "invisible":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eq v0, v1, :cond_1

    .line 180
    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mInvisible:Z

    .line 181
    iget-boolean v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->invalidate()V

    .line 186
    :cond_1
    return-void

    .line 178
    .end local v0    # "invisible":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
