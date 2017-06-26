.class public abstract Lcom/android/settings_ex/fuelgauge/PowerUsageBase;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PowerUsageBase.java"


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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 162
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$1;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageBase;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    .line 174
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$2;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageBase;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fuelgauge/PowerUsageBase;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageBase;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->updateBatteryStatus(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fuelgauge/PowerUsageBase;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageBase;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    if-eqz p1, :cond_1

    .line 144
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "batteryLevel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings_ex/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "batteryStatus":Ljava/lang/String;
    const-string v2, "PowerUsageBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zhuyang-PowerUsageBase-updateBatteryStatus--batteryLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v2, "PowerUsageBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zhuyang-PowerUsageBase-updateBatteryStatus--batteryStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryLevel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryLevel:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryStatus:Ljava/lang/String;

    .line 152
    const-string v2, "PowerUsageBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zhuyang-PowerUsageBase-updateBatteryStatus--mBatteryLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v2, "PowerUsageBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zhuyang-PowerUsageBase-updateBatteryStatus--mBatteryStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v2, 0x1

    .line 157
    .end local v0    # "batteryLevel":Ljava/lang/String;
    .end local v1    # "batteryStatus":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mUm:Landroid/os/UserManager;

    .line 58
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 59
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->setHasOptionsMenu(Z)V

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 119
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->storeState()V

    .line 108
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->refreshStats()V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 76
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tmp_bat_history.bin"

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->dropFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->updateBatteryStatus(Landroid/content/Intent;)Z

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 88
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 72
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    return-void
.end method

.method protected refreshStats()V
    .locals 3

    .prologue
    .line 133
    const-string v0, "PowerUsageBase"

    const-string v1, "zhuyang-PowerUsageBase-refreshStats "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 135
    return-void
.end method

.method protected updatePreference(Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;)V
    .locals 2
    .param p1, "historyPref"    # Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    .prologue
    .line 138
    const-string v0, "PowerUsageBase"

    const-string v1, "zhuyang-PowerUsageBase-updatePreference "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->setStats(Lcom/android/internal/os/BatteryStatsHelper;)V

    .line 140
    return-void
.end method
