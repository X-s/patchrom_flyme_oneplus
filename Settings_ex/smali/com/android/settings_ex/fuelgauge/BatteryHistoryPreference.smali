.class public Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;
.super Landroid/preference/Preference;
.source "BatteryHistoryPreference.java"


# static fields
.field protected static final BATTERY_HISTORY_FILE:Ljava/lang/String; = "tmp_bat_history.bin"


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

.field private mHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method


# virtual methods
.method getStats()Landroid/os/BatteryStats;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 90
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    if-nez v3, :cond_0

    .line 110
    :goto_0
    return-void

    .line 93
    :cond_0
    const v3, 0x7f120040

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    .line 95
    .local v0, "chart":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    if-nez v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 98
    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 103
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 104
    .local v1, "index":I
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 105
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 106
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 108
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v3, "tmp_bat_history.bin"

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->storeStatsHistoryInFile(Ljava/lang/String;)V

    .line 58
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "stats"

    const-string v3, "tmp_bat_history.bin"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "broadcast"

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 64
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0907

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public setStats(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 2
    .param p1, "batteryStats"    # Lcom/android/internal/os/BatteryStatsHelper;

    .prologue
    const v1, 0x7f040019

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 73
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    .line 74
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->getLayoutResource()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->notifyChanged()V

    .line 80
    return-void
.end method
