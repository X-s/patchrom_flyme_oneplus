.class public Lcom/android/systemui_ex/recents/views/TaskViewHeader;
.super Landroid/widget/FrameLayout;
.source "TaskViewHeader.java"


# static fields
.field static sHighlightPaint:Landroid/graphics/Paint;


# instance fields
.field mActivityDescription:Landroid/widget/TextView;

.field mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

.field mBackground:Landroid/graphics/drawable/RippleDrawable;

.field mBackgroundColor:I

.field mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

.field private mCurrTask:Lcom/android/systemui_ex/recents/model/Task;

.field mCurrentPrimaryColor:I

.field mCurrentPrimaryColorIsDark:Z

.field mDarkLockDrawable:Landroid/graphics/drawable/Drawable;

.field mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field mDimLayerPaint:Landroid/graphics/Paint;

.field mFocusAnimator:Landroid/animation/AnimatorSet;

.field mIsCurrTaskLocked:Z

.field mLightLockDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    iput-boolean v3, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mIsCurrTaskLocked:Z

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    .line 79
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 99
    invoke-static {}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .line 100
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->setWillNotDraw(Z)V

    .line 101
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->setClipToOutline(Z)V

    .line 102
    new-instance v1, Lcom/android/systemui_ex/recents/views/TaskViewHeader$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader$1;-><init>(Lcom/android/systemui_ex/recents/views/TaskViewHeader;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0201e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mLightLockDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mDarkLockDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    sget-object v1, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    .line 119
    sget-object v1, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    sget-object v1, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewHighlightPx:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    sget-object v1, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskBarViewHighlightColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    sget-object v1, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 123
    sget-object v1, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method getSecondaryColor(IZ)I
    .locals 2
    .param p1, "primaryColor"    # I
    .param p2, "useLightOverlayColor"    # Z

    .prologue
    .line 188
    if-eqz p2, :cond_0

    const/4 v0, -0x1

    .line 189
    .local v0, "overlayColor":I
    :goto_0
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0, v1}, Lcom/android/systemui_ex/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v1

    return v1

    .line 188
    .end local v0    # "overlayColor":I
    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1
    .param p1, "extraSpace"    # I

    .prologue
    .line 273
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewHighlightPx:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v9, v0

    .line 163
    .local v9, "offset":F
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    int-to-float v5, v0

    .line 164
    .local v5, "radius":F
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v8

    .line 165
    .local v8, "count":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 166
    neg-float v1, v9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v3, v0, v9

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v4, v0, v5

    sget-object v7, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 168
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 169
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    const v0, 0x7f0f0139

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/recents/views/LockAnimationView;

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    .line 139
    const v0, 0x7f0f013a

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0201ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0201ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    .line 153
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    .line 154
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->getId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 156
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method

