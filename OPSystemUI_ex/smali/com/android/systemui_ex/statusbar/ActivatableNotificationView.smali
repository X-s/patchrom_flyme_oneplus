.class public abstract Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;
.super Lcom/android/systemui_ex/statusbar/ExpandableOutlineView;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;
    }
.end annotation


# static fields
.field private static final ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivated:Z

.field private mAnimationTranslationY:F

.field private mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mAppearAnimationFraction:F

.field private mAppearAnimationRect:Landroid/graphics/RectF;

.field private mAppearAnimationTranslation:F

.field private mAppearAnimator:Landroid/animation/ValueAnimator;

.field private mAppearPaint:Landroid/graphics/Paint;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

.field private mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

.field private mBgTint:I

.field private mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mDark:Z

.field private mDimmed:Z

.field private mDownX:F

.field private mDownY:F

.field private mDrawingAppearAnimation:Z

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mIsBelowSpeedBump:Z

.field private final mLegacyColor:I

.field private final mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mLowPriorityColor:I

.field private final mLowPriorityRippleColor:I

.field private final mNormalColor:I

.field private final mNormalRippleColor:I

.field private mOnActivatedListener:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;

.field private final mRoundedRectCornerRadius:I

.field private mShowingLegacyBackground:Z

.field private final mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

.field private final mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTintedRippleColor:I

