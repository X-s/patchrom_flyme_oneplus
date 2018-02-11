.class public Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;,
        Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_ANIMATION_DURATION:I = 0x258


# instance fields
.field final mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

.field private mCollapsingTitleEnabled:Z

.field private mContentScrim:Landroid/graphics/drawable/Drawable;

.field mCurrentOffset:I

.field private mDrawCollapsingTitle:Z

.field private mDummyView:Landroid/view/View;

.field private mExpandedMarginBottom:I

.field private mExpandedMarginEnd:I

.field private mExpandedMarginStart:I

.field private mExpandedMarginTop:I

.field mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mOnOffsetChangedListener:Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

.field private mRefreshToolbar:Z

.field private mScrimAlpha:I

.field private mScrimAnimationDuration:J

.field private mScrimAnimator:Landroid/animation/ValueAnimator;

.field private mScrimVisibleHeightTrigger:I

.field private mScrimsAreShown:Z

.field mStatusBarScrim:Landroid/graphics/drawable/Drawable;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mToolbar:Landroid/widget/Toolbar;

.field private mToolbarDirectChild:Landroid/view/View;

.field private mToolbarDrawIndex:I

.field private mToolbarId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    iput-boolean v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    .line 121
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 132
    iput v5, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 151
    new-instance v1, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 152
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 155
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout:[I

    .line 156
    sget v2, Lcom/oneplus/commonctrl/R$style;->Widget_Design_CollapsingToolbar:I

    .line 154
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 158
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 159
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleGravity:I

    .line 160
    const v3, 0x800053

    .line 159
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 158
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 161
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 162
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opCollapsedTitleGravity:I

    .line 163
    const v3, 0x800013

    .line 162
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 161
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 166
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMargin:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 165
    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 168
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginStart:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginStart:I

    .line 169
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 172
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginEnd:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginEnd:I

    .line 173
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 176
    :cond_1
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginTop:I

    .line 177
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 180
    :cond_2
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginBottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginBottom:I

    .line 181
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 186
    :cond_3
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opTitleEnabled:I

    .line 185
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 187
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_android_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 191
    sget v2, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Design_CollapsingToolbar_Expanded:I

    .line 190
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 192
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 193
    sget v2, Lcom/oneplus/commonctrl/R$style;->TextAppearance_Widget_ActionBar_Title:I

    .line 192
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 196
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 199
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleTextAppearance:I

    .line 198
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 197
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 201
    :cond_4
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opCollapsedTitleTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 204
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opCollapsedTitleTextAppearance:I

    .line 203
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 202
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 208
    :cond_5
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opScrimVisibleHeightTrigger:I

    .line 207
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 211
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opScrimAnimationDuration:I

    .line 212
    const/16 v2, 0x258

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    .line 214
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opContentScrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 215
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opStatusBarScrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 217
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opToolbarId:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    .line 219
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    .line 224
    new-instance v1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$1;-><init>(Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;)V

    .line 223
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 148
    return-void
.end method

.method private animateScrim(I)V
    .locals 4
    .param p1, "targetAlpha"    # I

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 601
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    .line 602
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    .line 603
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 604
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    .line 605
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-le p1, v0, :cond_1

    .line 606
    new-instance v0, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;-><init>()V

    .line 604
    :goto_0
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 608
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$2;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$2;-><init>(Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 618
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 619
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 599
    return-void

    .line 607
    :cond_1
    new-instance v0, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    goto :goto_0

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1
.end method

.method private ensureToolbar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 337
    iget-boolean v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    if-nez v4, :cond_0

    .line 338
    return-void

    .line 342
    :cond_0
    iput-object v5, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    .line 343
    iput-object v5, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    .line 345
    iget v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 347
    iget v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Toolbar;

    iput-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    .line 348
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    if-eqz v4, :cond_1

    .line 349
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    invoke-direct {p0, v4}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->findDirectChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    .line 353
    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    if-nez v4, :cond_3

    .line 356
    const/4 v3, 0x0

    .line 357
    .local v3, "toolbar":Landroid/widget/Toolbar;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 358
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/Toolbar;

    if-eqz v4, :cond_4

    move-object v3, v0

    .line 360
    check-cast v3, Landroid/widget/Toolbar;

    .line 364
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "toolbar":Landroid/widget/Toolbar;
    :cond_2
    iput-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    .line 367
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 368
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    .line 336
    return-void

    .line 357
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "toolbar":Landroid/widget/Toolbar;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private findDirectChild(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 380
    move-object v0, p1

    .line 381
    .local v0, "directChild":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_1

    .line 382
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 383
    check-cast v0, Landroid/view/View;

    .line 381
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 386
    :cond_1
    return-object v0
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 496
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 497
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 498
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    return v2

    .line 500
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    return v2
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 504
    sget v1, Lcom/oneplus/commonctrl/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    .line 505
    .local v0, "offsetHelper":Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
    if-nez v0, :cond_0

    .line 506
    new-instance v0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    .end local v0    # "offsetHelper":Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 507
    .restart local v0    # "offsetHelper":Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
    sget v1, Lcom/oneplus/commonctrl/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 509
    :cond_0
    return-object v0
.end method

.method private isToolbarChildDrawnNext(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 372
    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateDummyView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 390
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 393
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 394
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 397
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 399
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toolbar;->addView(Landroid/view/View;II)V

    .line 389
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1105
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 289
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 290
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 292
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 296
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 303
    .local v0, "topInset":I
    :goto_0
    if-lez v0, :cond_2

    .line 304
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v4

    .line 305
    iget v5, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    sub-int v5, v0, v5

    .line 304
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 306
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 307
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 284
    .end local v0    # "topInset":I
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 302
    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 317
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 319
    .local v0, "invalidate":Z
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->isToolbarChildDrawnNext(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 321
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 322
    const/4 v0, 0x1

    .line 325
    .end local v0    # "invalidate":Z
    :cond_0
    return v0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 726
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 728
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v2

    .line 729
    .local v2, "state":[I
    const/4 v0, 0x0

    .line 731
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 732
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 733
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 735
    .end local v0    # "changed":Z
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 736
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 737
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 739
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    if-eqz v3, :cond_2

    .line 740
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 743
    :cond_2
    if-eqz v0, :cond_3

    .line 744
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->invalidate()V

    .line 725
    :cond_3
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1110
    new-instance v0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1119
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1115
    new-instance v0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1120
    new-instance v0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTextGravity()I

    move-result v0

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getExpandedTextGravity()I

    move-result v0

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    .prologue
    .line 1004
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 930
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getExpandedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1246
    invoke-static {p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    move-result-object v1

    .line 1247
    .local v1, "offsetHelper":Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1248
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    .line 1249
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->getLayoutTop()I

    move-result v3

    .line 1248
    sub-int/2addr v2, v3

    .line 1250
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1248
    sub-int/2addr v2, v3

    .line 1251
    iget v3, v0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->bottomMargin:I

    .line 1248
    sub-int/2addr v2, v3

    return v2
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    .prologue
    .line 1100
    iget-wide v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 4

    .prologue
    .line 1066
    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    if-ltz v2, :cond_0

    .line 1068
    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    return v2

    .line 1072
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 1074
    .local v0, "insetTop":I
    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 1075
    .local v1, "minHeight":I
    if-lez v1, :cond_2

    .line 1077
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 1072
    .end local v0    # "insetTop":I
    .end local v1    # "minHeight":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "insetTop":I
    goto :goto_0

    .line 1082
    .restart local v1    # "minHeight":I
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    return v2
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 800
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleEnabled()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 238
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 239
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 241
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 243
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 246
    :cond_0
    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->addOnOffsetChangedListener(Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 249
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 234
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 257
    .local v0, "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v1, :cond_0

    .line 258
    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 261
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 254
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 415
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 417
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v6, :cond_1

    .line 419
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v6}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    .line 420
    .local v2, "insetTop":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v5

    .local v5, "z":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 421
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 422
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v6, v2, :cond_0

    .line 426
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 420
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "insetTop":I
    .end local v5    # "z":I
    :cond_1
    iget-boolean v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 436
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 437
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    .line 436
    :goto_1
    iput-boolean v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    .line 439
    iget-boolean v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    if-eqz v6, :cond_2

    .line 440
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    .line 441
    const/4 v7, 0x1

    .line 440
    if-ne v6, v7, :cond_5

    const/4 v3, 0x1

    .line 445
    .local v3, "isRtl":Z
    :goto_2
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    .line 444
    :goto_3
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v4

    .line 446
    .local v4, "maxOffset":I
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v6, v7}, Lcom/oneplus/lib/design/widget/Utils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 447
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 448
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_7

    .line 449
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    invoke-static {v6}, Lcom/oneplus/lib/design/widget/Utils;->getTitleMarginEnd(Landroid/widget/Toolbar;)I

    move-result v6

    .line 448
    :goto_4
    add-int/2addr v8, v6

    .line 451
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    invoke-static {v9}, Lcom/oneplus/lib/design/widget/Utils;->getTitleMarginTop(Landroid/widget/Toolbar;)I

    move-result v9

    add-int/2addr v9, v6

    .line 452
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v6, Landroid/graphics/Rect;->right:I

    if-eqz v3, :cond_8

    .line 453
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    invoke-static {v6}, Lcom/oneplus/lib/design/widget/Utils;->getTitleMarginStart(Landroid/widget/Toolbar;)I

    move-result v6

    .line 452
    :goto_5
    add-int/2addr v6, v10

    .line 455
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v4

    iget-object v11, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    invoke-static {v11}, Lcom/oneplus/lib/design/widget/Utils;->getTitleMarginBottom(Landroid/widget/Toolbar;)I

    move-result v11

    sub-int/2addr v10, v11

    .line 447
    invoke-virtual {v7, v8, v9, v6, v10}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 458
    iget-object v8, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 459
    if-eqz v3, :cond_9

    iget v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 460
    :goto_6
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    add-int/2addr v9, v7

    .line 461
    sub-int v10, p4, p2

    if-eqz v3, :cond_a

    iget v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    :goto_7
    sub-int v7, v10, v7

    .line 462
    sub-int v10, p5, p3

    iget v11, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    sub-int/2addr v10, v11

    .line 458
    invoke-virtual {v8, v6, v9, v7, v10}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 464
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 470
    .end local v3    # "isRtl":Z
    .end local v4    # "maxOffset":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v5

    .restart local v5    # "z":I
    :goto_8
    if-ge v1, v5, :cond_b

    .line 471
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->onViewLayout()V

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 437
    .end local v1    # "i":I
    .end local v5    # "z":I
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 436
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 440
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "isRtl":Z
    goto/16 :goto_2

    .line 445
    :cond_6
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    goto/16 :goto_3

    .line 450
    .restart local v4    # "maxOffset":I
    :cond_7
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    invoke-static {v6}, Lcom/oneplus/lib/design/widget/Utils;->getTitleMarginStart(Landroid/widget/Toolbar;)I

    move-result v6

    goto :goto_4

    .line 454
    :cond_8
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    invoke-static {v6}, Lcom/oneplus/lib/design/widget/Utils;->getTitleMarginEnd(Landroid/widget/Toolbar;)I

    move-result v6

    goto :goto_5

    .line 459
    :cond_9
    iget v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    goto :goto_6

    .line 461
    :cond_a
    iget v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    goto :goto_7

    .line 475
    .end local v3    # "isRtl":Z
    .end local v4    # "maxOffset":I
    .restart local v1    # "i":I
    .restart local v5    # "z":I
    :cond_b
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    if-eqz v6, :cond_f

    .line 476
    iget-boolean v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 478
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v7}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :cond_c
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-ne v6, p0, :cond_e

    .line 481
    :cond_d
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    invoke-static {v6}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 482
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    .line 491
    :goto_9
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 414
    return-void

    .line 484
    :cond_e
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    invoke-static {v6}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 485
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    goto :goto_9

    .line 488
    :cond_f
    const/4 v6, -0x1

    iput v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 410
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 408
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 331
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 329
    :cond_0
    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "newInsets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    move-object v0, p1

    .line 273
    .end local v0    # "newInsets":Landroid/support/v4/view/WindowInsetsCompat;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Lcom/oneplus/lib/design/widget/Utils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 275
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 280
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v1

    return-object v1
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 839
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 838
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 810
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 809
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 819
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 818
    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 828
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 827
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 905
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTypeface(Landroid/graphics/Typeface;)V

    .line 904
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 643
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    .line 644
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 647
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 648
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 650
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 651
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 653
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 642
    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 666
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 665
    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 677
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 867
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 866
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 887
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 886
    return-void
.end method

.method public setExpandedTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 948
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 949
    iput p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 950
    iput p3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 951
    iput p4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 952
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 947
    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 1036
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 1037
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 1035
    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 1015
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 1016
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 1014
    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 973
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 974
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 972
    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 994
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 995
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 993
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 858
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 857
    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 876
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 875
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 922
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTypeface(Landroid/graphics/Typeface;)V

    .line 921
    return-void
.end method

.method setScrimAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 623
    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-eq p1, v1, :cond_1

    .line 624
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 625
    .local v0, "contentScrim":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 628
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    .line 629
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 622
    .end local v0    # "contentScrim":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 1
    .param p1, "duration"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1093
    iput-wide p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    .line 1092
    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1
    .param p1, "height"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1052
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    if-eq v0, p1, :cond_0

    .line 1053
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 1055
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1051
    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    const/4 v0, 0x0

    .line 575
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setScrimsShown(ZZ)V

    .line 574
    return-void

    .line 575
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setScrimsShown(ZZ)V
    .locals 3
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 589
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    if-eq v2, p1, :cond_0

    .line 590
    if-eqz p2, :cond_2

    .line 591
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->animateScrim(I)V

    .line 595
    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    .line 588
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 591
    goto :goto_0

    .line 593
    :cond_2
    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 705
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    .line 706
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 709
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 710
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 711
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 712
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 714
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 715
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 714
    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 716
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 717
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 718
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 720
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 704
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 716
    goto :goto_0
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 777
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 776
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 788
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 521
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 520
    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eq p1, v0, :cond_0

    .line 547
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 548
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 549
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 545
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    .line 755
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 757
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 758
    .local v0, "visible":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 759
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 762
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 754
    :cond_1
    return-void

    .line 757
    .end local v0    # "visible":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "visible":Z
    goto :goto_0
.end method

.method final updateScrimVisibility()V
    .locals 2

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1241
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setScrimsShown(Z)V

    .line 1239
    :cond_1
    return-void

    .line 1241
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 750
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
