.class Lcom/android/server/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothManagerService$BtValue;,
        Lcom/android/server/BluetoothManagerService$BtKey;,
        Lcom/android/server/BluetoothManagerService$BluetoothHandler;,
        Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;,
        Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    }
.end annotation


# static fields
.field private static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.android.bluetooth.btservice.action.STATE_CHANGED"

.field private static final ADD_PROXY_DELAY_MS:I = 0x64

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_OFF:I = 0x0

.field private static final BLUETOOTH_ON_AIRPLANE:I = 0x2

.field private static final BLUETOOTH_ON_BLUETOOTH:I = 0x1

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static CGROUP_BT_DEBUG:Z = false

.field private static CGROUP_BT_DEBUG_DUMP:Z = false

.field private static CGROUP_BT_READY:Z = false

.field private static CGROUP_BT_USING:Z = false

.field private static final DBG:Z = true

.field public static final ENUM_CGROUP_BT_DEBUG_OFF:I = 0x1

.field public static final ENUM_CGROUP_BT_DEBUG_ON:I = 0x2

.field public static final ENUM_CGROUP_BT_DEBUG_ON_DUMP:I = 0x4

.field public static final ENUM_CGROUP_CALLBACK_ADAPTER:I = 0x1

.field public static final ENUM_CGROUP_CALLBACK_QADAPTER:I = 0x2

.field public static final ENUM_CGROUP_CALLBACK_STATE:I = 0x3

.field private static final ERROR_RESTART_TIME_MS:I = 0xbb8

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final MAX_ERROR_RESTART_RETRIES:I = 0x6

.field private static final MAX_SAVE_RETRIES:I = 0x3

.field private static final MESSAGE_ADD_PROXY_DELAYED:I = 0x190

.field private static final MESSAGE_BIND_PROFILE_SERVICE:I = 0x191

.field private static final MESSAGE_BLUETOOTH_SERVICE_CONNECTED:I = 0x28

.field private static final MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED:I = 0x29

.field private static final MESSAGE_BLUETOOTH_STATE_CHANGE:I = 0x3c

.field private static final MESSAGE_DISABLE:I = 0x2

.field private static final MESSAGE_ENABLE:I = 0x1

.field private static final MESSAGE_GET_NAME_AND_ADDRESS:I = 0xc8

.field private static final MESSAGE_REGISTER_ADAPTER:I = 0x14

.field private static final MESSAGE_REGISTER_Q_ADAPTER:I = 0x16

.field private static final MESSAGE_REGISTER_STATE_CHANGE_CALLBACK:I = 0x1e

.field private static final MESSAGE_RESTART_BLUETOOTH_SERVICE:I = 0x2a

.field private static final MESSAGE_SAVE_NAME_AND_ADDRESS:I = 0xc9

.field private static final MESSAGE_TIMEOUT_BIND:I = 0x64

.field private static final MESSAGE_TIMEOUT_UNBIND:I = 0x65

.field private static final MESSAGE_UNREGISTER_ADAPTER:I = 0x15

.field private static final MESSAGE_UNREGISTER_Q_ADAPTER:I = 0x17

.field private static final MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK:I = 0x1f

.field private static final MESSAGE_USER_SWITCHED:I = 0x12c

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDR_VALID:Ljava/lang/String; = "bluetooth_addr_valid"

.field private static final SECURE_SETTINGS_BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field private static final SERVICE_IBLUETOOTH:I = 0x1

.field private static final SERVICE_IBLUETOOTHGATT:I = 0x2

.field private static final SERVICE_IBLUETOOTHQ:I = 0x3

.field private static final SERVICE_RESTART_TIME_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerService"

.field private static final TIMEOUT_BIND_MS:I = 0xbb8

.field private static final TIMEOUT_SAVE_MS:I = 0x1f4

.field private static final USER_SWITCHED_TIME_MS:I = 0xc8

.field private static final WAIT_NORMAL:I = 0xa

.field private static final WAIT_USERSWITCH:I = 0x1e


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBinding:Z

.field private mBluetooth:Landroid/bluetooth/IBluetooth;

.field private final mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field mBtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/BluetoothManagerService$BtKey;",
            "Lcom/android/server/BluetoothManagerService$BtValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCgroupBtLock:Ljava/lang/Object;

.field private mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mEnableExternal:Z

.field private mErrorRecoveryRetryCounter:I

.field private final mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

.field private mIsBluetoothServiceConnected:Z

.field private mName:Ljava/lang/String;

.field private final mProfileServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;",
            ">;"
        }
    .end annotation
.end field

.field private mQBluetooth:Landroid/bluetooth/IQBluetooth;

.field private final mQCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IQBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mQuietEnable:Z

.field private mQuietEnableExternal:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mState:I

.field private final mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUiUid:I

