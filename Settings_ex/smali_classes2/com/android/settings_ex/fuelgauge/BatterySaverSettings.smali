.class public Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "BatterySaverSettings.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$1;,
        Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$2;,
        Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;,
        Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final KEY_TURN_ON_AUTOMATICALLY:Ljava/lang/String; = "turn_on_automatically"

.field private static final TAG:Ljava/lang/String; = "BatterySaverSettings"

.field private static final WAIT_FOR_SWITCH_ANIM:J = 0x1f4L


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;

.field private final mSettingsObserver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;

.field private final mStartMode:Ljava/lang/Runnable;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mTriggerPref:Lcom/android/settings_ex/notification/SettingPref;

.field private final mUpdateSwitch:Ljava/lang/Runnable;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Lcom/android/settings_ex/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Lcom/android/settings_ex/notification/SettingPref;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/settings_ex/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->trySetPowerSaveMode(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->updateSwitch()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "BatterySaverSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->DEBUG:Z

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;

    .line 57
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;-><init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;

    .line 169
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$1;-><init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    .line 176
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$2;-><init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method private trySetPowerSaveMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    sget-boolean v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BatterySaverSettings"

    const-string/jumbo v1, "Setting mode failed, fallback to current value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;)Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/dashboard/conditional/BatterySaverCondition;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;)Lcom/android/settings_ex/dashboard/conditional/Condition;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/conditional/BatterySaverCondition;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/BatterySaverCondition;->refreshState()V

    .line 145
    return-void
.end method

.method private updateSwitch()V
    .locals 4

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 156
    .local v0, "mode":Z
    sget-boolean v1, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BatterySaverSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSwitch: isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 160
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 164
    iget-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 154
    :cond_3
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x34

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    iget-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mCreated:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 77
    return-void

    .line 79
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mCreated:Z

    .line 80
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->addPreferencesFromResource(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 87
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$3;

    const-string/jumbo v3, "turn_on_automatically"

    .line 88
    const-string/jumbo v4, "low_power_trigger_level"

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0072

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 89
    const/4 v5, 0x0

    move-object v1, p0

    .line 87
    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$3;-><init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/settings_ex/notification/SettingPref;

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/settings_ex/notification/SettingPref;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 73
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 106
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 128
    iget-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 130
    iput-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mValidListener:Z

    .line 124
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 116
    iget-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 118
    iput-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mValidListener:Z

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->updateSwitch()V

    .line 112
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    if-eqz p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    :goto_0
    return-void

    .line 140
    :cond_0
    sget-boolean v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BatterySaverSettings"

    const-string/jumbo v1, "Stopping low power mode from settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->trySetPowerSaveMode(Z)V

    goto :goto_0
.end method
