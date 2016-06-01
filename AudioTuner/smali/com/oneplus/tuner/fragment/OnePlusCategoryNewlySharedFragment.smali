.class public Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;
.super Landroid/app/Fragment;
.source "OnePlusCategoryNewlySharedFragment.java"


# static fields
.field private static final ORDER:Ljava/lang/String; = "1"


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

.method static synthetic access$000(Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mIsConfigEmpty:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mIsConfigEmpty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;)Lcom/oppo/tribune/square/SquareTopLineControl;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

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
    new-instance v0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment$1;-><init>(Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    const v0, 0x7f030042

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mViewContainer:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mViewContainer:Landroid/view/View;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/square/SquareTopLineView;

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mList:Lcom/oppo/tribune/square/SquareTopLineView;

    .line 32
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->getmCategoryId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mCategoryId:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mList:Lcom/oppo/tribune/square/SquareTopLineView;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mCategoryId:Ljava/lang/String;

    const-string v5, "1"

    invoke-direct/range {v0 .. v5}, Lcom/oppo/tribune/square/SquareTopLineControl;-><init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineView;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    .line 35
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mIsConfigEmpty:Z

    .line 36
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mViewContainer:Landroid/view/View;

    return-object v0
.end method

.method public onReload()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->onReLoad()V

    .line 73
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 67
    return-void
.end method
