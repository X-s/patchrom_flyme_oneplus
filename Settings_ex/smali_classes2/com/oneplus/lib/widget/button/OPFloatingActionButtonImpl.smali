.class Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "OPFloatingActionButtonImpl.java"


# static fields
.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ENABLED_STATE_SET:[I

.field static final SHOW_HIDE_ANIM_DURATION:I = 0xc8


# instance fields
.field private mBorderDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsHiding:Z

.field private mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

.field final mShadowViewDelegate:Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

.field private mShapeDrawable:Landroid/graphics/drawable/Drawable;

.field final mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;


# direct methods
.method static synthetic -set0(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mIsHiding:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x101009e

    .line 42
    const v0, 0x10100a7

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 44
    const v0, 0x101009c

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/lib/widget/button/OPFloatingActionButton;
    .param p2, "shadowViewDelegate"    # Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    .line 61
    iput-object p2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShadowViewDelegate:Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

    .line 63
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    const v1, 0x10c000d

    .line 64
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    :cond_0
    return-void
.end method

.method private setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    return-object p1
.end method


# virtual methods
.method createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "op_borderWidth"    # I
    .param p2, "op_backgroundTint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 70
    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 71
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;-><init>()V

    .line 73
    .local v0, "borderDrawable":Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;
    sget v2, Lcom/oneplus/commonctrl/R$color;->design_fab_stroke_top_outer_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 74
    sget v3, Lcom/oneplus/commonctrl/R$color;->design_fab_stroke_top_inner_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 75
    sget v4, Lcom/oneplus/commonctrl/R$color;->design_fab_stroke_end_inner_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 76
    sget v5, Lcom/oneplus/commonctrl/R$color;->design_fab_stroke_end_outer_color:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 72
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setGradientColors(IIII)V

    .line 77
    int-to-float v2, p1

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setBorderWidth(F)V

    .line 78
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setTintColor(I)V

    .line 79
    return-object v0
.end method

.method hide(Z)V
    .locals 4
    .param p1, "fromUser"    # Z

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mIsHiding:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->internalSetVisibility(IZ)V

    .line 154
    :goto_0
    return-void

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 168
    const-wide/16 v2, 0xc8

    .line 164
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 169
    new-instance v1, Lcom/oneplus/lib/widget/button/FastOutSlowInInterpolator;

    invoke-direct {v1}, Lcom/oneplus/lib/widget/button/FastOutSlowInInterpolator;-><init>()V

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 170
    new-instance v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;-><init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method jumpDrawableToCurrentState()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 0
    .param p1, "state"    # [I

    .prologue
    .line 141
    return-void
.end method

.method setBackground(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 6
    .param p1, "originalBackground"    # Landroid/graphics/drawable/Drawable;
    .param p2, "op_backgroundTint"    # Landroid/content/res/ColorStateList;
    .param p3, "op_backgroundTintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p4, "op_rippleColor"    # I
    .param p5, "op_borderWidth"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 87
    if-eqz p3, :cond_0

    .line 88
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 92
    :cond_0
    if-lez p5, :cond_1

    .line 93
    invoke-virtual {p0, p5, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 100
    .local v0, "rippleContent":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    .line 103
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShadowViewDelegate:Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-interface {v1, v2}, Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShadowViewDelegate:Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

    invoke-interface {v1, v4, v4, v4, v4}, Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;->setShadowPadding(IIII)V

    .line 83
    return-void

    .line 96
    .end local v0    # "rippleContent":Landroid/graphics/drawable/Drawable;
    :cond_1
    iput-object v5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v0    # "rippleContent":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 109
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 107
    :cond_0
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 114
    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "op_elevation"    # F

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setElevation(F)V

    .line 122
    return-void
.end method

.method setPressedTranslationZ(F)V
    .locals 7
    .param p1, "translationZ"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 127
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 130
    .local v0, "stateListAnimator":Landroid/animation/StateListAnimator;
    sget-object v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 131
    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    const-string/jumbo v3, "translationZ"

    new-array v4, v5, [F

    aput p1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 132
    sget-object v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 133
    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    const-string/jumbo v3, "translationZ"

    new-array v4, v5, [F

    aput p1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 135
    sget-object v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    .line 136
    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    const-string/jumbo v3, "translationZ"

    new-array v4, v5, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 138
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 126
    return-void
.end method

.method setRippleColor(I)V
    .locals 2
    .param p1, "op_rippleColor"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 118
    return-void
.end method

.method show(Z)V
    .locals 4
    .param p1, "fromUser"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 218
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v3, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->internalSetVisibility(IZ)V

    .line 259
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setAlpha(F)V

    .line 260
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setScaleY(F)V

    .line 261
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setScaleX(F)V

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setAlpha(F)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setScaleY(F)V

    .line 222
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setScaleX(F)V

    .line 223
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 227
    const-wide/16 v2, 0xc8

    .line 223
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/oneplus/lib/widget/button/FastOutSlowInInterpolator;

    invoke-direct {v1}, Lcom/oneplus/lib/widget/button/FastOutSlowInInterpolator;-><init>()V

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$2;-><init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)V

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