.method onTaskViewFocusChanged(ZZ)V
    .locals 13
    .param p1, "focused"    # Z
    .param p2, "animateFocusedState"    # Z

    .prologue
    .line 279
    if-nez p2, :cond_0

    .line 360
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v3, 0x0

    .line 282
    .local v3, "isRunning":Z
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_1

    .line 283
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    .line 284
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v9}, Lcom/android/systemui_ex/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 287
    :cond_1
    if-eqz p1, :cond_2

    .line 288
    iget v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    iget-boolean v10, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v6

    .line 289
    .local v6, "secondaryColor":I
    const/4 v9, 0x2

    new-array v7, v9, [[I

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x101009e

    aput v12, v10, v11

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x10100a7

    aput v12, v10, v11

    aput-object v10, v7, v9

    .line 293
    .local v7, "states":[[I
    const/4 v9, 0x2

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    .line 297
    .local v5, "newStates":[I
    const/4 v9, 0x2

    new-array v1, v9, [I

    const/4 v9, 0x0

    aput v6, v1, v9

    const/4 v9, 0x1

    aput v6, v1, v9

    .line 301
    .local v1, "colors":[I
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 302
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v9, v5}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 304
    iget v2, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackgroundColor:I

    .line 305
    .local v2, "currentColor":I
    iget v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    iget-boolean v10, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v4

    .line 306
    .local v4, "lightPrimaryColor":I
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 308
    .local v0, "backgroundColor":Landroid/animation/ValueAnimator;
    new-instance v9, Lcom/android/systemui_ex/recents/views/TaskViewHeader$2;

    invoke-direct {v9, p0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader$2;-><init>(Lcom/android/systemui_ex/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 314
    new-instance v9, Lcom/android/systemui_ex/recents/views/TaskViewHeader$3;

    invoke-direct {v9, p0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader$3;-><init>(Lcom/android/systemui_ex/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 322
    const/4 v9, -0x1

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 323
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 325
    const-string v9, "translationZ"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x41700000    # 15.0f

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 326
    .local v8, "translation":Landroid/animation/ObjectAnimator;
    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 327
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 329
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    .line 330
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 331
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 332
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 333
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 335
    .end local v0    # "backgroundColor":Landroid/animation/ValueAnimator;
    .end local v1    # "colors":[I
    .end local v2    # "currentColor":I
    .end local v4    # "lightPrimaryColor":I
    .end local v5    # "newStates":[I
    .end local v6    # "secondaryColor":I
    .end local v7    # "states":[[I
    .end local v8    # "translation":Landroid/animation/ObjectAnimator;
    :cond_2
    if-eqz v3, :cond_3

    .line 337
    iget v2, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackgroundColor:I

    .line 338
    .restart local v2    # "currentColor":I
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 340
    .restart local v0    # "backgroundColor":Landroid/animation/ValueAnimator;
    new-instance v9, Lcom/android/systemui_ex/recents/views/TaskViewHeader$4;

    invoke-direct {v9, p0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader$4;-><init>(Lcom/android/systemui_ex/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 349
    const-string v9, "translationZ"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 351
    .restart local v8    # "translation":Landroid/animation/ObjectAnimator;
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    .line 352
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 353
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x96

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 354
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 356
    .end local v0    # "backgroundColor":Landroid/animation/ValueAnimator;
    .end local v2    # "currentColor":I
    .end local v8    # "translation":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 357
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->setTranslationZ(F)V

    goto/16 :goto_0

    .line 293
    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public rebindToTask(Lcom/android/systemui_ex/recents/model/Task;)V
    .locals 6
    .param p1, "t"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 201
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mCurrTask:Lcom/android/systemui_ex/recents/model/Task;

    .line 205
    iget-object v1, p1, Lcom/android/systemui_ex/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 206
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    iget-object v3, p1, Lcom/android/systemui_ex/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    iget-object v3, p1, Lcom/android/systemui_ex/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/android/systemui_ex/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui_ex/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 217
    .local v0, "existingBgColor":I
    :goto_1
    iget v1, p1, Lcom/android/systemui_ex/recents/model/Task;->colorPrimary:I

    if-eq v0, v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p1, Lcom/android/systemui_ex/recents/model/Task;->colorPrimary:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 219
    iget v1, p1, Lcom/android/systemui_ex/recents/model/Task;->colorPrimary:I

    iput v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mBackgroundColor:I

    .line 221
    :cond_2
    iget v1, p1, Lcom/android/systemui_ex/recents/model/Task;->colorPrimary:I

    iput v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    .line 222
    iget-boolean v1, p1, Lcom/android/systemui_ex/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    .line 223
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/android/systemui_ex/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskBarViewLightTextColor:I

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    iget-boolean v3, p1, Lcom/android/systemui_ex/recents/model/Task;->useLightOnPrimaryColor:Z

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setIsPrimaryColorLightOn(Z)V

    .line 227
    iget-boolean v1, p1, Lcom/android/systemui_ex/recents/model/Task;->taskIsLocked:Z

    if-ne v1, v4, :cond_7

    .line 228
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v1, v4}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setLockState(Z)V

    .line 232
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v1, v5}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setCurrentCount(F)V

    .line 241
    :goto_3
    return-void

    .line 207
    .end local v0    # "existingBgColor":I
    :cond_4
    iget-object v1, p1, Lcom/android/systemui_ex/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    iget-object v3, p1, Lcom/android/systemui_ex/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 215
    goto :goto_1

    .line 223
    .restart local v0    # "existingBgColor":I
    :cond_6
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskBarViewDarkTextColor:I

    goto :goto_2

    .line 234
    :cond_7
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 235
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 237
    :cond_8
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setLockState(Z)V

    .line 238
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v1, v5}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setCurrentCount(F)V

    goto :goto_3
.end method

.method resetNoUserInteractionState()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method setDimAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 183
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->setLayerType(ILandroid/graphics/Paint;)V

    .line 184
    return-void
.end method

.method public setLockAnimationCurrentCount(F)V
    .locals 1
    .param p1, "current"    # F

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setCurrentCount(F)V

    .line 368
    return-void
.end method

.method public setLockAnimationMaxCount(F)V
    .locals 1
    .param p1, "max"    # F

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setMaxCount(F)V

    .line 364
    return-void
.end method

.method public setLockState(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setLockState(Z)V

    .line 372
    return-void
.end method

.method setNoUserInteractionState()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method startLaunchTaskDismissAnimation()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method startNoUserInteractionAnimation()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method unbindFromTask()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    return-void
.end method

.method public updateLockedDrawable(Z)V
    .locals 0
    .param p1, "isTaskLocked"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mIsCurrTaskLocked:Z

    .line 195
    return-void
.end method
