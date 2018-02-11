.class final Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;,
        Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;
    }
.end annotation


# static fields
.field static final DEFAULT_DISCOVERABLE_TIMEOUT:I = 0x78

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

.field private final mDiscoveryPreference:Landroid/support/v7/preference/Preference;

.field private final mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private mNumberOfPairedDevices:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTimeoutSecs:I

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "adapter"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .param p2, "discoveryPreference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 75
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    .line 97
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 98
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/support/v7/preference/Preference;

    .line 99
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 95
    return-void
.end method

.method private static formatTimeRemaining(I)Ljava/lang/String;
    .locals 5
    .param p0, "timeout"    # I

    .prologue
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 170
    .local v1, "sb":Ljava/lang/StringBuilder;
    div-int/lit8 v0, p0, 0x3c

    .line 171
    .local v0, "min":I
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    mul-int/lit8 v3, v0, 0x3c

    sub-int v2, p0, v3

    .line 173
    .local v2, "sec":I
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 174
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDiscoverableTimeout()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 209
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    if-eq v2, v3, :cond_0

    .line 210
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    return v2

    .line 213
    :cond_0
    const-string/jumbo v2, "debug.bt.discoverable_time"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 214
    .local v0, "timeout":I
    if-gez v0, :cond_1

    .line 215
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "bt_discoverable_timeout"

    .line 216
    const-string/jumbo v4, "twomin"

    .line 215
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "timeoutValue":Ljava/lang/String;
    const-string/jumbo v2, "never"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    const/4 v0, 0x0

    .line 228
    .end local v1    # "timeoutValue":Ljava/lang/String;
    :cond_1
    :goto_0
    iput v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 229
    return v0

    .line 220
    .restart local v1    # "timeoutValue":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "onehour"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    const/16 v0, 0xe10

    goto :goto_0

    .line 222
    :cond_3
    const-string/jumbo v2, "fivemin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 223
    const/16 v0, 0x12c

    goto :goto_0

    .line 225
    :cond_4
    const/16 v0, 0x78

    goto :goto_0
.end method

.method private setEnabled(Z)V
    .locals 10
    .param p1, "enable"    # Z

    .prologue
    .line 136
    if-eqz p1, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v2

    .line 138
    .local v2, "timeout":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long v0, v4, v6

    .line 139
    .local v0, "endTimestamp":J
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 141
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    .line 142
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    .line 144
    const-string/jumbo v3, "BluetoothDiscoverableEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEnabled(): enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-lez v2, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    .line 135
    .end local v0    # "endTimestamp":J
    .end local v2    # "timeout":I
    :goto_0
    return-void

    .line 149
    .restart local v0    # "endTimestamp":J
    .restart local v2    # "timeout":I
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_exlib/bluetooth/BluetoothDiscoverableTimeoutReceiver;->cancelDiscoverableAlarm(Landroid/content/Context;)V

    goto :goto_0

    .line 153
    .end local v0    # "endTimestamp":J
    .end local v2    # "timeout":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 154
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_exlib/bluetooth/BluetoothDiscoverableTimeoutReceiver;->cancelDiscoverableAlarm(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setSummaryNotDiscoverable()V
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mNumberOfPairedDevices:I

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0e052d

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 266
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0e052c

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateCountdownSummary()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 275
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v4

    .line 276
    .local v4, "mode":I
    const/16 v6, 0x17

    if-eq v4, v6, :cond_0

    .line 277
    return-void

    .line 280
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 281
    .local v0, "currentTimestamp":J
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getDiscoverableEndTimestamp(Landroid/content/Context;)J

    move-result-wide v2

    .line 283
    .local v2, "endTimestamp":J
    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    .line 285
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateTimerDisplay(I)V

    .line 286
    return-void

    .line 289
    :cond_1
    sub-long v6, v2, v0

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 290
    .local v5, "timeLeft":I
    invoke-direct {p0, v5}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateTimerDisplay(I)V

    .line 292
    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 274
    return-void

    .line 292
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private updateTimerDisplay(I)V
    .locals 5
    .param p1, "timeout"    # I

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0e052b

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 158
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->formatTimeRemaining(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "textTimeout":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 164
    aput-object v0, v3, v4

    .line 163
    const v4, 0x7f0e052a

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method getDiscoverableTimeoutIndex()I
    .locals 2

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    .line 234
    .local v0, "timeout":I
    sparse-switch v0, :sswitch_data_0

    .line 237
    const/4 v1, 0x0

    return v1

    .line 240
    :sswitch_0
    const/4 v1, 0x1

    return v1

    .line 243
    :sswitch_1
    const/4 v1, 0x2

    return v1

    .line 246
    :sswitch_2
    const/4 v1, 0x3

    return v1

    .line 234
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
    .line 256
    const-string/jumbo v0, "BluetoothDiscoverableEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleModeChanged(): mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    .line 259
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    .line 255
    :goto_0
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    .line 262
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->setSummaryNotDiscoverable()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 130
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    .line 131
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 132
    return v1

    :cond_0
    move v0, v1

    .line 130
    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 118
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    if-eq v1, p1, :cond_1

    .line 109
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    .line 112
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    .line 103
    return-void
.end method

.method setDiscoverableTimeout(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 182
    packed-switch p1, :pswitch_data_0

    .line 185
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 186
    const-string/jumbo v0, "twomin"

    .line 204
    .local v0, "timeoutValue":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "bt_discoverable_timeout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 205
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 180
    return-void

    .line 190
    .end local v0    # "timeoutValue":Ljava/lang/String;
    :pswitch_0
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 191
    const-string/jumbo v0, "fivemin"

    .restart local v0    # "timeoutValue":Ljava/lang/String;
    goto :goto_0

    .line 195
    .end local v0    # "timeoutValue":Ljava/lang/String;
    :pswitch_1
    const/16 v1, 0xe10

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 196
    const-string/jumbo v0, "onehour"

    .restart local v0    # "timeoutValue":Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v0    # "timeoutValue":Ljava/lang/String;
    :pswitch_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 201
    const-string/jumbo v0, "never"

    .restart local v0    # "timeoutValue":Ljava/lang/String;
    goto :goto_0

    .line 182
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
    .line 251
    iput p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mNumberOfPairedDevices:I

    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    .line 250
    return-void
.end method
