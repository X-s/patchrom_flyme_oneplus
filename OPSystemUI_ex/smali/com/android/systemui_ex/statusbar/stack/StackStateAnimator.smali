.class public Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"


# instance fields
.field private mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

.field private mAnimationListenerPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentAdditionalDelay:J

.field private mCurrentLastNotAddedIndex:I

.field private mCurrentLength:J

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGoToFullShadeAppearingTranslation:I

.field public mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

.field private mNewAddChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTopOverScrollAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 2
    .param p1, "hostLayout"    # Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    .line 78
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    .line 79
    new-instance v0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    .line 90
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    .line 91
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 93
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private calculateChildAnimationDelay(Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)J
    .locals 19
    .param p1, "viewState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    .param p2, "finalState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    .prologue
    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasDarkEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 310
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->calculateDelayDark(Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;)J

    move-result-wide v10

    .line 356
    :cond_0
    :goto_0
    return-wide v10

    .line 312
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 313
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->calculateDelayGoToFullShade(Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;)J

    move-result-wide v10

    goto :goto_0

    .line 315
    :cond_2
    const-wide/16 v10, 0x0

    .line 316
    .local v10, "minDelay":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 317
    .local v8, "event":Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    const-wide/16 v6, 0x50

    .line 318
    .local v6, "delayPerElement":J
    iget v0, v8, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    goto :goto_1

    .line 320
    :pswitch_0
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 321
    .local v14, "ownIndex":I
    iget-object v0, v8, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 323
    .local v2, "changingIndex":I
    sub-int v16, v14, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 324
    .local v3, "difference":I
    const/16 v16, 0x0

    const/16 v17, 0x2

    add-int/lit8 v18, v3, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 326
    rsub-int/lit8 v16, v3, 0x2

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v4, v16, v6

    .line 327
    .local v4, "delay":J
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 328
    goto :goto_1

    .line 331
    .end local v2    # "changingIndex":I
    .end local v3    # "difference":I
    .end local v4    # "delay":J
    .end local v14    # "ownIndex":I
    :pswitch_1
    const-wide/16 v6, 0x20

    .line 333
    :pswitch_2
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 334
    .restart local v14    # "ownIndex":I
    iget-object v0, v8, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    const/4 v13, 0x1

    .line 335
    .local v13, "noNextView":Z
    :goto_2
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v15

    .line 339
    .local v15, "viewAfterChangingView":Landroid/view/View;
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 341
    .local v12, "nextIndex":I
    if-lt v14, v12, :cond_3

    .line 343
    add-int/lit8 v14, v14, 0x1

    .line 345
    :cond_3
    sub-int v16, v14, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 346
    .restart local v3    # "difference":I
    const/16 v16, 0x0

    const/16 v17, 0x2

    add-int/lit8 v18, v3, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 348
    int-to-long v0, v3

    move-wide/from16 v16, v0

    mul-long v4, v16, v6

    .line 349
    .restart local v4    # "delay":J
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 350
    goto/16 :goto_1

    .line 334
    .end local v3    # "difference":I
    .end local v4    # "delay":J
    .end local v12    # "nextIndex":I
    .end local v13    # "noNextView":Z
    .end local v15    # "viewAfterChangingView":Landroid/view/View;
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 335
    .restart local v13    # "noNextView":Z
    :cond_5
    iget-object v15, v8, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    goto :goto_3

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private calculateDelayDark(Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;)J
    .locals 4
    .param p1, "viewState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget v1, v1, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 370
    .local v0, "referenceIndex":I
    :goto_0
    iget v1, p1, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x18

    int-to-long v2, v1

    return-wide v2

    .line 364
    .end local v0    # "referenceIndex":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget v1, v1, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "referenceIndex":I
    goto :goto_0

    .line 368
    .end local v0    # "referenceIndex":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget v0, v1, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .restart local v0    # "referenceIndex":I
    goto :goto_0
.end method

.method private calculateDelayGoToFullShade(Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;)J
    .locals 6
    .param p1, "viewState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;

    .prologue
    .line 374
    iget v1, p1, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    int-to-float v0, v1

    .line 375
    .local v0, "index":F
    float-to-double v2, v0

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 376
    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2
.end method

