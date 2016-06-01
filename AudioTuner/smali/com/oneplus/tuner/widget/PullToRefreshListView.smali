.class public Lcom/oneplus/tuner/widget/PullToRefreshListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/widget/PullToRefreshListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final DONE:I = 0x3

.field private static final LOADING:I = 0x4

.field private static final PULL_To_REFRESH:I = 0x1

.field private static final RATIO:I = 0x3

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_To_REFRESH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PullToRefreshListView"


# instance fields
.field i:I

.field private isBack:Z

.field private isRecored:Z

.field private isRefreshable:Z

.field private mAnimation:Landroid/view/animation/RotateAnimation;

.field private mArrowImageView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentConfigView:Landroid/view/View;

.field private mDefaultStyleView:Landroid/view/View;

.field private mFirstItemIndex:I

.field private mHeadContentHeight:I

.field private mHeadView:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastUpdatedTextView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshListener:Lcom/oneplus/tuner/widget/PullToRefreshListView$OnRefreshListener;

.field private mReverseAnimation:Landroid/view/animation/RotateAnimation;

.field private mStartY:I

.field private mState:I

.field private mTipsTextview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->i:I

    .line 82
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->i:I

    .line 87
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 5

    .prologue
    const v4, 0x7f0c0669

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 268
    iget v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 314
    :goto_0
    return-void

    .line 270
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mTipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    invoke-direct {p0, v3}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->handleLastUpdatedTextView(I)V

    .line 274
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 275
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 276
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mTipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c066a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 280
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mTipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    invoke-direct {p0, v3}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->handleLastUpdatedTextView(I)V

    .line 283
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 284
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-boolean v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isBack:Z

    if-eqz v0, :cond_0

    .line 286
    iput-boolean v3, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isBack:Z

    .line 287
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 288
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mReverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mTipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mTipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 298
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 300
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mTipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c066b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-direct {p0, v3}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->handleLastUpdatedTextView(I)V

    goto/16 :goto_0

    .line 306
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 307
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 309
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mTipsTextview:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-direct {p0, v3}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->handleLastUpdatedTextView(I)V

    goto/16 :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleLastUpdatedTextView(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mLastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mLastUpdatedTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mLastUpdatedTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v12, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->setCacheColorHint(I)V

    .line 93
    iput-object p1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030060

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    .line 97
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01bb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mArrowImageView:Landroid/widget/ImageView;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 101
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01ba

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 103
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01bc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mTipsTextview:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mLastUpdatedTextView:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->measureView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadContentHeight:I

    .line 110
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v12, v1, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 111
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 112
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001f

    invoke-virtual {v0, v1, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mCurrentConfigView:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mCurrentConfigView:Landroid/view/View;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030023

    invoke-virtual {v0, v1, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mDefaultStyleView:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mDefaultStyleView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v5, v12}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 121
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mAnimation:Landroid/view/animation/RotateAnimation;

    .line 124
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 125
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 128
    new-instance v5, Landroid/view/animation/RotateAnimation;

    const/4 v7, 0x0

    move v6, v2

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mReverseAnimation:Landroid/view/animation/RotateAnimation;

    .line 131
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mReverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 132
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mReverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mReverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 134
    const/4 v0, 0x3

    iput v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    .line 135
    iput-boolean v12, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isRefreshable:Z

    .line 136
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 353
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 354
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 357
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 358
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 360
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 361
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 367
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 368
    return-void

    .line 364
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mRefreshListener:Lcom/oneplus/tuner/widget/PullToRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mRefreshListener:Lcom/oneplus/tuner/widget/PullToRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/PullToRefreshListView$OnRefreshListener;->onRefresh()V

    .line 349
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 259
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCurrentConfigView()Landroid/view/View;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mCurrentConfigView:Landroid/view/View;

    return-object v0
.end method

.method public getDefaultStyleView()Landroid/view/View;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mDefaultStyleView:Landroid/view/View;

    return-object v0
.end method

.method public getRefreshable()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isRefreshable:Z

    return v0
.end method

.method public onRefreshComplete()V
    .locals 6

    .prologue
    .line 335
    const-string v2, "PullToRefreshListView"

    const-string v3, "onRefreshComplete mState = 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v2, 0x3

    iput v2, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    .line 337
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd  HH:mm:ss "

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "df":Ljava/text/DateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "time":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mLastUpdatedTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c066c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    invoke-direct {p0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->changeHeaderViewByState()V

    .line 343
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 161
    iget-boolean v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isRefreshable:Z

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 251
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 164
    :pswitch_0
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mFirstItemIndex:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isRecored:Z

    if-nez v1, :cond_0

    .line 165
    iput-boolean v3, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isRecored:Z

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mStartY:I

    goto :goto_0

    .line 171
    :pswitch_1
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    if-eq v1, v6, :cond_3

    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    if-eq v1, v2, :cond_3

    .line 172
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    if-ne v1, v5, :cond_1

    .line 174
    :cond_1
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    if-ne v1, v3, :cond_2

    .line 175
    const-string v1, "PullToRefreshListView"

    const-string v2, "ACTION_UP mState = 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput v5, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    .line 177
    invoke-direct {p0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->changeHeaderViewByState()V

    .line 179
    :cond_2
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    if-nez v1, :cond_3

    .line 180
    const-string v1, "PullToRefreshListView"

    const-string v2, "ACTION_UP mState = 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput v6, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    .line 182
    invoke-direct {p0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->changeHeaderViewByState()V

    .line 183
    invoke-direct {p0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->onRefresh()V

    .line 186
    :cond_3
    iput-boolean v4, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isRecored:Z

    .line 187
    iput-boolean v4, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isBack:Z

    .line 188
    invoke-virtual {p0, v4}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->setOverScrollMode(I)V

    goto :goto_0

    .line 192
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 193
    .local v0, "tempY":I
    iget-boolean v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isRecored:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mFirstItemIndex:I

    if-nez v1, :cond_4

    .line 194
    iput-boolean v3, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isRecored:Z

    .line 195
    iput v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mStartY:I

    .line 199
    :cond_4
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mStartY:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    if-eq v1, v6, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isRecored:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    if-eq v1, v2, :cond_0

    .line 201
    invoke-virtual {p0, v6}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->setOverScrollMode(I)V

    .line 203
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    if-nez v1, :cond_5

    .line 204
    invoke-virtual {p0, v4}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->setSelection(I)V

    .line 205
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mStartY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadContentHeight:I

    if-ge v1, v2, :cond_9

    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mStartY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_9

    .line 207
    const-string v1, "PullToRefreshListView"

    const-string v2, "ACTION_MOVE mState = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput v3, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    .line 210
    invoke-direct {p0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->changeHeaderViewByState()V

    .line 217
    :cond_5
    :goto_1
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    if-ne v1, v3, :cond_6

    .line 218
    invoke-virtual {p0, v4}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->setSelection(I)V

    .line 219
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mStartY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadContentHeight:I

    if-lt v1, v2, :cond_a

    .line 220
    const-string v1, "PullToRefreshListView"

    const-string v2, "ACTION_MOVE mState = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iput v4, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    .line 223
    iput-boolean v3, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isBack:Z

    .line 224
    invoke-direct {p0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->changeHeaderViewByState()V

    .line 231
    :cond_6
    :goto_2
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    if-ne v1, v5, :cond_7

    .line 232
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mStartY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_7

    .line 233
    const-string v1, "PullToRefreshListView"

    const-string v2, "ACTION_MOVE mState1 = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput v3, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    .line 236
    invoke-direct {p0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->changeHeaderViewByState()V

    .line 239
    :cond_7
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    if-ne v1, v3, :cond_8

    .line 240
    iget-object v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mStartY:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 243
    :cond_8
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mStartY:I

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadContentHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 211
    :cond_9
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mStartY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_5

    .line 212
    const-string v1, "PullToRefreshListView"

    const-string v2, "ACTION_MOVE mState = 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput v5, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    .line 214
    invoke-direct {p0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->changeHeaderViewByState()V

    goto :goto_1

    .line 225
    :cond_a
    iget v1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mStartY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_6

    .line 226
    const-string v1, "PullToRefreshListView"

    const-string v2, "ACTION_MOVE mState1 = 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iput v5, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mState:I

    .line 228
    invoke-direct {p0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->changeHeaderViewByState()V

    goto :goto_2

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeCurrentConfigView()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mCurrentConfigView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z

    .line 391
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 374
    return-void
.end method

.method public setFirstItemIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mFirstItemIndex:I

    .line 378
    return-void
.end method

.method public setRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isRefreshable:Z

    .line 140
    if-eqz p1, :cond_0

    .line 141
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->setOverScrollMode(I)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->setOverScrollMode(I)V

    goto :goto_0
.end method

.method public setonRefreshListener(Lcom/oneplus/tuner/widget/PullToRefreshListView$OnRefreshListener;)V
    .locals 1
    .param p1, "refreshListener"    # Lcom/oneplus/tuner/widget/PullToRefreshListView$OnRefreshListener;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mRefreshListener:Lcom/oneplus/tuner/widget/PullToRefreshListView$OnRefreshListener;

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->isRefreshable:Z

    .line 328
    return-void
.end method

.method public showCurrentConfigView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 381
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mCurrentConfigView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z

    .line 382
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mDefaultStyleView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z

    .line 383
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z

    .line 384
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mCurrentConfigView:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 385
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mDefaultStyleView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 386
    iget-object v0, p0, Lcom/oneplus/tuner/widget/PullToRefreshListView;->mHeadView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/tuner/widget/PullToRefreshListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 387
    return-void
.end method
