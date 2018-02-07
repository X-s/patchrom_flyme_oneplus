.class Lcom/android/settings_ex/datausage/DataUsageList$3;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/datausage/DataUsageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/datausage/DataUsageList;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    return-void
.end method

.method private updateEmptyVisible()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 741
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get0(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 742
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-virtual {v3}, Lcom/android/settings_ex/datausage/DataUsageList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_3

    .line 741
    :goto_1
    if-eq v0, v1, :cond_1

    .line 745
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get0(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get8(Lcom/android/settings_ex/datausage/DataUsageList;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-virtual {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/DataUsageList;->-get12(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 747
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-virtual {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/DataUsageList;->-get0(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 740
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 741
    goto :goto_0

    :cond_3
    move v1, v2

    .line 742
    goto :goto_1

    .line 749
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-virtual {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    goto :goto_2
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    new-instance v0, Lcom/android/settings_exlib/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-virtual {v1}, Lcom/android/settings_ex/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v2}, Lcom/android/settings_ex/datausage/DataUsageList;->-get9(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_exlib/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 3
    .param p2, "data"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    .prologue
    .line 728
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    iget-object v1, v1, Lcom/android/settings_ex/datausage/DataUsageList;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 729
    const/4 v2, 0x1

    .line 728
    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    .line 730
    .local v0, "restrictedUids":[I
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-virtual {v1, p2, v0}, Lcom/android/settings_ex/datausage/DataUsageList;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 731
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataUsageList$3;->updateEmptyVisible()V

    .line 727
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 727
    check-cast p2, Landroid/net/NetworkStats;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/datausage/DataUsageList$3;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 736
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$3;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    const/4 v1, 0x0

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/datausage/DataUsageList;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 737
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataUsageList$3;->updateEmptyVisible()V

    .line 735
    return-void
.end method
