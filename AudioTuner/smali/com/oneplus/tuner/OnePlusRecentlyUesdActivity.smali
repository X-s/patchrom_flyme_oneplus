.class public Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "OnePlusRecentlyUesdActivity.java"


# instance fields
.field private mIsConfigEmpty:Z

.field private mList:Lcom/oppo/tribune/square/SquareTopLineView;

.field private mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mIsConfigEmpty:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mIsConfigEmpty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;)Lcom/oppo/tribune/square/SquareTopLineControl;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    return-object v0
.end method


# virtual methods
.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mSlideMenuSelectedIndex:I

    .line 73
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mIsSlideMenuEnable:Z

    .line 58
    iput-object p0, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mActivity:Landroid/app/Activity;

    .line 59
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mIsTitlebarMenuEnable:Z

    .line 64
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c055f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->setContent(I)V

    .line 24
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/square/SquareTopLineView;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mList:Lcom/oppo/tribune/square/SquareTopLineView;

    .line 25
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mList:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineView;->getPullToRefreshLayout()Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->setmIsPullRefreshEnable(Z)V

    .line 26
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineControl;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mList:Lcom/oppo/tribune/square/SquareTopLineView;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/oppo/tribune/square/SquareTopLineControl;-><init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineView;I)V

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    .line 27
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mIsConfigEmpty:Z

    .line 28
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 32
    invoke-super {p0}, Lcom/oneplus/tuner/base/BaseActivity;->onResume()V

    .line 33
    new-instance v0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity$1;-><init>(Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V

    .line 53
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->onResume()V

    .line 77
    return-void
.end method
