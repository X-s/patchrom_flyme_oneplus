.class public Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "BatterySaverSettings.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;,
        Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

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
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;

    .line 55
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;-><init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;

    .line 165
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$2;-><init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    .line 172
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$3;-><init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    .line 205
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->updateSwitch()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->trySetPowerSaveMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Lcom/android/settings_ex/notification/SettingPref;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/settings_ex/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private trySetPowerSaveMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, "BatterySaverSettings"

    const-string v1, "Setting mode failed, fallback to current value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    :cond_0
    return-void
.end method

.method private updateSwitch()V
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 152
    .local v0, "mode":Z
    const-string v1, "BatterySaverSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSwitch: isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 160
    iget-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x34

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    iget-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mCreated:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 101
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mCreated:Z

    .line 78
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->addPreferencesFromResource(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 85
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$1;

    const-string v3, "turn_on_automatically"

    const-string v4, "low_power_trigger_level"

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0a0069

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$1;-><init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/settings_ex/notification/SettingPref;

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/settings_ex/notification/SettingPref;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 107
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 126
    iget-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 128
    iput-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mValidListener:Z

    .line 130
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 114
    iget-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 116
    iput-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mValidListener:Z

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->updateSwitch()V

    .line 119
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    if-eqz p2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string v0, "BatterySaverSettings"

    const-string v1, "Stopping low power mode from settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->trySetPowerSaveMode(Z)V

    goto :goto_0
.end method
