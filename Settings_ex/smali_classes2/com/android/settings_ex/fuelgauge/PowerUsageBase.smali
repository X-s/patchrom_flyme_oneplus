.class public abstract Lcom/android/settings_ex/fuelgauge/PowerUsageBase;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PowerUsageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/PowerUsageBase$1;,
        Lcom/android/settings_ex/fuelgauge/PowerUsageBase$2;
    }
.end annotation


# static fields
.field private static final MENU_STATS_REFRESH:I = 0x2

.field static final MSG_REFRESH_STATS:I = 0x64


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Ljava/lang/String;

.field private mBatteryStatus:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field protected mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field protected mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/fuelgauge/PowerUsageBase;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/fuelgauge/PowerUsageBase;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->updateBatteryStatus(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 157
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$1;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageBase;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    .line 171
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$2;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageBase;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    return-void
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "batteryLevel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings_ex/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "batteryStatus":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryLevel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    .end local v0    # "batteryLevel":Ljava/lang/String;
    .end local v1    # "batteryStatus":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 147
    .restart local v0    # "batteryLevel":Ljava/lang/String;
    .restart local v1    # "batteryStatus":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryLevel:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryStatus:Ljava/lang/String;

    .line 149
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mUm:Landroid/os/UserManager;

    .line 54
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 51
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->setHasOptionsMenu(Z)V

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 109
    const/4 v1, 0x2

    const v2, 0x7f0e0b84

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 110
    const v2, 0x10803fe

    .line 109
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 111
    const/16 v2, 0x72

    .line 109
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 113
    .local v0, "refresh":Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 107
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->storeState()V

    .line 99
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 121
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->refreshStats()V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    const/4 v0, 0x1

    return v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 119
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 74
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "tmp_bat_history.bin"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->dropFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->updateBatteryStatus(Landroid/content/Intent;)Z

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 73
    :cond_0
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 67
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 65
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    return-void
.end method

.method protected refreshStats()V
    .locals 4

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 131
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected updatePreference(Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;)V
    .locals 1
    .param p1, "historyPref"    # Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->setStats(Lcom/android/internal/os/BatteryStatsHelper;)V

    .line 137
    return-void
.end method
