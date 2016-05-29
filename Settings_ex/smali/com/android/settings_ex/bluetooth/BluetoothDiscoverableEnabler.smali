.class final Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final DEFAULT_DISCOVERABLE_TIMEOUT:I = 0x0

.field private static final DISCOVERABLE_TIMEOUT_FIVE_MINUTES:I = 0x12c

.field static final DISCOVERABLE_TIMEOUT_NEVER:I = 0x0

.field private static final DISCOVERABLE_TIMEOUT_ONE_HOUR:I = 0xe10

.field private static final DISCOVERABLE_TIMEOUT_TWO_MINUTES:I = 0x78

.field private static final KEY_DISCOVERABLE_TIMEOUT:Ljava/lang/String; = "bt_discoverable_timeout"

.field private static final SYSTEM_PROPERTY_DISCOVERABLE_TIMEOUT:Ljava/lang/String; = "debug.bt.discoverable_time"

.field private static final TAG:Ljava/lang/String; = "BluetoothDiscoverableEnabler"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_FIVE_MINUTES:Ljava/lang/String; = "fivemin"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_NEVER:Ljava/lang/String; = "never"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_ONE_HOUR:Ljava/lang/String; = "onehour"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_TWO_MINUTES:Ljava/lang/String; = "twomin"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDiscoverable:Z

.field private final mDiscoveryPreference:Landroid/preference/Preference;

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private mNumberOfPairedDevices:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTimeoutSecs:I

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V
    .locals 1
    .param p1, "adapter"    # Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .param p2, "discoveryPreference"    # Landroid/preference/Preference;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 77
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 100
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    .line 101
    invoke-virtual {p2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    return-void
.end method

.method private static formatTimeRemaining(I)Ljava/lang/String;
    .locals 5
    .param p0, "timeout"    # I

    .prologue
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    .local v1, "sb":Ljava/lang/StringBuilder;
    div-int/lit8 v0, p0, 0x3c

    .line 173
    .local v0, "min":I
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    mul-int/lit8 v3, v0, 0x3c

    sub-int v2, p0, v3

    .line 175
    .local v2, "sec":I
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 176
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDiscoverableTimeout()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 211
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    if-eq v2, v3, :cond_0

    .line 212
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 231
    :goto_0
    return v0

    .line 215
    :cond_0
    const-string v2, "debug.bt.discoverable_time"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 216
    .local v0, "timeout":I
    if-gez v0, :cond_1

    .line 217
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "bt_discoverable_timeout"

    const-string v4, "twomin"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "timeoutValue":Ljava/lang/String;
    const-string v2, "never"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    const/4 v0, 0x0

    .line 230
    .end local v1    # "timeoutValue":Ljava/lang/String;
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    goto :goto_0

    .line 222
    .restart local v1    # "timeoutValue":Ljava/lang/String;
    :cond_2
    const-string v2, "onehour"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    const/16 v0, 0xe10

    goto :goto_1

    .line 224
    :cond_3
    const-string v2, "fivemin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    const/16 v0, 0x12c

    goto :goto_1

    .line 227
    :cond_4
    const/16 v0, 0x78

    goto :goto_1
.end method

.method private setEnabled(Z)V
    .locals 10
    .param p1, "enable"    # Z

    .prologue
    .line 138
    if-eqz p1, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v2

    .line 140
    .local v2, "timeout":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long v0, v4, v6

    .line 141
    .local v0, "endTimestamp":J
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 143
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    .line 144
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    .line 146
    const-string v3, "BluetoothDiscoverableEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEnabled(): enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-lez v2, :cond_0

    .line 149
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    .line 158
    .end local v0    # "endTimestamp":J
    .end local v2    # "timeout":I
    :goto_0
    return-void

    .line 151
    .restart local v0    # "endTimestamp":J
    .restart local v2    # "timeout":I
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTimeoutReceiver;->cancelDiscoverableAlarm(Landroid/content/Context;)V

    goto :goto_0

    .line 155
    .end local v0    # "endTimestamp":J
    .end local v2    # "timeout":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 156
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTimeoutReceiver;->cancelDiscoverableAlarm(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setSummaryNotDiscoverable()V
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mNumberOfPairedDevices:I

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const v1, 0x7f090185

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const v1, 0x7f090184

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateCountdownSummary()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 277
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v4

    .line 278
    .local v4, "mode":I
    const/16 v6, 0x17

    if-eq v4, v6, :cond_0

    .line 298
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 283
    .local v0, "currentTimestamp":J
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getDiscoverableEndTimestamp(Landroid/content/Context;)J

    move-result-wide v2

    .line 285
    .local v2, "endTimestamp":J
    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    .line 287
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateTimerDisplay(I)V

    goto :goto_0

    .line 291
    :cond_1
    sub-long v6, v2, v0

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 292
    .local v5, "timeLeft":I
    invoke-direct {p0, v5}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateTimerDisplay(I)V

    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private updateTimerDisplay(I)V
    .locals 6
    .param p1, "timeout"    # I

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const v2, 0x7f090183

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->formatTimeRemaining(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "textTimeout":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090182

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method getDiscoverableTimeoutIndex()I
    .locals 2

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    .line 236
    .local v0, "timeout":I
    sparse-switch v0, :sswitch_data_0

    .line 239
    const/4 v1, 0x0

    .line 248
    :goto_0
    return v1

    .line 242
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 245
    :sswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 248
    :sswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x12c -> :sswitch_0
        0xe10 -> :sswitch_1
    .end sparse-switch
.end method

.method handleModeChanged(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 258
    const-string v0, "BluetoothDiscoverableEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleModeChanged(): mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    .line 261
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    .line 264
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->setSummaryNotDiscoverable()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 132
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    .line 133
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 134
    return v1

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    if-eq v1, p1, :cond_1

    .line 111
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    .line 114
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    goto :goto_0
.end method

.method setDiscoverableTimeout(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 184
    packed-switch p1, :pswitch_data_0

    .line 187
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 188
    const-string v0, "twomin"

    .line 206
    .local v0, "timeoutValue":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bt_discoverable_timeout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 208
    return-void

    .line 192
    .end local v0    # "timeoutValue":Ljava/lang/String;
    :pswitch_0
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 193
    const-string v0, "fivemin"

    .line 194
    .restart local v0    # "timeoutValue":Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v0    # "timeoutValue":Ljava/lang/String;
    :pswitch_1
    const/16 v1, 0xe10

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 198
    const-string v0, "onehour"

    .line 199
    .restart local v0    # "timeoutValue":Ljava/lang/String;
    goto :goto_0

    .line 202
    .end local v0    # "timeoutValue":Ljava/lang/String;
    :pswitch_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 203
    const-string v0, "never"

    .restart local v0    # "timeoutValue":Ljava/lang/String;
    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setNumberOfPairedDevices(I)V
    .locals 1
    .param p1, "pairedDevices"    # I

    .prologue
    .line 253
    iput p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mNumberOfPairedDevices:I

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    .line 255
    return-void
.end method
