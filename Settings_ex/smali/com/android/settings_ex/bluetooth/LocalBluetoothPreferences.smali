.class final Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;
.super Ljava/lang/Object;
.source "LocalBluetoothPreferences.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:I = 0xea60

.field private static final KEY_DISCOVERABLE_END_TIMESTAMP:Ljava/lang/String; = "discoverable_end_timestamp"

.field private static final KEY_DISCOVERING_TIMESTAMP:Ljava/lang/String; = "last_discovering_time"

.field private static final KEY_DOCK_AUTO_CONNECT:Ljava/lang/String; = "auto_connect_to_dock"

.field private static final KEY_LAST_SELECTED_DEVICE:Ljava/lang/String; = "last_selected_device"

.field private static final KEY_LAST_SELECTED_DEVICE_TIME:Ljava/lang/String; = "last_selected_device_time"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "bluetooth_settings"

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothPreferences"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static getDiscoverableEndTimestamp(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "discoverable_end_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string v0, "bluetooth_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static persistDiscoverableEndTimestamp(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "endTimestamp"    # J

    .prologue
    .line 129
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "discoverable_end_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    return-void
.end method

.method static persistDiscoveringTimestamp(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 146
    return-void
.end method

.method static persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_selected_device"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v1, "last_selected_device_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    return-void
.end method

.method static removeDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    return-void
.end method

.method static saveDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "autoConnect"    # Z

    .prologue
    .line 158
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    return-void
.end method

.method static shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v8

    .line 64
    .local v8, "manager":Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    if-nez v8, :cond_0

    .line 65
    const-string v10, "LocalBluetoothPreferences"

    const-string v11, "manager == null - do not show dialog."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v10, 0x0

    .line 116
    :goto_0
    return v10

    .line 70
    :cond_0
    invoke-virtual {v8}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 71
    const/4 v10, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v10, v10, 0x5

    const/4 v11, 0x5

    if-ne v10, v11, :cond_2

    .line 77
    const-string v10, "LocalBluetoothPreferences"

    const-string v11, "in appliance mode - do not show dialog."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v10, 0x0

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 82
    .local v2, "currentTimeMillis":J
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 85
    .local v9, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v10, "discoverable_end_timestamp"

    const-wide/16 v12, 0x0

    invoke-interface {v9, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 87
    .local v6, "lastDiscoverableEndTime":J
    const-wide/32 v10, 0xea60

    add-long/2addr v10, v6

    cmp-long v10, v10, v2

    if-lez v10, :cond_3

    .line 89
    const/4 v10, 0x1

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v8}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 94
    .local v0, "adapter":Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 95
    const/4 v10, 0x1

    goto :goto_0

    .line 96
    :cond_4
    const-string v10, "last_discovering_time"

    const-wide/16 v12, 0x0

    invoke-interface {v9, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    add-long/2addr v10, v12

    cmp-long v10, v10, v2

    if-lez v10, :cond_5

    .line 98
    const/4 v10, 0x1

    goto :goto_0

    .line 102
    :cond_5
    if-eqz p1, :cond_6

    .line 103
    const-string v10, "last_selected_device"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "lastSelectedDevice":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 107
    const-string v10, "last_selected_device_time"

    const-wide/16 v12, 0x0

    invoke-interface {v9, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 109
    .local v4, "lastDeviceSelectedTime":J
    const-wide/32 v10, 0xea60

    add-long/2addr v10, v4

    cmp-long v10, v10, v2

    if-lez v10, :cond_6

    .line 111
    const/4 v10, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "lastSelectedDevice":Ljava/lang/String;
    .end local v4    # "lastDeviceSelectedTime":J
    :cond_6
    const-string v10, "LocalBluetoothPreferences"

    const-string v11, "Found no reason to show the dialog - do not show dialog."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v10, 0x0

    goto/16 :goto_0
.end method
