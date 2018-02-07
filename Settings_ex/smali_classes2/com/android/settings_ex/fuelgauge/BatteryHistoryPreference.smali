.class public Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;
.super Landroid/support/v7/preference/Preference;
.source "BatteryHistoryPreference.java"


# static fields
.field protected static final BATTERY_HISTORY_FILE:Ljava/lang/String; = "tmp_bat_history.bin"


# instance fields
.field private mBatteryInfo:Lcom/android/settings_exlib/BatteryInfo;

.field private mHelper:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->setSelectable(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 74
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings_exlib/BatteryInfo;

    if-nez v1, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 78
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 79
    const v1, 0x7f1100b5

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings_exlib/BatteryInfo;

    iget-object v2, v2, Lcom/android/settings_exlib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v1, 0x7f1100b6

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings_exlib/BatteryInfo;

    iget-object v2, v2, Lcom/android/settings_exlib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v1, 0x7f1100b7

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/graph/UsageView;

    .line 82
    .local v0, "usageView":Lcom/android/settings_exlib/graph/UsageView;
    const v1, 0x7f110344

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 83
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings_exlib/BatteryInfo;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings_exlib/BatteryInfo;->bindHistory(Lcom/android/settings_exlib/graph/UsageView;[Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;)V

    .line 72
    return-void
.end method

.method public performClick()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    if-nez v0, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string/jumbo v1, "tmp_bat_history.bin"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->storeStatsHistoryInFile(Ljava/lang/String;)V

    .line 56
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "stats"

    const-string/jumbo v1, "tmp_bat_history.bin"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "broadcast"

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 60
    const/4 v4, 0x0

    const v5, 0x7f0e0b42

    move-object v6, v3

    .line 59
    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public setStats(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 6
    .param p1, "batteryStats"    # Lcom/android/internal/os/BatteryStatsHelper;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 66
    .local v0, "elapsedRealtimeUs":J
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v3

    .line 67
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v4

    .line 66
    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/settings_exlib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;J)Lcom/android/settings_exlib/BatteryInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings_exlib/BatteryInfo;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->notifyChanged()V

    .line 63
    return-void
.end method
