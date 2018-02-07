.class Lcom/android/settings_ex/datausage/AppDataUsage$2;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/AppDataUsage;
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
.field final synthetic this$0:Lcom/android/settings_ex/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/datausage/AppDataUsage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/datausage/AppDataUsage;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/settings_ex/datausage/AppDataUsage$2;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 495
    new-instance v0, Lcom/android/settings_exlib/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage$2;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-virtual {v1}, Lcom/android/settings_ex/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/datausage/AppDataUsage$2;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/settings_ex/datausage/AppDataUsage;->-get7(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_exlib/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settings_exlib/net/ChartData;)V
    .locals 3
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
    .line 500
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings_exlib/net/ChartData;>;"
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$2;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v0, p2}, Lcom/android/settings_ex/datausage/AppDataUsage;->-set0(Lcom/android/settings_ex/datausage/AppDataUsage;Lcom/android/settings_exlib/net/ChartData;)Lcom/android/settings_exlib/net/ChartData;

    .line 501
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$2;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/AppDataUsage;->-get3(Lcom/android/settings_ex/datausage/AppDataUsage;)Lcom/android/settings_ex/datausage/CycleAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage$2;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/AppDataUsage;->-get6(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/net/NetworkPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/datausage/AppDataUsage$2;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/settings_ex/datausage/AppDataUsage;->-get1(Lcom/android/settings_ex/datausage/AppDataUsage;)Lcom/android/settings_exlib/net/ChartData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/datausage/CycleAdapter;->updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settings_exlib/net/ChartData;)Z

    .line 502
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$2;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/AppDataUsage;->-wrap2(Lcom/android/settings_ex/datausage/AppDataUsage;)V

    .line 499
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 499
    check-cast p2, Lcom/android/settings_exlib/net/ChartData;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/datausage/AppDataUsage$2;->onLoadFinished(Landroid/content/Loader;Lcom/android/settings_exlib/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
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
    .line 506
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings_exlib/net/ChartData;>;"
    return-void
.end method
