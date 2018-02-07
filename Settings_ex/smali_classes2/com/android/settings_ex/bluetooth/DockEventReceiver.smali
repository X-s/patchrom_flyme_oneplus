.class public final Lcom/android/settings_ex/bluetooth/DockEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockEventReceiver.java"


# static fields
.field public static final ACTION_DOCK_SHOW_UI:Ljava/lang/String; = "com.android.settings_ex.bluetooth.action.DOCK_SHOW_UI"

.field private static final DEBUG:Z = false

.field private static final EXTRA_INVALID:I = -0x4d2

.field private static final TAG:Ljava/lang/String; = "DockEventReceiver"

.field private static sStartingService:Landroid/os/PowerManager$WakeLock;

.field private static final sStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingServiceSync:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    sget-object v3, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingServiceSync:Ljava/lang/Object;

    monitor-enter v3

    .line 126
    :try_start_0
    sget-object v2, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 127
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 129
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "StartingDockService"

    .line 128
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    .line 132
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v2, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 139
    const-string/jumbo v2, "DockEventReceiver"

    const-string/jumbo v4, "Can\'t start DockService"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    .line 124
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 3
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "startId"    # I

    .prologue
    .line 152
    sget-object v1, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, "DockEventReceiver"

    const-string/jumbo v2, "finishStartingService: stopping service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v0, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 151
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 48
    if-nez p2, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    const-string/jumbo v6, "android.intent.extra.DOCK_STATE"

    .line 52
    const-string/jumbo v7, "android.bluetooth.adapter.extra.STATE"

    const/16 v8, -0x4d2

    .line 51
    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 53
    .local v5, "state":I
    const-string/jumbo v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 60
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v6, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 61
    const-string/jumbo v6, "com.android.settings_ex.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    .line 60
    if-eqz v6, :cond_5

    .line 62
    :cond_1
    if-nez v1, :cond_3

    const-string/jumbo v6, "com.android.settings_ex.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 63
    if-eqz v5, :cond_3

    .line 64
    if-eq v5, v10, :cond_3

    .line 67
    :cond_2
    return-void

    .line 70
    :cond_3
    packed-switch v5, :pswitch_data_0

    .line 81
    const-string/jumbo v6, "DockEventReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_4
    :goto_0
    return-void

    .line 76
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 77
    .local v2, "i":Landroid/content/Intent;
    const-class v6, Lcom/android/settings_ex/bluetooth/DockService;

    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    invoke-static {p1, v2}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    .end local v2    # "i":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v6, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 85
    const-string/jumbo v6, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 84
    if-eqz v6, :cond_8

    .line 86
    :cond_6
    const-string/jumbo v6, "android.bluetooth.profile.extra.STATE"

    .line 87
    const/4 v7, 0x2

    .line 86
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 88
    .local v3, "newState":I
    const-string/jumbo v6, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 97
    .local v4, "oldState":I
    if-nez v1, :cond_7

    .line 99
    return-void

    .line 102
    :cond_7
    if-nez v3, :cond_4

    .line 103
    if-eq v4, v10, :cond_4

    .line 105
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 106
    .restart local v2    # "i":Landroid/content/Intent;
    const-class v6, Lcom/android/settings_ex/bluetooth/DockService;

    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    invoke-static {p1, v2}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "newState":I
    .end local v4    # "oldState":I
    :cond_8
    const-string/jumbo v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 111
    const-string/jumbo v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x80000000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 112
    .local v0, "btState":I
    const/16 v6, 0xb

    if-eq v0, v6, :cond_4

    .line 113
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 114
    .restart local v2    # "i":Landroid/content/Intent;
    const-class v6, Lcom/android/settings_ex/bluetooth/DockService;

    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 115
    invoke-static {p1, v2}, Lcom/android/settings_ex/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
