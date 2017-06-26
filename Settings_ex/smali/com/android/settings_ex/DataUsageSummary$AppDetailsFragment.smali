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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1952
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "app"    # Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1956
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;Ljava/lang/CharSequence;Z)V

    .line 1957
    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "app"    # Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "addToBack"    # Z

    .prologue
    .line 1961
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1977
    :goto_0
    return-void

    .line 1963
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1964
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1966
    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1967
    .local v1, "fragment":Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1968
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1969
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1970
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1971
    if-eqz p3, :cond_1

    .line 1972
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1974
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0ad0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1976
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1997
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2002
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1999
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 2000
    const/4 v0, 0x1

    goto :goto_0

    .line 1997
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1981
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1982
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary;

    .line 1983
    .local v0, "target":Lcom/android/settings_ex/DataUsageSummary;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$2902(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;)Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 1984
    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1985
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1989
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1990
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary;

    .line 1991
    .local v0, "target":Lcom/android/settings_ex/DataUsageSummary;
    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$2902(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;)Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 1992
    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1993
    return-void
.end method
