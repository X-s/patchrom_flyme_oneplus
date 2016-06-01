.class Lcom/oneplus/tuner/base/TabFragmentViewPager$3;
.super Landroid/support/v4/view/PagerAdapter;
.source "TabFragmentViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/base/TabFragmentViewPager;->addFragments(Ljava/util/List;Landroid/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field final synthetic this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

.field final synthetic val$fragmentManager:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/base/TabFragmentViewPager;Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 163
    iput-object p1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    iput-object p2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->val$fragmentManager:Landroid/app/FragmentManager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 173
    iput-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 174
    iput-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurrentPrimaryItem:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->val$fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 211
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 233
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->val$fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 235
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    # getter for: Lcom/oneplus/tuner/base/TabFragmentViewPager;->mFragments:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->access$300(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    # getter for: Lcom/oneplus/tuner/base/TabFragmentViewPager;->mFragments:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->access$300(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 249
    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 180
    iget-object v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->val$fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    invoke-virtual {v2, p2}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->makeFragmentTag(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->val$fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 187
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 188
    iget-object v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 195
    :goto_0
    iget-object v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v2, :cond_1

    .line 196
    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 197
    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 200
    :cond_1
    return-object v0

    .line 190
    :cond_2
    invoke-virtual {p0, p2}, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 191
    iget-object v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 246
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 216
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 219
    iget-object v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 221
    :cond_0
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 223
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 225
    :cond_1
    iput-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 227
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 177
    return-void
.end method
