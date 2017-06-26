.class public Lcom/android/settings_ex/fuelgauge/BatteryHistoryDetail;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "BatteryHistoryDetail.java"


# static fields
.field public static final EXTRA_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final EXTRA_STATS:Ljava/lang/String; = "stats"


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x33

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "stats"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "histFile":Ljava/lang/String;
    const-string v1, "BatteryHistoryDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zhuyang--statsFromFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "broadcast"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const v2, 0x7f040015

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f120025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    .line 53
    .local v0, "chart":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 54
    return-object v1
.end method
