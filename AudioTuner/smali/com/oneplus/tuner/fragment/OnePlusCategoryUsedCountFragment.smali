.class public Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;
.super Landroid/app/Fragment;
.source "OnePlusCategoryUsedCountFragment.java"


# static fields
.field private static final ORDER:Ljava/lang/String; = "3"


# instance fields
.field private mCategoryId:Ljava/lang/String;

.field private mIsConfigEmpty:Z

.field private mList:Lcom/oppo/tribune/square/SquareTopLineView;

.field private mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

.field private mViewContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mIsConfigEmpty:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mIsConfigEmpty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;)Lcom/oppo/tribune/square/SquareTopLineControl;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment$1;-><init>(Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const v0, 0x7f030042

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mViewContainer:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mViewContainer:Landroid/view/View;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/square/SquareTopLineView;

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mList:Lcom/oppo/tribune/square/SquareTopLineView;

    .line 31
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->getmCategoryId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mCategoryId:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mList:Lcom/oppo/tribune/square/SquareTopLineView;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mCategoryId:Ljava/lang/String;

    const-string v5, "3"

    invoke-direct/range {v0 .. v5}, Lcom/oppo/tribune/square/SquareTopLineControl;-><init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineView;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    .line 34
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mIsConfigEmpty:Z

    .line 36
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mViewContainer:Landroid/view/View;

    return-object v0
.end method

.method public onReload()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->onReLoad()V

    .line 74
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 68
    return-void
.end method
