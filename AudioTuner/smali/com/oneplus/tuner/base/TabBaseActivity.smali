.class public abstract Lcom/oneplus/tuner/base/TabBaseActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "TabBaseActivity.java"


# instance fields
.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTabViewPager:Lcom/oneplus/tuner/base/TabFragmentViewPager;

.field private mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initFragments()V
    .locals 8

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 42
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabBaseActivity;->getFragments()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mFragments:Ljava/util/List;

    .line 43
    iget-boolean v5, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->isReCreated:Z

    if-eqz v5, :cond_1

    .line 44
    iget-object v5, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mFragments:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 45
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabBaseActivity;->getFragments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 46
    iget-object v5, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mTabViewPager:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    invoke-virtual {v5, v2}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->makeFragmentTag(I)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 48
    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 49
    iget-object v5, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mFragments:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    iget-object v5, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mFragments:Ljava/util/List;

    invoke-interface {v5, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "fragment":Landroid/app/Fragment;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabBaseActivity;->getTitles()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mTitles:Ljava/util/List;

    .line 58
    iget-object v5, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mTitles:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mTitles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 59
    iget-object v5, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mTabViewPager:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->showTabTitle(Z)V

    .line 62
    :cond_2
    iget-object v5, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mFragments:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 63
    iget-object v5, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mTabViewPager:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    iget-object v6, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mFragments:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mTitles:Ljava/util/List;

    invoke-virtual {v5, v6, v7, v0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->addFragments(Ljava/util/List;Ljava/util/List;Landroid/app/FragmentManager;)V

    .line 64
    iget-object v5, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mTabViewPager:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabBaseActivity;->getInitPageIndex()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->setCurrent(IZ)V

    .line 66
    :cond_3
    return-void
.end method


# virtual methods
.method protected abstract getFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method protected getInitPageIndex()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getTitles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    .line 31
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Lcom/oneplus/tuner/base/TabFragmentViewPager;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mTabViewPager:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mTabViewPager:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabBaseActivity;->mTabViewPager:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/base/TabBaseActivity;->setContent(Landroid/view/View;)V

    .line 37
    invoke-direct {p0}, Lcom/oneplus/tuner/base/TabBaseActivity;->initFragments()V

    .line 38
    return-void
.end method