.method private cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 7
    .param p1, "duration"    # J
    .param p3, "previousAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 780
    move-wide v0, p1

    .line 781
    .local v0, "newDuration":J
    if-eqz p3, :cond_0

    .line 784
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 786
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 788
    :cond_0
    return-wide v0
.end method

.method private findLastNotAddedIndex(Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)I
    .locals 6
    .param p1, "finalState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    .prologue
    .line 175
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 176
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 177
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/ExpandableView;

    .line 179
    .local v0, "child":Lcom/android/systemui_ex/statusbar/ExpandableView;
    invoke-virtual {p1, v0}, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;

    move-result-object v3

    .line 180
    .local v3, "viewState":Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 176
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 183
    :cond_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 184
    iget v4, v3, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 187
    .end local v0    # "child":Lcom/android/systemui_ex/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    :goto_1
    return v4

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 769
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFinalActualHeight(Lcom/android/systemui_ex/statusbar/ExpandableView;)I
    .locals 2
    .param p0, "view"    # Lcom/android/systemui_ex/statusbar/ExpandableView;

    .prologue
    .line 918
    if-nez p0, :cond_0

    .line 919
    const/4 v1, 0x0

    .line 925
    :goto_0
    return v1

    .line 921
    :cond_0
    const v1, 0x7f0f0005

    invoke-static {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 922
    .local v0, "heightAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 923
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    goto :goto_0

    .line 925
    :cond_1
    const v1, 0x7f0f000b

    invoke-static {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    .line 744
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$10;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$10;-><init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;)V

    goto :goto_0
.end method

.method private onAnimationFinished()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onChildAnimationFinished()V

    .line 793
    return-void
.end method

.method private processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)V
    .locals 11
    .param p2, "finalState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui_ex/statusbar/stack/StackScrollState;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "animationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    const/16 v10, 0x8

    const/high16 v9, 0x40000000    # 2.0f

    .line 804
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 805
    .local v2, "event":Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget-object v1, v2, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui_ex/statusbar/ExpandableView;

    .line 806
    .local v1, "changingView":Lcom/android/systemui_ex/statusbar/ExpandableView;
    iget v6, v2, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-nez v6, :cond_3

    .line 810
    invoke-virtual {p2, v1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;

    move-result-object v5

    .line 812
    .local v5, "viewState":Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    if-eqz v5, :cond_0

    .line 816
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getVisibility()I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 818
    invoke-virtual {p2, v1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    goto :goto_0

    .line 821
    :cond_1
    iget v6, v5, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->alpha:F

    invoke-virtual {v1, v6}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setAlpha(F)V

    .line 822
    iget v6, v5, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    invoke-virtual {v1, v6}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTranslationY(F)V

    .line 823
    iget v6, v5, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    invoke-virtual {v1, v6}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTranslationZ(F)V

    .line 824
    iget v6, v5, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->height:I

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 825
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    .end local v5    # "viewState":Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 827
    :cond_3
    iget v6, v2, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 829
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getVisibility()I

    move-result v6

    if-ne v6, v10, :cond_4

    .line 830
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_0

    .line 836
    :cond_4
    iget-object v6, v2, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    invoke-virtual {p2, v6}, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;

    move-result-object v5

    .line 838
    .restart local v5    # "viewState":Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    .line 840
    .local v0, "actualHeight":I
    const/high16 v4, -0x40800000    # -1.0f

    .line 841
    .local v4, "translationDirection":F
    if-eqz v5, :cond_5

    .line 844
    iget v6, v5, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationY()F

    move-result v7

    int-to-float v8, v0

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v6, v9

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 847
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 850
    :cond_5
    const-wide/16 v6, 0x1d0

    new-instance v8, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$11;

    invoke-direct {v8, p0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$11;-><init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    invoke-virtual {v1, v6, v7, v4, v8}, Lcom/android/systemui_ex/statusbar/ExpandableView;->performRemoveAnimation(JFLjava/lang/Runnable;)V

    goto :goto_1

    .line 858
    .end local v0    # "actualHeight":I
    .end local v4    # "translationDirection":F
    .end local v5    # "viewState":Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    :cond_6
    iget v6, v2, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 862
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_1

    .line 866
    .end local v1    # "changingView":Lcom/android/systemui_ex/statusbar/ExpandableView;
    .end local v2    # "event":Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_7
    return-void
.end method

.method private startAlphaAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 19
    .param p1, "child"    # Lcom/android/systemui_ex/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 498
    const v14, 0x7f0f000f

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 499
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f0f0009

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 500
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->alpha:F

    .line 501
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 568
    :goto_0
    return-void

    .line 504
    :cond_0
    const v14, 0x7f0f0003

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 505
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateAlpha:Z

    if-nez v14, :cond_2

    .line 507
    if-eqz v9, :cond_1

    .line 510
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 511
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 512
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 513
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 514
    const v14, 0x7f0f000f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 515
    const v14, 0x7f0f0009

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 516
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 520
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setAlpha(F)V

    .line 521
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-nez v14, :cond_2

    .line 522
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setVisibility(I)V

    .line 527
    :cond_2
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getAlpha()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 529
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 531
    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 532
    new-instance v14, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v5}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;-><init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Lcom/android/systemui_ex/statusbar/ExpandableView;F)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 557
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 558
    .local v6, "newDuration":J
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 559
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-nez v14, :cond_4

    .line 560
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 562
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 564
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 565
    const v14, 0x7f0f0003

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 566
    const v14, 0x7f0f000f

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getAlpha()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 567
    const v14, 0x7f0f0009

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startAnimations(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui_ex/statusbar/stack/StackScrollState;I)V
    .locals 34
    .param p1, "child"    # Lcom/android/systemui_ex/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    .param p3, "finalState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState;
    .param p4, "i"    # I

    .prologue
    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getVisibility()I

    move-result v21

    .line 196
    .local v21, "childVisibility":I
    if-nez v21, :cond_e

    const/16 v31, 0x1

    .line 197
    .local v31, "wasVisible":Z
    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->alpha:F

    .line 198
    .local v4, "alpha":F
    if-nez v31, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->gone:Z

    if-nez v5, :cond_0

    .line 199
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setVisibility(I)V

    .line 202
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_f

    const/16 v32, 0x1

    .line 203
    .local v32, "yTranslationChanging":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationZ()F

    move-result v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_10

    const/16 v33, 0x1

    .line 204
    .local v33, "zTranslationChanging":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getScaleX()F

    move-result v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->scale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_11

    const/16 v28, 0x1

    .line 205
    .local v28, "scaleChanging":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getAlpha()F

    move-result v5

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_12

    const/16 v20, 0x1

    .line 206
    .local v20, "alphaChanging":Z
    :goto_4
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->height:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    if-eq v5, v6, :cond_13

    const/16 v24, 0x1

    .line 207
    .local v24, "heightChanging":Z
    :goto_5
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->dark:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->isDark()Z

    move-result v6

    if-eq v5, v6, :cond_14

    const/16 v22, 0x1

    .line 208
    .local v22, "darkChanging":Z
    :goto_6
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v6

    if-eq v5, v6, :cond_15

    const/16 v29, 0x1

    .line 209
    .local v29, "topInsetChanging":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v30

    .line 210
    .local v30, "wasAdded":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget-boolean v0, v5, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasDelays:Z

    move/from16 v23, v0

    .line 211
    .local v23, "hasDelays":Z
    if-nez v32, :cond_1

    if-nez v33, :cond_1

    if-nez v28, :cond_1

    if-nez v20, :cond_1

    if-nez v24, :cond_1

    if-nez v29, :cond_1

    if-eqz v22, :cond_16

    :cond_1
    const/16 v25, 0x1

    .line 213
    .local v25, "isDelayRelevant":Z
    :goto_8
    move/from16 v27, v30

    .line 214
    .local v27, "noAnimation":Z
    const-wide/16 v10, 0x0

    .line 215
    .local v10, "delay":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    .line 216
    .local v8, "duration":J
    if-eqz v23, :cond_2

    if-nez v25, :cond_3

    :cond_2
    if-eqz v30, :cond_4

    .line 217
    :cond_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->calculateChildAnimationDelay(Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)J

    move-result-wide v12

    add-long v10, v6, v12

    .line 220
    :cond_4
    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v5, :cond_5

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTranslationY(F)V

    .line 222
    const/16 v32, 0x1

    .line 223
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v26, v0

    .line 224
    .local v26, "longerDurationFactor":F
    move/from16 v0, v26

    float-to-double v6, v0

    const-wide v12, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v26, v0

    .line 225
    const-wide/16 v6, 0x202

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v5, v5, v26

    float-to-long v12, v5

    add-long v8, v6, v12

    .line 230
    .end local v26    # "longerDurationFactor":F
    :cond_5
    if-eqz v32, :cond_6

    .line 231
    if-eqz v27, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-nez v5, :cond_17

    .line 232
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTranslationY(F)V

    .line 239
    :cond_6
    :goto_9
    if-eqz v33, :cond_7

    .line 240
    if-eqz v27, :cond_18

    .line 241
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTranslationZ(F)V

    .line 248
    :cond_7
    :goto_a
    if-eqz v28, :cond_8

    .line 249
    if-eqz v27, :cond_19

    .line 250
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->scale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setScaleX(F)V

    .line 251
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->scale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setScaleY(F)V

    .line 258
    :cond_8
    :goto_b
    if-eqz v20, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationX()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_9

    .line 259
    if-eqz v27, :cond_1a

    .line 260
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->alpha:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setAlpha(F)V

    .line 267
    :cond_9
    :goto_c
    if-eqz v24, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    if-eqz v5, :cond_a

    .line 268
    if-eqz v27, :cond_1b

    .line 269
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->height:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 276
    :cond_a
    :goto_d
    if-eqz v29, :cond_b

    .line 277
    if-eqz v27, :cond_1c

    .line 278
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 285
    :cond_b
    :goto_e
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->dimmed:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateDimmed:Z

    if-eqz v5, :cond_1d

    if-nez v30, :cond_1d

    if-nez v27, :cond_1d

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 289
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->dark:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateDark:Z

    if-eqz v5, :cond_1e

    if-nez v27, :cond_1e

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5, v10, v11}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 292
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->belowSpeedBump:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 295
    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->hideSensitive:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    if-eqz v5, :cond_1f

    if-nez v30, :cond_1f

    if-nez v27, :cond_1f

    const/4 v15, 0x1

    :goto_11
    move-object/from16 v13, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 298
    if-eqz v30, :cond_c

    .line 299
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v6, v7}, Lcom/android/systemui_ex/statusbar/ExpandableView;->performAddAnimation(JJ)V

    .line 301
    :cond_c
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    if-eqz v5, :cond_d

    move-object/from16 v14, p1

    .line 302
    check-cast v14, Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    add-long v16, v10, v8

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v15, p2

    invoke-virtual/range {v12 .. v17}, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;->performSpeedBumpAnimation(ILcom/android/systemui_ex/statusbar/SpeedBumpView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;J)V

    .line 305
    :cond_d
    return-void

    .line 196
    .end local v4    # "alpha":F
    .end local v8    # "duration":J
    .end local v10    # "delay":J
    .end local v20    # "alphaChanging":Z
    .end local v22    # "darkChanging":Z
    .end local v23    # "hasDelays":Z
    .end local v24    # "heightChanging":Z
    .end local v25    # "isDelayRelevant":Z
    .end local v27    # "noAnimation":Z
    .end local v28    # "scaleChanging":Z
    .end local v29    # "topInsetChanging":Z
    .end local v30    # "wasAdded":Z
    .end local v31    # "wasVisible":Z
    .end local v32    # "yTranslationChanging":Z
    .end local v33    # "zTranslationChanging":Z
    :cond_e
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 202
    .restart local v4    # "alpha":F
    .restart local v31    # "wasVisible":Z
    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 203
    .restart local v32    # "yTranslationChanging":Z
    :cond_10
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 204
    .restart local v33    # "zTranslationChanging":Z
    :cond_11
    const/16 v28, 0x0

    goto/16 :goto_3

    .line 205
    .restart local v28    # "scaleChanging":Z
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 206
    .restart local v20    # "alphaChanging":Z
    :cond_13
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 207
    .restart local v24    # "heightChanging":Z
    :cond_14
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 208
    .restart local v22    # "darkChanging":Z
    :cond_15
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 211
    .restart local v23    # "hasDelays":Z
    .restart local v29    # "topInsetChanging":Z
    .restart local v30    # "wasAdded":Z
    :cond_16
    const/16 v25, 0x0

    goto/16 :goto_8

    .restart local v8    # "duration":J
    .restart local v10    # "delay":J
    .restart local v25    # "isDelayRelevant":Z
    .restart local v27    # "noAnimation":Z
    :cond_17
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 234
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startYTranslationAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_9

    :cond_18
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 243
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startZTranslationAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_a

    .line 253
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v8, v9}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startScaleAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;J)V

    goto/16 :goto_b

    :cond_1a
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 262
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startAlphaAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_c

    :cond_1b
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 271
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startHeightAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_d

    :cond_1c
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 280
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startInsetAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_e

    .line 285
    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 289
    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 295
    :cond_1f
    const/4 v15, 0x0

    goto/16 :goto_11