.field private mUnbinding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    sput-boolean v1, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    .line 81
    sput-boolean v1, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG_DUMP:Z

    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_USING:Z

    .line 83
    sput-boolean v1, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_READY:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 247
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManager$Stub;-><init>()V

    .line 84
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCgroupBtLock:Ljava/lang/Object;

    .line 158
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 171
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mIsBluetoothServiceConnected:Z

    .line 175
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    .line 191
    new-instance v3, Lcom/android/server/BluetoothManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$1;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    .line 199
    new-instance v3, Lcom/android/server/BluetoothManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$2;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1047
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-direct {v3, p0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    .line 1891
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBtMap:Ljava/util/HashMap;

    .line 248
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    .line 250
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 251
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 252
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mQBluetooth:Landroid/bluetooth/IQBluetooth;

    .line 253
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 254
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 255
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 256
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 257
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 258
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 259
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 260
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 261
    iput v5, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 263
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 264
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;

    .line 265
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    .line 266
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 270
    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 271
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->loadStoredNameAndAddress()V

    .line 273
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 277
    :cond_0
    const/4 v2, -0x1

    .line 279
    .local v2, "sysUiUid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.systemui"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/BluetoothManagerService;->flymeRegisterReceiver()V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to resolve SystemUI\'s UID."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/BluetoothManagerService;ZZI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mIsBluetoothServiceConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothGatt;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IQBluetooth;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mQBluetooth:Landroid/bluetooth/IQBluetooth;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IQBluetooth;)Landroid/bluetooth/IQBluetooth;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Landroid/bluetooth/IQBluetooth;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mQBluetooth:Landroid/bluetooth/IQBluetooth;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendQBluetoothServiceUpCallback()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/BluetoothManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/BluetoothManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/BluetoothManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendQBluetoothServiceDownCallback()V

    return-void
.end method

.method static synthetic access$4302(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->unbindAllBluetoothProfileServices()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/BluetoothManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    return-void
.end method

.method private bluetoothStateChangeHandler(II)V
    .locals 7
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    const/16 v6, 0x41

    const/16 v5, 0xc

    .line 1611
    if-eq p1, p2, :cond_2

    .line 1613
    if-eq p2, v5, :cond_0

    const/16 v4, 0xa

    if-ne p2, v4, :cond_1

    .line 1614
    :cond_0
    if-ne p2, v5, :cond_3

    const/4 v3, 0x1

    .line 1615
    .local v3, "isUp":Z
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 1617
    if-eqz v3, :cond_4

    .line 1619
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth_le"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1621
    new-instance v0, Landroid/content/Intent;

    const-class v4, Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1622
    .local v0, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v4, v6, v5}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 1625
    new-instance v2, Landroid/content/Intent;

    const-class v4, Landroid/bluetooth/IQBluetooth;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1626
    .local v2, "iqc":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v4, v6, v5}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 1641
    .end local v0    # "i":Landroid/content/Intent;
    .end local v2    # "iqc":Landroid/content/Intent;
    .end local v3    # "isUp":Z
    :cond_1
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1642
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1643
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1644
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1645
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1646
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bluetooth State Change Intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2

    invoke-direct/range {p0 .. p2}, Lcom/android/server/BluetoothManagerService;->flymeChangeBluetoothName(II)V

    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3    # "isUp":Z
    :cond_4
    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->canUnbindBluetoothService()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1632
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->unbindAllBluetoothProfileServices()V

    .line 1633
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 1634
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendQBluetoothServiceDownCallback()V

    .line 1635
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    goto :goto_1
.end method

