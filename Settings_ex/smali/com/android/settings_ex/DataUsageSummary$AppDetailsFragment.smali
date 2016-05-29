.class public Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# static fields
.field private static final EXTRA_APP:Ljava/lang/String; = "app"

.field private static mTargetFragment:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1824
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "app"    # Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1828
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1842
    :goto_0
    return-void

    .line 1830
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1831
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1832
    sput-object p0, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->mTargetFragment:Lcom/android/settings_ex/DataUsageSummary;

    .line 1833
    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1834
    .local v1, "fragment":Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1835
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1836
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1837
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1838
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1839
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090929

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1841
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1888
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1889
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1890
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1846
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1856
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->mTargetFragment:Lcom/android/settings_ex/DataUsageSummary;

    if-eqz v0, :cond_0

    .line 1857
    sget-object v1, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->mTargetFragment:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "app"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    invoke-static {v1, v0}, Lcom/android/settings_ex/DataUsageSummary;->access$2802(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;)Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 1858
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->mTargetFragment:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1860
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1864
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1874
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->mTargetFragment:Lcom/android/settings_ex/DataUsageSummary;

    if-eqz v0, :cond_0

    .line 1875
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->mTargetFragment:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$2802(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;)Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 1876
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->mTargetFragment:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1878
    :cond_0
    return-void
.end method
