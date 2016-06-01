.class public Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;
.super Lcom/oneplus/tuner/base/TabBaseActivity;
.source "OnePlusCategoryDetailActivity.java"

# interfaces
.implements Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCategoryId:Ljava/lang/String;

.field private newlySharedFragment:Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;

.field private usedCountFragment:Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oneplus/tuner/base/TabBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->mIsSlideMenuEnable:Z

    .line 71
    iput-object p0, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->mActivity:Landroid/app/Activity;

    .line 72
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->mIsTitlebarMenuEnable:Z

    .line 77
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected getFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    new-instance v1, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;

    invoke-direct {v1}, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;-><init>()V

    iput-object v1, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->usedCountFragment:Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;

    .line 54
    new-instance v1, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;

    invoke-direct {v1}, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;-><init>()V

    iput-object v1, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->newlySharedFragment:Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;

    .line 55
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->usedCountFragment:Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->newlySharedFragment:Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-object v0
.end method

.method protected getTitles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v0, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v1, 0x7f0c0559

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const v1, 0x7f0c055a

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-object v0
.end method

.method public getmCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/TabBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 40
    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->mCategory:Ljava/lang/String;

    .line 41
    const-string v1, "category_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->mCategoryId:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->mCategoryId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->setmCategoryId(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->mCategory:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    invoke-virtual {p0, p0}, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->setreloadHeadsetConfigListener(Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;)V

    .line 48
    :cond_1
    return-void
.end method

.method public reloadHeadsetConfig()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->usedCountFragment:Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/OnePlusCategoryUsedCountFragment;->onReload()V

    .line 94
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->newlySharedFragment:Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->onReload()V

    .line 95
    return-void
.end method

.method public setmCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCategoryId"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->mCategoryId:Ljava/lang/String;

    .line 30
    return-void
.end method