.method private canUnbindBluetoothService()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1696
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 1703
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1710
    :goto_0
    return v1

    .line 1704
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 1709
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1705
    :cond_2
    :try_start_4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    :try_start_5
    monitor-exit v2

    goto :goto_0

    .line 1706
    :catch_0
    move-exception v0

    .line 1707
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "getState()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1709
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private checkIfCallerIsForegroundUser()Z
    .locals 13

    .prologue
    .line 1584
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1585
    .local v4, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1586
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1587
    .local v2, "callingIdentity":J
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 1588
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 1589
    .local v7, "ui":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_1

    iget v6, v7, Landroid/content/pm/UserInfo;->id:I

    .line 1590
    .local v6, "parentUser":I
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1591
    .local v0, "callingAppId":I
    const/4 v9, 0x0

    .line 1593
    .local v9, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 1594
    .local v5, "foregroundUser":I
    if-eq v4, v5, :cond_0

    if-eq v6, v5, :cond_0

    const/16 v10, 0x403

    if-eq v0, v10, :cond_0

    iget v10, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    if-ne v0, v10, :cond_2

    :cond_0
    const/4 v9, 0x1

    .line 1599
    :goto_1
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkIfCallerIsForegroundUser: valid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " callingUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " parentUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " foregroundUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1605
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1607
    return v9

    .line 1589
    .end local v0    # "callingAppId":I
    .end local v5    # "foregroundUser":I
    .end local v6    # "parentUser":I
    .end local v9    # "valid":Z
    :cond_1
    const/16 v6, -0x2710

    goto :goto_0

    .line 1594
    .restart local v0    # "callingAppId":I
    .restart local v5    # "foregroundUser":I
    .restart local v6    # "parentUser":I
    .restart local v9    # "valid":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1605
    .end local v5    # "foregroundUser":I
    :catchall_0
    move-exception v10

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method private handleDisable()V
    .locals 4

    .prologue
    .line 1565
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 1568
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1569
    const-string v1, "BluetoothManagerService"

    const-string v3, "Sending off request."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1573
    const-string v1, "BluetoothManagerService"

    const-string v3, "IBluetooth.disable() returned false"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1580
    return-void

    .line 1575
    :catch_0
    move-exception v0

    .line 1576
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v3, "Unable to call disable()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1579
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private handleEnable(Z)V
    .locals 8
    .param p1, "quietMode"    # Z

    .prologue
    .line 1504
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 1506
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v5

    .line 1507
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    if-nez v4, :cond_2

    .line 1509
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1510
    .local v3, "timeoutMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v3, v6, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1511
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V

    .line 1512
    new-instance v1, Landroid/content/Intent;

    const-class v4, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1513
    .local v1, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v6, 0x41

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4, v6, v7}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1515
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1551
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "timeoutMsg":Landroid/os/Message;
    :cond_0
    :goto_0
    monitor-exit v5

    .line 1552
    return-void

    .line 1517
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v3    # "timeoutMsg":Landroid/os/Message;
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    goto :goto_0

    .line 1551
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "timeoutMsg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1519
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v4, :cond_0

    .line 1520
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1524
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1527
    :try_start_2
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v4, v6}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1532
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1537
    :cond_3
    :try_start_4
    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    if-nez v4, :cond_4

    .line 1538
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1539
    const-string v4, "BluetoothManagerService"

    const-string v6, "IBluetooth.enable() returned false"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1547
    :catch_0
    move-exception v0

    .line 1548
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "BluetoothManagerService"

    const-string v6, "Unable to call enable()"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1528
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1529
    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "BluetoothManagerService"

    const-string v6, "Unable to register BluetoothCallback"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1543
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_4
    :try_start_6
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1544
    const-string v4, "BluetoothManagerService"

    const-string v6, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method private final isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 291
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private final isBluetoothPersistedStateOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 299
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final isBluetoothPersistedStateOnBluetooth()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isNameAndAddressSet()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadStoredNameAndAddress()V
    .locals 3

    .prologue
    .line 335
    const-string v0, "BluetoothManagerService"

    const-string v1, "Loading stored name and address"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_bluetooth_address_validation#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_addr_valid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BluetoothManagerService"

    const-string v1, "invalid bluetooth name and address stored"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/BluetoothManagerService;->initFlymeField()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 345
    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored bluetooth Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2023
    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    return-void
.end method

.method private persistBluetoothSetting(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    return-void
.end method

.method private recoverBluetoothServiceFromError()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 1714
    const-string v2, "BluetoothManagerService"

    const-string v3, "recoverBluetoothServiceFromError"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 1716
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1719
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v2, v4}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1724
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1726
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1729
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    .line 1731
    const/4 v2, 0x1

    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZI)Z

    .line 1733
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 1734
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendQBluetoothServiceDownCallback()V

    .line 1735
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 1736
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_2

    .line 1737
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 1738
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mQBluetooth:Landroid/bluetooth/IQBluetooth;

    if-eqz v2, :cond_1

    .line 1739
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mQBluetooth:Landroid/bluetooth/IQBluetooth;

    .line 1741
    :cond_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1743
    :cond_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1745
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1746
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 1748
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 1750
    iget v2, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_3

    .line 1752
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1754
    .local v1, "restartMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1758
    .end local v1    # "restartMsg":Landroid/os/Message;
    :cond_3
    return-void

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "BluetoothManagerService"

    const-string v4, "Unable to unregister"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1724
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 1743
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 5
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 179
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 180
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "airplane_mode_radios"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 186
    .local v1, "mIsAirplaneSensitive":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 187
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void

    .line 184
    .end local v1    # "mIsAirplaneSensitive":Z
    :cond_1
    const-string v4, "bluetooth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method private sendBluetoothServiceDownCallback()V
    .locals 7

    .prologue
    .line 870
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v3, :cond_0

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBluetoothServiceDownCallback():callingUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , callingPid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 873
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v3

    if-nez v3, :cond_4

    .line 874
    const-string v3, "BluetoothManagerService"

    const-string v4, "Calling onBluetoothServiceDown callbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 876
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBluetoothServiceDown() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 880
    :try_start_0
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v3, :cond_1

    .line 881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBluetoothServiceDownCallback(): callback["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 882
    :cond_1
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_USING:Z

    if-eqz v3, :cond_2

    .line 883
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v3, v5, v6}, Lcom/android/server/BluetoothManagerService;->judgeCallbackForCgroup(ILandroid/bluetooth/IBluetoothManagerCallback;Landroid/bluetooth/IQBluetoothManagerCallback;Landroid/bluetooth/IBluetoothStateChangeCallback;)I

    .line 885
    :cond_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceDown() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 890
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 892
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_4
    return-void
.end method

.method private sendBluetoothServiceUpCallback()V
    .locals 7

    .prologue
    .line 842
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v3, :cond_0

    .line 843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBluetoothServiceUpCallback():callingUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , callingPid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 845
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v3

    if-nez v3, :cond_4

    .line 846
    const-string v3, "BluetoothManagerService"

    const-string v4, "Calling onBluetoothServiceUp callbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 848
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBluetoothServiceUp() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 852
    :try_start_0
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v3, :cond_1

    .line 853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBluetoothServiceUpCallback(): callback["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 854
    :cond_1
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_USING:Z

    if-eqz v3, :cond_2

    .line 855
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v3, v5, v6}, Lcom/android/server/BluetoothManagerService;->judgeCallbackForCgroup(ILandroid/bluetooth/IBluetoothManagerCallback;Landroid/bluetooth/IQBluetoothManagerCallback;Landroid/bluetooth/IBluetoothStateChangeCallback;)I

    .line 857
    :cond_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 862
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 864
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_4
    return-void
