.class Lcom/android/settings_ex/datausage/DataUsageList$2;
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
        "Lcom/android/settings_exlib/net/ChartData;",
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
    .line 679
    iput-object p1, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    return-void
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
            "Lcom/android/settings_exlib/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    new-instance v0, Lcom/android/settings_exlib/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-virtual {v1}, Lcom/android/settings_ex/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v2}, Lcom/android/settings_ex/datausage/DataUsageList;->-get9(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_exlib/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settings_exlib/net/ChartData;)V
    .locals 2
    .param p2, "data"    # Lcom/android/settings_exlib/net/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings_exlib/net/ChartData;",
            ">;",
            "Lcom/android/settings_exlib/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings_exlib/net/ChartData;>;"
    const/4 v1, 0x0

    .line 693
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-virtual {v0, v1, v1}, Lcom/android/settings_ex/datausage/DataUsageList;->setLoading(ZZ)V

    .line 695
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0, p2}, Lcom/android/settings_ex/datausage/DataUsageList;->-set0(Lcom/android/settings_ex/datausage/DataUsageList;Lcom/android/settings_exlib/net/ChartData;)Lcom/android/settings_exlib/net/ChartData;

    .line 696
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get5(Lcom/android/settings_ex/datausage/DataUsageList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get3(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/DataUsageList;->-get2(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_exlib/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_exlib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 698
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get3(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/DataUsageList;->-get2(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_exlib/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_exlib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 704
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/datausage/DataUsageList;->-wrap6(Lcom/android/settings_ex/datausage/DataUsageList;Z)V

    .line 687
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get1(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/DataUsageList;->-get2(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_exlib/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_exlib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->setNetworkStats(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 687
    check-cast p2, Lcom/android/settings_exlib/net/ChartData;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/datausage/DataUsageList$2;->onLoadFinished(Landroid/content/Loader;Lcom/android/settings_exlib/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings_exlib/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings_exlib/net/ChartData;>;"
    const/4 v1, 0x0

    .line 709
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0, v1}, Lcom/android/settings_ex/datausage/DataUsageList;->-set0(Lcom/android/settings_ex/datausage/DataUsageList;Lcom/android/settings_exlib/net/ChartData;)Lcom/android/settings_exlib/net/ChartData;

    .line 710
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get5(Lcom/android/settings_ex/datausage/DataUsageList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get3(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 712
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get3(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 708
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$2;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get1(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->setNetworkStats(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0
.end method