.end method

.method private startAnimator(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 732
    return-void
.end method

.method private startHeightAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 15
    .param p1, "child"    # Lcom/android/systemui_ex/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 381
    const v12, 0x7f0f0011

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 382
    .local v9, "previousStartValue":Ljava/lang/Integer;
    const v12, 0x7f0f000b

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 383
    .local v8, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->height:I

    .line 384
    .local v3, "newEndValue":I
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v3, :cond_0

    .line 436
    :goto_0
    return-void

    .line 387
    :cond_0
    const v12, 0x7f0f0005

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 388
    .local v7, "previousAnimator":Landroid/animation/ValueAnimator;
    iget-object v12, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateHeight:Z

    if-nez v12, :cond_2

    .line 390
    if-eqz v7, :cond_1

    .line 393
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 394
    .local v11, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v10, v3, v12

    .line 395
    .local v10, "relativeDiff":I
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v6, v12, v10

    .line 396
    .local v6, "newStartValue":I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 397
    const v12, 0x7f0f0011

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 398
    const v12, 0x7f0f000b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 399
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 403
    .end local v6    # "newStartValue":I
    .end local v10    # "relativeDiff":I
    .end local v11    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setActualHeight(IZ)V

    goto :goto_0

    .line 408
    :cond_2
    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getActualHeight()I

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 409
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v12, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$2;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$2;-><init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 416
    iget-object v12, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 417
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 418
    .local v4, "newDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 419
    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_4

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v12

    if-nez v12, :cond_4

    .line 420
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 422
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    new-instance v12, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$3;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$3;-><init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 432
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 433
    const v12, 0x7f0f0005

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 434
    const v12, 0x7f0f0011

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getActualHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 435
    const v12, 0x7f0f000b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startInsetAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 15
    .param p1, "child"    # Lcom/android/systemui_ex/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 440
    const v12, 0x7f0f0010

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 441
    .local v9, "previousStartValue":Ljava/lang/Integer;
    const v12, 0x7f0f000a

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 442
    .local v8, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    .line 443
    .local v3, "newEndValue":I
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v3, :cond_0

    .line 494
    :goto_0
    return-void

    .line 446
    :cond_0
    const v12, 0x7f0f0004

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 447
    .local v7, "previousAnimator":Landroid/animation/ValueAnimator;
    iget-object v12, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateTopInset:Z

    if-nez v12, :cond_2

    .line 449
    if-eqz v7, :cond_1

    .line 452
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 453
    .local v11, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v10, v3, v12

    .line 454
    .local v10, "relativeDiff":I
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v6, v12, v10

    .line 455
    .local v6, "newStartValue":I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 456
    const v12, 0x7f0f0010

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 457
    const v12, 0x7f0f000a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 458
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 462
    .end local v6    # "newStartValue":I
    .end local v10    # "relativeDiff":I
    .end local v11    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setClipTopAmount(I)V

    goto :goto_0

    .line 467
    :cond_2
    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 468
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v12, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$4;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$4;-><init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 474
    iget-object v12, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 475
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 476
    .local v4, "newDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 477
    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_4

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v12

    if-nez v12, :cond_4

    .line 478
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 480
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 482
    new-instance v12, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$5;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$5;-><init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 490
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 491
    const v12, 0x7f0f0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 492
    const v12, 0x7f0f0010

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 493
    const v12, 0x7f0f000a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startScaleAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;J)V
    .locals 21
    .param p1, "child"    # Lcom/android/systemui_ex/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J

    .prologue
    .line 677
    const v16, 0x7f0f000e

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    .line 678
    .local v13, "previousStartValue":Ljava/lang/Float;
    const v16, 0x7f0f0008

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    .line 679
    .local v12, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->scale:F

    .line 680
    .local v7, "newEndValue":F
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v16, v16, v7

    if-nez v16, :cond_0

    .line 727
    :goto_0
    return-void

    .line 683
    :cond_0
    const v16, 0x7f0f0002

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/ObjectAnimator;

    .line 684
    .local v11, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateScale:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 686
    if-eqz v11, :cond_1

    .line 689
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 690
    .local v15, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v16

    sub-float v14, v7, v16

    .line 691
    .local v14, "relativeDiff":F
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v16

    add-float v10, v16, v14

    .line 692
    .local v10, "newStartValue":F
    const/16 v16, 0x0

    aget-object v16, v15, v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 693
    const/16 v16, 0x1

    aget-object v16, v15, v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 694
    const v16, 0x7f0f000e

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 695
    const v16, 0x7f0f0008

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 696
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto/16 :goto_0

    .line 700
    .end local v10    # "newStartValue":F
    .end local v14    # "relativeDiff":F
    .end local v15    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setScaleX(F)V

    .line 701
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setScaleY(F)V

    .line 705
    :cond_2
    sget-object v16, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getScaleX()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 707
    .local v5, "holderX":Landroid/animation/PropertyValuesHolder;
    sget-object v16, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getScaleY()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 709
    .local v6, "holderY":Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    const/16 v17, 0x1

    aput-object v6, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 710
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 711
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v11}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v8

    .line 712
    .local v8, "newDuration":J
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 713
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 715
    new-instance v16, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$9;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$9;-><init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 723
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 724
    const v16, 0x7f0f0002

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 725
    const v16, 0x7f0f000e

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getScaleX()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 726
    const v16, 0x7f0f0008

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startYTranslationAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 19
    .param p1, "child"    # Lcom/android/systemui_ex/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 624
    const v14, 0x7f0f000c

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 625
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f0f0006

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 626
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 627
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 673
    :goto_0
    return-void

    .line 630
    :cond_0
    const/high16 v14, 0x7f0f0000

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 631
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateY:Z

    if-nez v14, :cond_2

    .line 633
    if-eqz v9, :cond_1

    .line 636
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 637
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 638
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 639
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 640
    const v14, 0x7f0f000c

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 641
    const v14, 0x7f0f0006

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 642
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 646
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTranslationY(F)V

    goto :goto_0

    .line 651
    :cond_2
    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationY()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 653
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 654
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 655
    .local v6, "newDuration":J
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 656
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-nez v14, :cond_4

    .line 657
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 659
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 661
    new-instance v14, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$8;-><init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 669
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 670
    const/high16 v14, 0x7f0f0000

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 671
    const v14, 0x7f0f000c

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationY()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 672
    const v14, 0x7f0f0006

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startZTranslationAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 19
    .param p1, "child"    # Lcom/android/systemui_ex/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 572
    const v14, 0x7f0f000d

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 573
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f0f0007

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 574
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    .line 575
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 620
    :goto_0
    return-void

    .line 578
    :cond_0
    const v14, 0x7f0f0001

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 579
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateZ:Z

    if-nez v14, :cond_2

    .line 581
    if-eqz v9, :cond_1

    .line 584
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 585
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 586
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 587
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 588
    const v14, 0x7f0f000d

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 589
    const v14, 0x7f0f0007

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 590
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 594
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTranslationZ(F)V

    .line 598
    :cond_2
    sget-object v14, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationZ()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 600
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 601
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 602
    .local v6, "newDuration":J
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 603
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-nez v14, :cond_4

    .line 604
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 606
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 608
    new-instance v14, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$7;-><init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 616
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 617
    const v14, 0x7f0f0001

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 618
    const v14, 0x7f0f000d

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationZ()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 619
    const v14, 0x7f0f0007

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateOverScrollToAmount(FZZ)V
    .locals 4
    .param p1, "targetAmount"    # F
    .param p2, "onTop"    # Z
    .param p3, "isRubberbanded"    # Z

    .prologue
    .line 870
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, p2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 871
    .local v1, "startOverScrollAmount":F
    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    .line 904
    :goto_0
    return-void

    .line 874
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 875
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 877
    .local v0, "overScrollAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 878
    new-instance v2, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$12;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$12;-><init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;ZZ)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 887
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 888
    new-instance v2, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$13;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$13;-><init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 898
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 899
    if-eqz p2, :cond_1

    .line 900
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 902
    :cond_1
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public cancelOverScrollAnimators(Z)V
    .locals 1
    .param p1, "onTop"    # Z

    .prologue
    .line 907
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 908
    .local v0, "currentAnimator":Landroid/animation/ValueAnimator;
    :goto_0
    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 911
    :cond_0
    return-void

    .line 907
    .end local v0    # "currentAnimator":Landroid/animation/ValueAnimator;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnimationForEnablingSingleHandMode(Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)V
    .locals 18
    .param p1, "finalState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v14}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v4

    .line 135
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v14, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/ExpandableView;

    .line 138
    .local v3, "child":Lcom/android/systemui_ex/statusbar/ExpandableView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;

    move-result-object v13

    .line 139
    .local v13, "viewState":Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    if-eqz v13, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1

    .line 135
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 143
    :cond_1
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    invoke-virtual {v14}, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    .line 145
    const v14, 0x7f0f0006

    invoke-static {v3, v14}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    .line 146
    .local v12, "previousEndValue":Ljava/lang/Float;
    iget v10, v13, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 147
    .local v10, "newEndValue":F
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v10

    if-nez v14, :cond_3

    .line 171
    .end local v3    # "child":Lcom/android/systemui_ex/statusbar/ExpandableView;
    .end local v10    # "newEndValue":F
    .end local v12    # "previousEndValue":Ljava/lang/Float;
    .end local v13    # "viewState":Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    :cond_2
    return-void

    .line 150
    .restart local v3    # "child":Lcom/android/systemui_ex/statusbar/ExpandableView;
    .restart local v10    # "newEndValue":F
    .restart local v12    # "previousEndValue":Ljava/lang/Float;
    .restart local v13    # "viewState":Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    :cond_3
    const/high16 v14, 0x7f0f0000

    invoke-static {v3, v14}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/ObjectAnimator;

    .line 151
    .local v11, "previousAnimator":Landroid/animation/ObjectAnimator;
    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationY()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v10, v15, v16

    invoke-static {v3, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 153
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    const-wide/16 v6, 0xf0

    .line 155
    .local v6, "duration":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v11}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v8

    .line 156
    .local v8, "newDuration":J
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    new-instance v14, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$1;-><init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 166
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 167
    const/high16 v14, 0x7f0f0000

    invoke-virtual {v3, v14, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 168
    const v14, 0x7f0f000c

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationY()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 169
    const v14, 0x7f0f0006

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui_ex/statusbar/stack/StackScrollState;J)V
    .locals 7
    .param p2, "finalState"    # Lcom/android/systemui_ex/statusbar/stack/StackScrollState;
    .param p3, "additionalDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui_ex/statusbar/stack/StackScrollState;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "mAnimationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)V

    .line 108
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 109
    .local v1, "childCount":I
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->applyCombination(Ljava/util/ArrayList;)V

    .line 110
    iput-wide p3, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    .line 111
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->combineLength(Ljava/util/ArrayList;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    .line 112
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->findLastNotAddedIndex(Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    .line 113
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 114
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/ExpandableView;

    .line 116
    .local v0, "child":Lcom/android/systemui_ex/statusbar/ExpandableView;
    invoke-virtual {p2, v0}, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;

    move-result-object v3

    .line 117
    .local v3, "viewState":Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 113
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 122
    invoke-direct {p0, v0, v3, p2, v2}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startAnimations(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui_ex/statusbar/stack/StackScrollState;I)V

    goto :goto_1

    .line 124
    .end local v0    # "child":Lcom/android/systemui_ex/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_3

    .line 126
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    .line 128
    :cond_3
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 130
    return-void
.end method