.end method

.method private sendBluetoothStateCallback(Z)V
    .locals 7
    .param p1, "isUp"    # Z

    .prologue
    .line 816
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v3, :cond_0

    .line 817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBluetoothStateCallback():callingUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , callingPid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 819
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 820
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBluetoothStateChange("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 824
    :try_start_0
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v3, :cond_1

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBluetoothStateCallback(): callback["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 826
    :cond_1
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_USING:Z

    if-eqz v3, :cond_2

    .line 827
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/server/BluetoothManagerService;->judgeCallbackForCgroup(ILandroid/bluetooth/IBluetoothManagerCallback;Landroid/bluetooth/IQBluetoothManagerCallback;Landroid/bluetooth/IBluetoothStateChangeCallback;)I

    .line 829
    :cond_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 834
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 835
    return-void
.end method

.method private sendDisableMsg()V
    .locals 3

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1688
    return-void
.end method

.method private sendEnableMsg(Z)V
    .locals 5
    .param p1, "quietMode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1691
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1693
    return-void

    :cond_0
    move v0, v2

    .line 1691
    goto :goto_0
.end method

.method private sendQBluetoothServiceDownCallback()V
    .locals 7

    .prologue
    .line 925
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v3, :cond_0

    .line 926
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendQBluetoothServiceDownCallback():callingUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , callingPid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 928
    :cond_0
    const-string v3, "BluetoothManagerService"

    const-string v4, "Calling onQBluetoothServiceDown callbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 930
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onQBluetoothServiceDown() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 934
    :try_start_0
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v3, :cond_1

    .line 935
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendQBluetoothServiceUpCallback(): callback["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 936
    :cond_1
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_USING:Z

    if-eqz v3, :cond_2

    .line 937
    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IQBluetoothManagerCallback;

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v3, v6}, Lcom/android/server/BluetoothManagerService;->judgeCallbackForCgroup(ILandroid/bluetooth/IBluetoothManagerCallback;Landroid/bluetooth/IQBluetoothManagerCallback;Landroid/bluetooth/IBluetoothStateChangeCallback;)I

    .line 939
    :cond_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IQBluetoothManagerCallback;

    invoke-interface {v3}, Landroid/bluetooth/IQBluetoothManagerCallback;->onQBluetoothServiceDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onQBluetoothServiceDown() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 944
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 945
    return-void
.end method

.method private sendQBluetoothServiceUpCallback()V
    .locals 7

    .prologue
    .line 899
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v3, :cond_0

    .line 900
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendQBluetoothServiceUpCallback():callingUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , callingPid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 902
    :cond_0
    const-string v3, "BluetoothManagerService"

    const-string v4, "Calling onQBluetoothServiceUp callbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 904
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onQBluetoothServiceUp() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 908
    :try_start_0
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v3, :cond_1

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendQBluetoothServiceUpCallback(): callback["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 910
    :cond_1
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_USING:Z

    if-eqz v3, :cond_2

    .line 911
    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IQBluetoothManagerCallback;

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v3, v6}, Lcom/android/server/BluetoothManagerService;->judgeCallbackForCgroup(ILandroid/bluetooth/IBluetoothManagerCallback;Landroid/bluetooth/IQBluetoothManagerCallback;Landroid/bluetooth/IBluetoothStateChangeCallback;)I

    .line 913
    :cond_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IQBluetoothManagerCallback;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mQBluetooth:Landroid/bluetooth/IQBluetooth;

    invoke-interface {v3, v4}, Landroid/bluetooth/IQBluetoothManagerCallback;->onQBluetoothServiceUp(Landroid/bluetooth/IQBluetooth;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onQBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 918
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 919
    return-void
.end method

.method private storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 357
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 358
    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored Bluetooth name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    if-eqz p2, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 364
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 365
    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored Bluetoothaddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_address"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 370
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_addr_valid"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    :cond_2
    return-void
.end method

.method private unbindAllBluetoothProfileServices()V
    .locals 8

    .prologue
    .line 666
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v5

    .line 667
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 668
    .local v1, "i":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    .local v3, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :goto_1
    :try_start_2
    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeAllProxies()V
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$1400(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V

    goto :goto_0

    .line 677
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 671
    .restart local v1    # "i":Ljava/lang/Integer;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v4, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to unbind service with intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 676
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :cond_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 677
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 678
    return-void
.end method

.method private waitForOnOff(ZZI)Z
    .locals 7
    .param p1, "on"    # Z
    .param p2, "off"    # Z
    .param p3, "loop"    # I

    .prologue
    const/16 v6, 0xc

    const/4 v2, 0x1

    .line 1658
    const/4 v1, 0x0

    .line 1659
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1660
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 1662
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1682
    :cond_0
    :goto_1
    const-string v2, "BluetoothManagerService"

    const-string v3, "waitForOnOff time out"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 1663
    :cond_1
    if-eqz p1, :cond_2

    .line 1664
    :try_start_2
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-ne v4, v6, :cond_4

    :try_start_3
    monitor-exit v3

    goto :goto_2

    .line 1674
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1665
    :cond_2
    if-eqz p2, :cond_3

    .line 1666
    :try_start_4
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1668
    :cond_3
    :try_start_6
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    if-eq v4, v6, :cond_4

    :try_start_7
    monitor-exit v3

    goto :goto_2

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothManagerService"

    const-string v4, "getState()"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1672
    monitor-exit v3

    goto :goto_1

    .line 1674
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1675
    if-nez p1, :cond_5

    if-eqz p2, :cond_6

    .line 1676
    :cond_5
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 1680
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1678
    :cond_6
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3
.end method


# virtual methods
.method addOrUpdateBtCallbacks(IIZLandroid/bluetooth/IBluetoothManagerCallback;ZLandroid/bluetooth/IQBluetoothManagerCallback;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "updateAC"    # Z
    .param p4, "adapterCallback"    # Landroid/bluetooth/IBluetoothManagerCallback;
    .param p5, "updateQAC"    # Z
    .param p6, "qadapterCallback"    # Landroid/bluetooth/IQBluetoothManagerCallback;
    .param p7, "updateSC"    # Z
    .param p8, "stateCallback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 1897
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v1, :cond_0

    .line 1898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrUpdateBtCallbacks(): uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 1899
    :cond_0
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_READY:Z

    if-nez v1, :cond_1

    .line 1900
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->initCGroupSettings()V

    .line 1906
    :cond_1
    const/16 v1, 0x2710

    if-ge p1, v1, :cond_2

    .line 1941
    :goto_0
    return-void

    .line 1909
    :cond_2
    new-instance v8, Lcom/android/server/BluetoothManagerService$BtKey;

    move/from16 v0, p2

    invoke-direct {v8, p0, p1, v0}, Lcom/android/server/BluetoothManagerService$BtKey;-><init>(Lcom/android/server/BluetoothManagerService;II)V

    .line 1910
    .local v8, "btk":Lcom/android/server/BluetoothManagerService$BtKey;
    const/4 v9, 0x0

    .line 1911
    .local v9, "btv":Lcom/android/server/BluetoothManagerService$BtValue;
    iget-object v12, p0, Lcom/android/server/BluetoothManagerService;->mCgroupBtLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1912
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBtMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1913
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/BluetoothManagerService$BtKey;Lcom/android/server/BluetoothManagerService$BtValue;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/android/server/BluetoothManagerService$BtKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1914
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/BluetoothManagerService$BtKey;

    move-object v8, v0

    .line 1915
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/BluetoothManagerService$BtValue;

    move-object v9, v0

    .line 1920
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/BluetoothManagerService$BtKey;Lcom/android/server/BluetoothManagerService$BtValue;>;"
    :cond_4
    if-nez v9, :cond_6

    .line 1921
    iget-object v13, p0, Lcom/android/server/BluetoothManagerService;->mBtMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/BluetoothManagerService$BtValue;

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/BluetoothManagerService$BtValue;-><init>(Lcom/android/server/BluetoothManagerService;IILandroid/bluetooth/IBluetoothManagerCallback;Landroid/bluetooth/IQBluetoothManagerCallback;Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    invoke-virtual {v13, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    :cond_5
    :goto_1
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1940
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->dumpBT()V

    goto :goto_0

    .line 1924
    :cond_6
    if-eqz p3, :cond_7

    .line 1925
    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/android/server/BluetoothManagerService$BtValue;->setAdapterCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V

    .line 1927
    :cond_7
    if-eqz p5, :cond_8

    .line 1928
    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Lcom/android/server/BluetoothManagerService$BtValue;->setQAdapterCallback(Landroid/bluetooth/IQBluetoothManagerCallback;)V

    .line 1930
    :cond_8
    if-eqz p7, :cond_9

    .line 1931
    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Lcom/android/server/BluetoothManagerService$BtValue;->setStateCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 1933
    :cond_9
    invoke-virtual {v9}, Lcom/android/server/BluetoothManagerService$BtValue;->getCallbackCapacity()I

    move-result v1

    if-nez v1, :cond_5

    .line 1934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 1935
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBtMap:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1938
    .end local v11    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
    .locals 9
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 620
    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-nez v5, :cond_0

    .line 622
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to bind to profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", while Bluetooth was disabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :goto_0
    return v3

    .line 627
    :cond_0
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v5

    .line 628
    :try_start_0
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 629
    .local v2, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v2, :cond_3

    .line 631
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating new ProfileServiceConnections object for profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    if-eq p1, v4, :cond_1

    monitor-exit v5

    goto :goto_0

    .line 643
    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 637
    .restart local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v6, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    invoke-direct {v2, p0, v1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V

    .line 639
    .restart local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->bindService()Z
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$1200(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    move-result v6

    if-nez v6, :cond_2

    monitor-exit v5

    goto :goto_0

    .line 641
    :cond_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v5, 0x190

    invoke-virtual {v3, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 647
    .local v0, "addProxyMsg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 648
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 649
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v0, v6, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 650
    goto :goto_0
.end method

.method public disable(Z)Z
    .locals 6
    .param p1, "persist"    # Z

    .prologue
    const/4 v2, 0x0

    .line 549
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH ADMIN permissicacheNameAndAddresson"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 554
    const-string v3, "BluetoothManagerService"

    const-string v4, "disable(): not allowed for non-active and non system user"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_0
    return v2

    .line 559
    :cond_0
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable(): mBluetooth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBinding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v3

    .line 564
    if-eqz p1, :cond_1

    .line 566
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 567
    .local v0, "callingIdentity":J
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 568
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 570
    .end local v0    # "callingIdentity":J
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 571
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V

    .line 572
    monitor-exit v3

    .line 573
    const/4 v2, 0x1

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v1, 0x0

    .line 1555
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1556
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1557
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1558
    :cond_0
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to bind to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1762
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    const-string v3, "BluetoothManagerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 1769
    const-string v1, "Bluetooth Service not connected"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1777
    :goto_0
    return-void

    .line 1772
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1773
    :catch_0
    move-exception v0

    .line 1774
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemoteException while calling Bluetooth Service"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method dumpBT()V
    .locals 5

    .prologue
    .line 2011
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG_DUMP:Z

    if-nez v2, :cond_0

    .line 2020
    :goto_0
    return-void

    .line 2013
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCgroupBtLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2014
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----------dumpBT--------- size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBtMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 2015
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBtMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2016
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/BluetoothManagerService$BtKey;Lcom/android/server/BluetoothManagerService$BtValue;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 2018
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/BluetoothManagerService$BtKey;Lcom/android/server/BluetoothManagerService$BtValue;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public enable(Ljava/lang/String;)Z
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 516
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->hook_checkIfCallerIsForegroundUser()Z

    move-result v6

    if-nez v6, :cond_1

    .line 518
    const-string v5, "BluetoothManagerService"

    const-string v6, "enable(): not allowed for non-active and non system user"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    :goto_0
    return v4

    .line 522
    :cond_1
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH_ADMIN"

    const-string v8, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enable():  mBluetooth ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mBinding = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v7, "appops"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 531
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 532
    .local v1, "callingUid":I
    const/16 v6, 0x31

    invoke-virtual {v0, v6, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 536
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v6

    .line 537
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 538
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 540
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 541
    .local v2, "callingIdentity":J
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 542
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 543
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    .line 544
    monitor-exit v6

    move v4, v5

    .line 545
    goto :goto_0

    .line 544
    .end local v2    # "callingIdentity":J
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public enableNoAutoConnect()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 494
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNoAutoConnect():  mBluetooth ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBinding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .local v0, "callingAppId":I
    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->flymeChangeAppIdByBluetooth(I)I

    move-result v0

    const/16 v1, 0x403

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "no permission to enable Bluetooth quietly"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v2

    .line 508
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 509
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 510
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    .line 511
    monitor-exit v2

    .line 512
    return v4

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 947
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 952
    const-string v1, "BluetoothManagerService"

    const-string v2, "getAddress(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v1, 0x0

    .line 968
    :goto_0
    return-object v1

    .line 956
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 957
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 959
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 964
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "BluetoothManagerService"

    const-string v3, "getAddress(): Unable to retrieve address remotely..Returning cached address"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 968
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 972
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 977
    const-string v1, "BluetoothManagerService"

    const-string v2, "getName(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v1, 0x0

    .line 993
    :goto_0
    return-object v1

    .line 981
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 982
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 984
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 989
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "BluetoothManagerService"

    const-string v3, "getName(): Unable to retrieve name remotely..Returning cached name"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 993
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNameAndAddress()V
    .locals 4

    .prologue
    .line 486
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNameAndAddress(): mBluetooth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBinding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 490
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 491
    return-void
.end method

.method public getQBluetooth()Landroid/bluetooth/IQBluetooth;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mQBluetooth:Landroid/bluetooth/IQBluetooth;

    return-object v0
.end method

.method initCGroupSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2030
    const-string v2, "initCGroupSettings()"

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 2031
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_READY:Z

    if-ne v2, v4, :cond_0

    .line 2086
    :goto_0
    return-void

    .line 2034
    :cond_0
    sput-boolean v4, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_READY:Z

    .line 2035
    const-string v2, "persist.sys.cgroup.bt.dbglevel"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2037
    .local v1, "debugLevel":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debugLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 2038
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 2039
    sput-boolean v5, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    .line 2042
    :cond_1
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    .line 2043
    sput-boolean v4, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    .line 2046
    :cond_2
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_3

    .line 2047
    sput-boolean v4, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG_DUMP:Z

    .line 2050
    :cond_3
    const-string v2, "persist.sys.cgroup.bt.using"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2051
    .local v0, "btUsing":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btUsing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 2052
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2054
    :pswitch_0
    sput-boolean v4, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_USING:Z

    goto :goto_0

    .line 2057
    :pswitch_1
    sput-boolean v5, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_USING:Z

    goto :goto_0

    .line 2052
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 468
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 470
    const-string v2, "BluetoothManagerService"

    const-string v3, "isEnabled(): not allowed for non-active and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    return v1

    .line 474
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 476
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    .line 480
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothManagerService"

    const-string v4, "isEnabled()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method judgeCallbackForCgroup(ILandroid/bluetooth/IBluetoothManagerCallback;Landroid/bluetooth/IQBluetoothManagerCallback;Landroid/bluetooth/IBluetoothStateChangeCallback;)I
    .locals 12
    .param p1, "which"    # I
    .param p2, "adapterCallback"    # Landroid/bluetooth/IBluetoothManagerCallback;
    .param p3, "qadapterCallback"    # Landroid/bluetooth/IQBluetoothManagerCallback;
    .param p4, "stateCallback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 1951
    const/4 v6, 0x0

    .line 1952
    .local v6, "ret":I
    const/4 v2, 0x0

    .line 1953
    .local v2, "btv":Lcom/android/server/BluetoothManagerService$BtValue;
    const/4 v1, 0x0

    .line 1954
    .local v1, "bingo":Z
    sget-boolean v9, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v9, :cond_0

    .line 1955
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "judgeCallbackForCgroup():which= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , adapterCallback= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,qadapterCallback = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , stateCallback = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 1957
    :cond_0
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->getBPMEnable_out()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1958
    const/4 v9, -0x1

    .line 2007
    :goto_0
    return v9

    .line 1960
    :cond_1
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService;->mCgroupBtLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1961
    :try_start_0
    iget-object v9, p0, Lcom/android/server/BluetoothManagerService;->mBtMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1962
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/BluetoothManagerService$BtKey;Lcom/android/server/BluetoothManagerService$BtValue;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/server/BluetoothManagerService$BtValue;

    move-object v2, v0

    .line 1963
    packed-switch p1, :pswitch_data_0

    .line 1983
    :cond_3
    :goto_2
    if-eqz v1, :cond_2

    .line 1984
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->dumpBT()V

    .line 1985
    const/4 v6, 0x1

    .line 1986
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/BluetoothManagerService$BtKey;

    invoke-virtual {v9}, Lcom/android/server/BluetoothManagerService$BtKey;->getUid()I

    move-result v8

    .line 1987
    .local v8, "uid":I
    const/16 v9, 0x2710

    if-ge v8, v9, :cond_4

    .line 1988
    const/4 v6, 0x4

    .line 1989
    monitor-exit v10

    move v9, v6

    goto :goto_0

    .line 1965
    .end local v8    # "uid":I
    :pswitch_0
    invoke-virtual {v2}, Lcom/android/server/BluetoothManagerService$BtValue;->getAdapterCallback()Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v9

    if-ne p2, v9, :cond_3

    .line 1966
    const/4 v1, 0x1

    goto :goto_2

    .line 1970
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/server/BluetoothManagerService$BtValue;->getQAdapterCallback()Landroid/bluetooth/IQBluetoothManagerCallback;

    move-result-object v9

    if-ne p3, v9, :cond_3

    .line 1971
    const/4 v1, 0x1

    goto :goto_2

    .line 1975
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/server/BluetoothManagerService$BtValue;->getStateCallback()Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v9

    move-object/from16 v0, p4

    if-ne v0, v9, :cond_3

    .line 1976
    const/4 v1, 0x1

    goto :goto_2

    .line 1991
    .restart local v8    # "uid":I
    :cond_4
    invoke-static {v8}, Landroid/os/Process;->isProcessSuspend(I)I

    move-result v7

    .line 1992
    .local v7, "suspend":I
    invoke-static {v8}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v5

    .line 1993
    .local v5, "oppm_suspend":Z
    sget-boolean v9, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v9, :cond_5

    .line 1994
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " --> suspend="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ,  oppm_suspend= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 1995
    :cond_5
    if-gtz v7, :cond_6

    if-eqz v5, :cond_7

    .line 1996
    :cond_6
    const/4 v6, 0x3

    .line 1997
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "judgeCallbackForCgroup: bingo, resume "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 1998
    const-string v9, "blutoothManagerService"

    invoke-static {v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 2004
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/BluetoothManagerService$BtKey;Lcom/android/server/BluetoothManagerService$BtValue;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "oppm_suspend":Z
    .end local v7    # "suspend":I
    .end local v8    # "uid":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 2000
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/BluetoothManagerService$BtKey;Lcom/android/server/BluetoothManagerService$BtValue;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "oppm_suspend":Z
    .restart local v7    # "suspend":I
    .restart local v8    # "uid":I
    :cond_7
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 2004
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/BluetoothManagerService$BtKey;Lcom/android/server/BluetoothManagerService$BtValue;>;"
    .end local v5    # "oppm_suspend":Z
    .end local v7    # "suspend":I
    .end local v8    # "uid":I
    :cond_8
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2005
    sget-boolean v9, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v9, :cond_9

    .line 2006
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "judgeCallbackForCgroup: ret="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    :cond_9
    move v9, v6

    .line 2007
    goto/16 :goto_0

    .line 1963
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 10
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 376
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAdapter():callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , callingPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 379
    :cond_0
    if-nez p1, :cond_1

    .line 380
    const-string v0, "BluetoothManagerService"

    const-string v1, "Callback is null in registerAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    return-object v6

    .line 385
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    move v7, v5

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/BluetoothManagerService;->addOrUpdateBtCallbacks(IIZLandroid/bluetooth/IBluetoothManagerCallback;ZLandroid/bluetooth/IQBluetoothManagerCallback;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 388
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 389
    .local v9, "msg":Landroid/os/Message;
    iput-object p1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    monitor-exit v1

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerQAdapter(Landroid/bluetooth/IQBluetoothManagerCallback;)Landroid/bluetooth/IQBluetooth;
    .locals 10
    .param p1, "callback"    # Landroid/bluetooth/IQBluetoothManagerCallback;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 415
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->CGROUP_BT_DEBUG:Z

    if-eqz v0, :cond_0

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerQAdapter():callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , callingPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->myLog(Ljava/lang/String;)V

    .line 418
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p1

    move v7, v3

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/BluetoothManagerService;->addOrUpdateBtCallbacks(IIZLandroid/bluetooth/IBluetoothManagerCallback;ZLandroid/bluetooth/IQBluetoothManagerCallback;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 421
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 422
    .local v9, "msg":Landroid/os/Message;
    iput-object p1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 424
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mQBluetooth:Landroid/bluetooth/IQBluetooth;

    monitor-exit v1

    return-object v0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 10
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 442
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v7, 0x1

    move-object v0, p0

    move v5, v3

    move-object v6, v4

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/BluetoothManagerService;->addOrUpdateBtCallbacks(IIZLandroid/bluetooth/IBluetoothManagerCallback;ZLandroid/bluetooth/IQBluetoothManagerCallback;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 449
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 450
    .local v9, "msg":Landroid/os/Message;
    iput-object p1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    return-void
.end method

.method public unbindAndFinish()V
    .locals 4

    .prologue
    .line 578
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindAndFinish(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBinding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 583
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 605
    :goto_0
    return-void

    .line 584
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 585
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2

    .line 586
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 589
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    :cond_1
    :goto_1
    :try_start_2
    const-string v1, "BluetoothManagerService"

    const-string v3, "Sending unbind request."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 596
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mQBluetooth:Landroid/bluetooth/IQBluetooth;

    .line 598
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 599
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 600
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 604
    :goto_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "BluetoothManagerService"

    const-string v3, "Unable to unregister BluetoothCallback"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 602
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 4
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    .line 656
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v2

    .line 657
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 658
    .local v0, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v0, :cond_0

    .line 659
    monitor-exit v2

    .line 663
    :goto_0
    return-void

    .line 661
    :cond_0
    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    invoke-static {v0, p2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$1300(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    .line 662
    monitor-exit v2

    goto :goto_0

    .end local v0    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 10
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 397
    if-nez p1, :cond_0

    .line 398
    const-string v0, "BluetoothManagerService"

    const-string v1, "Callback is null in unregisterAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 404
    .local v9, "msg":Landroid/os/Message;
    iput-object p1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x1

    move-object v0, p0

    move-object v6, v4

    move v7, v5

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/BluetoothManagerService;->addOrUpdateBtCallbacks(IIZLandroid/bluetooth/IBluetoothManagerCallback;ZLandroid/bluetooth/IQBluetoothManagerCallback;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto :goto_0
.end method

.method public unregisterQAdapter(Landroid/bluetooth/IQBluetoothManagerCallback;)V
    .locals 10
    .param p1, "callback"    # Landroid/bluetooth/IQBluetoothManagerCallback;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 430
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 433
    .local v9, "msg":Landroid/os/Message;
    iput-object p1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 437
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, v4

    move v7, v3

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/BluetoothManagerService;->addOrUpdateBtCallbacks(IIZLandroid/bluetooth/IBluetoothManagerCallback;ZLandroid/bluetooth/IQBluetoothManagerCallback;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 440
    return-void
.end method

.method public unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 10
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 455
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 458
    .local v9, "msg":Landroid/os/Message;
    iput-object p1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v7, 0x1

    move-object v0, p0

    move v5, v3

    move-object v6, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/BluetoothManagerService;->addOrUpdateBtCallbacks(IIZLandroid/bluetooth/IBluetoothManagerCallback;ZLandroid/bluetooth/IQBluetoothManagerCallback;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 465
    return-void
.end method


.method private flymeChangeAppIdByBluetooth(I)I
    .locals 1
    .param p1, "callingAppId"    # I

    .prologue
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    const/16 p1, 0x403

    :cond_0
    return p1
.end method

.method private flymeChangeBluetoothName(II)V
    .locals 3
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    if-eq p1, p2, :cond_2

    const/16 v1, 0xc

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "meizu_device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "phoneName":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "MEIZU"

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, v0}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "phoneName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .restart local v0    # "phoneName":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private flymeRegisterReceiver()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "meizu.intent.action.ACTION_MEIZU_DEVICE_NAME_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private hook_checkIfCallerIsForegroundUser()Z
    .locals 1

    .prologue
    const/16 v0, 0x4d

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFlymeField()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "meizu_device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    return-void
.end method

.method flymeProcessMeizuDeviceNamaChange(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v1, "meizu.intent.action.ACTION_MEIZU_DEVICE_NAME_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
