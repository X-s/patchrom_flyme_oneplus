.class public Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;
.super Landroid/widget/RelativeLayout;
.source "PullRefreshHeaderView.java"


# instance fields
.field private mAnimationLoading:Landroid/graphics/drawable/AnimationDrawable;

.field private mArrowDownAnimation:Landroid/view/animation/Animation;

.field private mArrowImageView:Landroid/widget/ImageView;

.field private mArrowUpAnimation:Landroid/view/animation/Animation;

.field private mImageViewLoading:Landroid/widget/ImageView;

.field private mInstructionTextView:Landroid/widget/TextView;

.field private mPullToRefreshStr:Ljava/lang/String;

.field private mRefreshAtStr:Ljava/lang/String;

.field private mRefreshTimeTextView:Landroid/widget/TextView;

.field private mRefreshingStr:Ljava/lang/String;

.field private mReleaseToRefreshStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->initMembers(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->initMembers(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private initMembers(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03005d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    const v1, 0x7f0b01ab

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mArrowImageView:Landroid/widget/ImageView;

    .line 59
    const v1, 0x7f0b00bf

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mImageViewLoading:Landroid/widget/ImageView;

    .line 60
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mImageViewLoading:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mAnimationLoading:Landroid/graphics/drawable/AnimationDrawable;

    .line 62
    const v1, 0x7f0b01ad

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mRefreshTimeTextView:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0b01ac

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mInstructionTextView:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f040010

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mArrowDownAnimation:Landroid/view/animation/Animation;

    .line 66
    const v1, 0x7f040011

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mArrowUpAnimation:Landroid/view/animation/Animation;

    .line 68
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mArrowUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 69
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mArrowDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mPullToRefreshStr:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mReleaseToRefreshStr:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mRefreshingStr:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mRefreshAtStr:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public onPullToRefresh(Ljava/lang/String;)V
    .locals 3
    .param p1, "refreshTime"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mAnimationLoading:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mAnimationLoading:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mImageViewLoading:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mArrowImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mInstructionTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mPullToRefreshStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mRefreshAtStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mRefreshTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onRefresh(Ljava/lang/String;)V
    .locals 3
    .param p1, "refreshTime"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 81
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mArrowImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mImageViewLoading:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mAnimationLoading:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mAnimationLoading:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mAnimationLoading:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mInstructionTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mRefreshingStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mRefreshAtStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mRefreshTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onReleaseToRefresh(Ljava/lang/String;)V
    .locals 3
    .param p1, "refreshTime"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mAnimationLoading:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mAnimationLoading:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mImageViewLoading:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mArrowImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mInstructionTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mReleaseToRefreshStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mRefreshAtStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->mRefreshTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public startDownAnimation()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public startUpAnimation()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method
