.class public Lcom/android/systemui_ex/statusbar/NotificationContentView;
.super Landroid/widget/FrameLayout;
.source "NotificationContentView.java"


# instance fields
.field private mActualHeight:I

.field private mAnimate:Z

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClipTopAmount:I

.field private mContractedChild:Landroid/view/View;

.field private mContractedVisible:Z

.field private mContractedWrapper:Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;

.field private mDark:Z

.field private mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mExpandedChild:Landroid/view/View;

.field private final mFadePaint:Landroid/graphics/Paint;

.field private final mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mSmallHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedVisible:Z

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Lcom/android/systemui_ex/statusbar/NotificationContentView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView$1;-><init>(Lcom/android/systemui_ex/statusbar/NotificationContentView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 76
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 77
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->reset(Z)V

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/statusbar/NotificationContentView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/NotificationContentView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/NotificationContentView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/NotificationContentView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/NotificationContentView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/NotificationContentView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method private runSwitchAnimation(Z)V
    .locals 8
    .param p1, "showContractedChild"    # Z

    .prologue
    const-wide/16 v6, 0xaa

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 213
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 222
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui_ex/statusbar/NotificationContentView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui_ex/statusbar/NotificationContentView$2;-><init>(Lcom/android/systemui_ex/statusbar/NotificationContentView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 240
    return-void

    :cond_0
    move v0, v2

    .line 218
    goto :goto_0

    :cond_1
    move v2, v1

    .line 222
    goto :goto_1
.end method

.method private sanitizeContractedLayoutParams(Landroid/view/View;)V
    .locals 2
    .param p1, "contractedChild"    # Landroid/view/View;

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 190
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mSmallHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    return-void
.end method

.method private selectLayout(ZZ)V
    .locals 7
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 195
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->showContractedChild()Z

    move-result v0

    .line 199
    .local v0, "showContractedChild":Z
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedVisible:Z

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_2

    .line 200
    :cond_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 201
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->runSwitchAnimation(Z)V

    .line 209
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedVisible:Z

    goto :goto_0

    .line 202
    :cond_3
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 203
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_5

    move v1, v4

    :goto_3
    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    .line 205
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_6

    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_7

    :goto_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_4
    move v1, v3

    .line 203
    goto :goto_2

    :cond_5
    move v1, v5

    .line 204
    goto :goto_3

    :cond_6
    move v3, v2

    .line 205
    goto :goto_4

    :cond_7
    move v5, v4

    .line 206
    goto :goto_5
.end method

.method private setVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mAnimate:Z

    goto :goto_0
.end method

.method private showContractedChild()Z
    .locals 2

    .prologue
    .line 243
    iget v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mActualHeight:I

    iget v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mSmallHeight:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClipping()V
    .locals 5

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mActualHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 186
    return-void
.end method

.method private updateVisibility()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->isShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setVisible(Z)V

    .line 148
    return-void
.end method


# virtual methods
.method public getContractedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method public getExpandedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->getHeight()I

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public notifyContentUpdated()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;->notifyContentUpdated()V

    .line 250
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;->setDark(ZZJ)V

    .line 252
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 89
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->updateVisibility()V

    .line 90
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 82
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->updateClipping()V

    .line 84
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 143
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->updateVisibility()V

    .line 144
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "resetActualHeight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->removeAllViews()V

    .line 100
    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 101
    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mSmallHeight:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedVisible:Z

    .line 104
    if-eqz p1, :cond_2

    .line 105
    iget v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mSmallHeight:I

    iput v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mActualHeight:I

    .line 107
    :cond_2
    return-void
.end method

.method public setActualHeight(I)V
    .locals 2
    .param p1, "actualHeight"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mActualHeight:I

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mAnimate:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 165
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->updateClipping()V

    .line 166
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mClipTopAmount:I

    .line 180
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->updateClipping()V

    .line 181
    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 120
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->sanitizeContractedLayoutParams(Landroid/view/View;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 124
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;

    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;->setDark(ZZJ)V

    .line 128
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mDark:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mDark:Z

    .line 261
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;->setDark(ZZJ)V

    goto :goto_0
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 133
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 136
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 137
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 138
    return-void
.end method
