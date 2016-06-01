.class public Lcom/oneplus/tuner/OnePlusCollectionsActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "OnePlusCollectionsActivity.java"


# static fields
.field private static final UPDATE_MIN_INTERVAL:J = 0xea60L


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsConfigEmpty:Z

.field private mIsRefresh:Z

.field private mList:Lcom/oppo/tribune/square/SquareTopLineView;

.field private mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mIsSuccessLogin:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Lcom/oppo/tribune/square/SquareTopLineControl;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mIsConfigEmpty:Z

    return v0
.end method

.method static synthetic access$502(Lcom/oneplus/tuner/OnePlusCollectionsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusCollectionsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mIsConfigEmpty:Z

    return p1
.end method

.method private doRefresh()V
    .locals 6

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getLastUpdateUserCollectionTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 60
    .local v0, "isNeedToCheckUpdate":Z
    :goto_0
    const-string v1, "shuqi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedToCheckUpdate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;-><init>(Lcom/oneplus/tuner/OnePlusCollectionsActivity;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 113
    new-instance v1, Lcom/oneplus/tuner/OnePlusCollectionsActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/OnePlusCollectionsActivity$2;-><init>(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V

    .line 134
    return-void

    .line 58
    .end local v0    # "isNeedToCheckUpdate":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mSlideMenuSelectedIndex:I

    .line 154
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mIsSlideMenuEnable:Z

    .line 139
    iput-object p0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mActivity:Landroid/app/Activity;

    .line 140
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mIsTitlebarMenuEnable:Z

    .line 145
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/tuner/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    .line 161
    if-eqz p3, :cond_0

    .line 162
    const-string v0, "isrefresh"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mIsRefresh:Z

    .line 165
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0560

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->setContent(I)V

    .line 41
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mContext:Landroid/content/Context;

    .line 42
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/square/SquareTopLineView;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mList:Lcom/oppo/tribune/square/SquareTopLineView;

    .line 43
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineControl;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mList:Lcom/oppo/tribune/square/SquareTopLineView;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Lcom/oppo/tribune/square/SquareTopLineControl;-><init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineView;I)V

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    .line 45
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mIsConfigEmpty:Z

    .line 46
    invoke-direct {p0}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->doRefresh()V

    .line 47
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/oneplus/tuner/base/BaseActivity;->onResume()V

    .line 52
    iget-boolean v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mIsRefresh:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->doRefresh()V

    .line 55
    :cond_0
    return-void
.end method