.field private final mTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 91
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 93
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v5, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    iput v2, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    .line 134
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 180
    new-instance v0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$1;-><init>(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 144
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mTouchSlop:F

    .line 145
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 147
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    .line 148
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 150
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 151
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 152
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->setClipChildren(Z)V

    .line 153
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->setClipToPadding(Z)V

    .line 154
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mRoundedRectCornerRadius:I

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mLegacyColor:I

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mNormalColor:I

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mActivated:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateAppearRect()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method private cancelFadeAnimations()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 525
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 526
    return-void
.end method

.method private drawAppearRect(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 760
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 761
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 762
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mRoundedRectCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mRoundedRectCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 764
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 765
    return-void
.end method

.method private enableAppearDrawing(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 729
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eq p1, v2, :cond_0

    .line 730
    if-eqz p1, :cond_2

    .line 731
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 738
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 739
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->draw(Landroid/graphics/Canvas;)V

    .line 740
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 745
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    .line 746
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->invalidate()V

    goto :goto_0

    .line 743
    :cond_2
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1
.end method

.method private fadeDimmedBackground()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 460
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 461
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 462
    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v5, :cond_1

    .line 463
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 467
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v5, :cond_2

    move v2, v3

    .line 468
    .local v2, "startAlpha":F
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v5, :cond_3

    move v1, v4

    .line 469
    .local v1, "endAlpha":F
    :goto_2
    const/16 v0, 0xdc

    .line 471
    .local v0, "duration":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    .line 472
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 473
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    long-to-int v0, v4

    .line 474
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 475
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 476
    if-gtz v0, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 500
    :cond_0
    return-void

    .line 465
    .end local v0    # "duration":I
    .end local v1    # "endAlpha":F
    .end local v2    # "startAlpha":F
    :cond_1
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v2, v4

    .line 467
    goto :goto_1

    .restart local v2    # "startAlpha":F
    :cond_3
    move v1, v3

    .line 468
    goto :goto_2
.end method

.method private fadeInFromDark(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const v3, 0x3f6e147b    # 0.93f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 431
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    .line 432
    .local v0, "background":Landroid/view/View;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 433
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 434
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 435
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 436
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 437
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xaa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$3;-><init>(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 454
    return-void

    .line 431
    .end local v0    # "background":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    goto :goto_0
.end method

.method private getBackgroundColor()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_0

    .line 699
    iget v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 705
    :goto_0
    return v0

    .line 700
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    if-eqz v0, :cond_1

    .line 701
    iget v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mLegacyColor:I

    goto :goto_0

    .line 702
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v0, :cond_2

    .line 703
    iget v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    goto :goto_0

    .line 705
    :cond_2
    iget v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mNormalColor:I

    goto :goto_0
.end method

.method private getRippleColor()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_0

    .line 711
    iget v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    .line 717
    :goto_0
    return v0

    .line 712
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    if-eqz v0, :cond_1

    .line 713
    iget v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    goto :goto_0

    .line 714
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v0, :cond_2

    .line 715
    iget v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    goto :goto_0

    .line 717
    :cond_2
    iget v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    goto :goto_0
.end method

.method private handleTouchEventDimmed(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 215
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v1, v2

    .line 254
    :goto_1
    return v1

    .line 217
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDownX:F

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDownY:F

    .line 219
    iget v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDownY:F

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    goto :goto_1

    .line 224
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_1

    .line 230
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mActivated:Z

    if-nez v1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->makeActive()V

    .line 233
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4b0

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_0

    .line 249
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private isWithinTouchSlop(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDownY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeActive()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 260
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivated(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V

    .line 263
    :cond_0
    return-void
.end method

.method private startActivateAnimation(Z)V
    .locals 9
    .param p1, "reverse"    # Z

    .prologue
    const/4 v8, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->isAttachedToWindow()Z

    move-result v6

    if-nez v6, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v6}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v6

    div-int/lit8 v5, v6, 0x2

    .line 270
    .local v5, "widthHalf":I
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v6}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->getActualHeight()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 271
    .local v2, "heightHalf":I
    mul-int v6, v5, v5

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 273
    .local v4, "radius":F
    if-eqz p1, :cond_2

    .line 274
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-static {v6, v5, v2, v4, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .line 280
    .local v1, "animator":Landroid/animation/Animator;
    :goto_1
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 283
    if-nez p1, :cond_3

    .line 284
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 285
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 290
    .local v0, "alphaInterpolator":Landroid/view/animation/Interpolator;
    :goto_2
    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    const-wide/16 v6, 0xdc

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 293
    new-instance v6, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$2;

    invoke-direct {v6, p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$2;-><init>(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    if-nez p1, :cond_0

    .line 318
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 277
    .end local v0    # "alphaInterpolator":Landroid/view/animation/Interpolator;
    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-static {v6, v5, v2, v8, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .restart local v1    # "animator":Landroid/animation/Animator;
    goto :goto_1

    .line 287
    :cond_3
    sget-object v3, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 288
    .restart local v3    # "interpolator":Landroid/view/animation/Interpolator;
    sget-object v0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v0    # "alphaInterpolator":Landroid/view/animation/Interpolator;
    goto :goto_2
.end method

.method private startAppearAnimation(ZFJJLjava/lang/Runnable;)V
    .locals 5
    .param p1, "isAppearing"    # Z
    .param p2, "translationDirection"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 571
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    .line 575
    iget v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 577
    if-eqz p1, :cond_3

    .line 578
    iput v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 579
    iget v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    iput v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 587
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 588
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 589
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 590
    const/high16 v0, 0x3f800000    # 1.0f

    .line 596
    .local v0, "targetValue":F
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 598
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 599
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    long-to-float v2, p5

    iget v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 601
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$4;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$4;-><init>(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 610
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_2

    .line 612
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    .line 613
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateAppearRect()V

    .line 614
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 616
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$5;

    invoke-direct {v2, p0, p7}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$5;-><init>(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 641
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 642
    return-void

    .line 581
    .end local v0    # "targetValue":F
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 582
    iput v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    goto :goto_0

    .line 592
    :cond_4
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 593
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 594
    const/4 v0, 0x0

    .restart local v0    # "targetValue":F
    goto :goto_1
.end method

.method private updateAppearAnimationAlpha()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 683
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getBackgroundColor()I

    move-result v0

    .line 684
    .local v0, "backgroundColor":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 685
    iget v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 686
    .local v1, "contentAlphaProgress":F
    div-float/2addr v1, v4

    .line 687
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 688
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 689
    const/high16 v3, 0x437f0000    # 255.0f

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 692
    .local v2, "sourceColor":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v2}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 693
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 695
    .end local v1    # "contentAlphaProgress":F
    .end local v2    # "sourceColor":I
    :cond_0
    return-void
.end method

.method private updateAppearRect()V
    .locals 15

    .prologue
    const v14, 0x3dcccccd    # 0.1f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 645
    iget v10, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float v3, v13, v10

    .line 646
    .local v3, "inverseFraction":F
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    .line 647
    .local v8, "translationFraction":F
    iget v10, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float v7, v8, v10

    .line 648
    .local v7, "translateYTotalAmount":F
    iput v7, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 651
    sub-float v10, v3, v12

    const v11, 0x3f4ccccd    # 0.8f

    div-float v9, v10, v11

    .line 653
    .local v9, "widthFraction":F
    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 654
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 655
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ef33333    # 0.475f

    mul-float/2addr v10, v11

    mul-float v4, v10, v9

    .line 657
    .local v4, "left":F
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float v5, v10, v4

    .line 660
    .local v5, "right":F
    sub-float v10, v3, v12

    div-float v2, v10, v13

    .line 662
    .local v2, "heightFraction":F
    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 663
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 667
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v0

    .line 668
    .local v0, "actualHeight":I
    iget v10, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_0

    .line 669
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float/2addr v11, v2

    mul-float/2addr v11, v14

    sub-float/2addr v10, v11

    sub-float v1, v10, v7

    .line 671
    .local v1, "bottom":F
    mul-float v6, v1, v2

    .line 677
    .local v6, "top":F
    :goto_0
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v4, v6, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 678
    iget v10, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v10, v6

    iget v11, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v11, v1

    invoke-virtual {p0, v4, v10, v5, v11}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->setOutlineRect(FFFF)V

    .line 680
    return-void

    .line 673
    .end local v1    # "bottom":F
    .end local v6    # "top":F
    :cond_0
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    add-float/2addr v10, v11

    mul-float/2addr v10, v2

    mul-float/2addr v10, v14

    sub-float v6, v10, v7

    .line 675
    .restart local v6    # "top":F
    int-to-float v10, v0

    sub-float v11, v13, v2

    mul-float/2addr v10, v11

    mul-float v11, v6, v2

    add-float v1, v10, v11

    .restart local v1    # "bottom":F
    goto :goto_0
.end method

.method private updateBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 503
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->cancelFadeAnimations()V

    .line 504
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDark:Z

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 518
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 516
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateBackgroundTint()V
    .locals 3

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getBackgroundColor()I

    move-result v0

    .line 416
    .local v0, "color":I
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getRippleColor()I

    move-result v1

    .line 417
    .local v1, "rippleColor":I
    iget v2, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mNormalColor:I

    if-ne v0, v2, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 421
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setTint(I)V

    .line 422
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setTint(I)V

    .line 423
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    .line 424
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    .line 425
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-nez v0, :cond_0

    .line 753
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/ExpandableOutlineView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->drawAppearRect(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->drawableHotspotChanged(FF)V

    .line 201
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/ExpandableOutlineView;->drawableStateChanged()V

    .line 206
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setState([I)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setState([I)V

    goto :goto_0
.end method

.method public makeInactive(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_1

    .line 334
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 335
    if-eqz p1, :cond_0

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    .line 345
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivationReset(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 351
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/ExpandableOutlineView;->onFinishInflate()V

    .line 172
    const v0, 0x7f0f015c

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    .line 173
    const v0, 0x7f0f015d

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    .line 174
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    const v1, 0x7f0201cb

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    .line 176
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 177
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 178
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 530
    invoke-super/range {p0 .. p5}, Lcom/android/systemui_ex/statusbar/ExpandableOutlineView;->onLayout(ZIIII)V

    .line 531
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->setPivotX(F)V

    .line 532
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->handleTouchEventDimmed(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 192
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performAddAnimation(JJ)V
    .locals 9
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v2, 0x1

    .line 563
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 564
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_0

    .line 565
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    .line 567
    :cond_0
    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 9
    .param p1, "duration"    # J
    .param p3, "translationDirection"    # F
    .param p4, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 552
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 553
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_1

    .line 554
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move v3, p3

    move-wide v6, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    if-eqz p4, :cond_0

    .line 557
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 772
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->setTintColor(I)V

    .line 773
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->setShowingLegacyBackground(Z)V

    .line 774
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->setBelowSpeedBump(Z)V

    .line 775
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 536
    invoke-super {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/ExpandableOutlineView;->setActualHeight(IZ)V

    .line 537
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->setPivotY(F)V

    .line 538
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    .line 540
    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 1
    .param p1, "below"    # Z

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/ExpandableOutlineView;->setBelowSpeedBump(Z)V

    .line 400
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eq p1, v0, :cond_0

    .line 401
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    .line 402
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 404
    :cond_0
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 544
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/ExpandableOutlineView;->setClipTopAmount(I)V

    .line 545
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 546
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 547
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 370
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui_ex/statusbar/ExpandableOutlineView;->setDark(ZZJ)V

    .line 371
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDark:Z

    if-ne v0, p1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 374
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDark:Z

    .line 375
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 376
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 386
    :goto_1
    invoke-direct {p0, p3, p4}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->fadeInFromDark(J)V

    goto :goto_0

    .line 379
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_1

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_1

    .line 388
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_0
.end method

.method public setDimmed(ZZ)V
    .locals 1
    .param p1, "dimmed"    # Z
    .param p2, "fade"    # Z

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eq v0, p1, :cond_0

    .line 360
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mDimmed:Z

    .line 361
    if-eqz p2, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->fadeDimmedBackground()V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_0
.end method

.method public setOnActivatedListener(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;)V
    .locals 0
    .param p1, "onActivatedListener"    # Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;

    .prologue
    .line 768
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;

    .line 769
    return-void
.end method

.method public setShowingLegacyBackground(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    .line 394
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 395
    return-void
.end method

.method public setTintColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 410
    iput p1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 411
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 412
    return-void
.end method
