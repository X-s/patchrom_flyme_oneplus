.class public Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "OnePlusMyCustomSoundEffectActivity.java"


# instance fields
.field private mIsConfigEmpty:Z

.field private mList:Lcom/oppo/tribune/square/SquareTopLineView;

.field private mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mIsConfigEmpty:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mIsConfigEmpty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;)Lcom/oppo/tribune/square/SquareTopLineControl;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    return-object v0
.end method


# virtual methods
.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mSlideMenuSelectedIndex:I

    .line 69
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mIsSlideMenuEnable:Z

    .line 54
    iput-object p0, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mActivity:Landroid/app/Activity;

    .line 55
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mIsTitlebarMenuEnable:Z

    .line 60
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0561

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->setContent(I)V

    .line 23
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/square/SquareTopLineView;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mList:Lcom/oppo/tribune/square/SquareTopLineView;

    .line 24
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineControl;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mList:Lcom/oppo/tribune/square/SquareTopLineView;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/oppo/tribune/square/SquareTopLineControl;-><init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineView;I)V

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    .line 25
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mIsConfigEmpty:Z

    .line 26
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 30
    invoke-super {p0}, Lcom/oneplus/tuner/base/BaseActivity;->onResume()V

    .line 31
    new-instance v0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity$1;-><init>(Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V

    .line 49
    return-void
.end method
