.class public Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;,
        Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$Observer;
    }
.end annotation


# instance fields
.field private final mBluetooth:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

.field private mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host$Callback;

.field private mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;

.field private final mContext:Landroid/content/Context;

.field private final mFlashlight:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

.field private mHandler:Landroid/os/Handler;

.field private final mKeyguard:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

.field private final mLocation:Lcom/android/systemui_ex/statusbar/policy/LocationController;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetwork:Lcom/android/systemui_ex/controlpanel/policy/NetworkController;

.field private final mObserver:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$Observer;

.field private final mRotation:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

.field private final mSecurity:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mUserTracker:Lcom/android/systemui_ex/controlpanel/settings/CurrentUserTracker;

.field private final mVPN:Lcom/android/systemui_ex/controlpanel/policy/VPNController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/BluetoothController;Lcom/android/systemui_ex/statusbar/policy/LocationController;Lcom/android/systemui_ex/controlpanel/policy/VPNController;Lcom/android/systemui_ex/statusbar/policy/RotationLockController;Lcom/android/systemui_ex/controlpanel/policy/NetworkController;Lcom/android/systemui_ex/statusbar/policy/FlashlightController;Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bluetooth"    # Lcom/android/systemui_ex/statusbar/policy/BluetoothController;
    .param p3, "location"    # Lcom/android/systemui_ex/statusbar/policy/LocationController;
    .param p4, "vpn"    # Lcom/android/systemui_ex/controlpanel/policy/VPNController;
    .param p5, "rotation"    # Lcom/android/systemui_ex/statusbar/policy/RotationLockController;
    .param p6, "network"    # Lcom/android/systemui_ex/controlpanel/policy/NetworkController;
    .param p7, "flashlight"    # Lcom/android/systemui_ex/statusbar/policy/FlashlightController;
    .param p8, "keyguard"    # Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;
    .param p9, "security"    # Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 75
    new-instance v1, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$Observer;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$Observer;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mObserver:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$Observer;

    .line 315
    new-instance v1, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$2;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$2;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mHandler:Landroid/os/Handler;

    .line 96
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mBluetooth:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    .line 98
    iput-object p3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mLocation:Lcom/android/systemui_ex/statusbar/policy/LocationController;

    .line 99
    iput-object p4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mVPN:Lcom/android/systemui_ex/controlpanel/policy/VPNController;

    .line 100
    iput-object p5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mRotation:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

    .line 101
    iput-object p6, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mNetwork:Lcom/android/systemui_ex/controlpanel/policy/NetworkController;

    .line 102
    iput-object p7, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mFlashlight:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    .line 103
    iput-object p8, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mKeyguard:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    .line 104
    iput-object p9, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mSecurity:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    .line 106
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mLooper:Landroid/os/Looper;

    .line 110
    new-instance v1, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$1;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$1;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mUserTracker:Lcom/android/systemui_ex/controlpanel/settings/CurrentUserTracker;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->recreateTiles()V

    .line 123
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mUserTracker:Lcom/android/systemui_ex/controlpanel/settings/CurrentUserTracker;

    invoke-virtual {v1}, Lcom/android/systemui_ex/controlpanel/settings/CurrentUserTracker;->startTracking()V

    .line 124
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mObserver:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$Observer;

    invoke-virtual {v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$Observer;->register()V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->recreateTiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)Lcom/android/systemui_ex/statusbar/policy/SecurityController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mSecurity:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$Observer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mObserver:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$Observer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)Lcom/android/systemui_ex/controlpanel/settings/CurrentUserTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mUserTracker:Lcom/android/systemui_ex/controlpanel/settings/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;

    return-object v0
.end method

.method private createTile(Ljava/lang/String;)Lcom/android/systemui_ex/controlpanel/qs/QSTile;
    .locals 3
    .param p1, "tileSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 226
    const-string v0, "QSTileHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tileSpec : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 243
    :goto_0
    return-object v0

    .line 229
    :cond_0
    const-string v0, "bt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto :goto_0

    .line 230
    :cond_1
    const-string v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto :goto_0

    .line 231
    :cond_2
    const-string v0, "airplane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto :goto_0

    .line 232
    :cond_3
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto :goto_0

    .line 233
    :cond_4
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto :goto_0

    .line 234
    :cond_5
    const-string v0, "vpn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto :goto_0

    .line 235
    :cond_6
    const-string v0, "bottomkeys"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto :goto_0

    .line 236
    :cond_7
    const-string v0, "flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto :goto_0

    .line 237
    :cond_8
    const-string v0, "clock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/ClockTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/ClockTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto :goto_0

    .line 238
    :cond_9
    const-string v0, "calculator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/CalculatorTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/CalculatorTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto/16 :goto_0

    .line 239
    :cond_a
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/CameraTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/CameraTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto/16 :goto_0

    .line 240
    :cond_b
    const-string v0, "setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/SettingsTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/SettingsTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto/16 :goto_0

    .line 241
    :cond_c
    const-string v0, "mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/MuteTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/MuteTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto/16 :goto_0

    .line 242
    :cond_d
    const-string v0, "donotdisturb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto/16 :goto_0

    .line 243
    :cond_e
    const-string v0, "vibration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    goto/16 :goto_0

    .line 244
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tile spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadTileSpecs()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v9, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 250
    .local v5, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v9

    if-eqz v9, :cond_1

    const v9, 0x7f0c0009

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "defaultTileList":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sysui_qs_tiles"

    iget-object v11, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mUserTracker:Lcom/android/systemui_ex/controlpanel/settings/CurrentUserTracker;

    invoke-virtual {v11}, Lcom/android/systemui_ex/controlpanel/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, "tileList":Ljava/lang/String;
    const-string v9, "QSTileHost"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oneplus tileList : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-nez v7, :cond_2

    .line 260
    const v9, 0x7f0c0002

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 261
    const-string v9, "QSTileHost"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loaded tile specs from config: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v8, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 267
    .local v0, "addedDefault":Z
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v1, v3

    .line 268
    .local v6, "tile":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 269
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 267
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 250
    .end local v0    # "addedDefault":Z
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "defaultTileList":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "tile":Ljava/lang/String;
    .end local v7    # "tileList":Ljava/lang/String;
    .end local v8    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const v9, 0x7f0c000a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 263
    .restart local v2    # "defaultTileList":Ljava/lang/String;
    .restart local v7    # "tileList":Ljava/lang/String;
    :cond_2
    const-string v9, "QSTileHost"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loaded tile specs from setting: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 270
    .restart local v0    # "addedDefault":Z
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "tile":Ljava/lang/String;
    .restart local v8    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v9, "default"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 271
    if-nez v0, :cond_0

    .line 272
    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 273
    const/4 v0, 0x1

    goto :goto_3

    .line 276
    :cond_4
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 279
    .end local v6    # "tile":Ljava/lang/String;
    :cond_5
    return-object v8
.end method

.method private recreateTiles()V
    .locals 9

    .prologue
    .line 193
    const-string v6, "QSTileHost"

    const-string v7, "Recreating tiles"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->loadTileSpecs()Ljava/util/List;

    move-result-object v5

    .line 196
    .local v5, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 197
    .local v3, "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui_ex/controlpanel/qs/QSTile<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 198
    const-string v7, "QSTileHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destroying tile: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    invoke-virtual {v6}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->destroy()V

    goto :goto_0

    .line 203
    .end local v3    # "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui_ex/controlpanel/qs/QSTile<*>;>;"
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 204
    .local v1, "newTiles":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/systemui_ex/controlpanel/qs/QSTile<*>;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 205
    .local v4, "tileSpec":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 206
    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 208
    :cond_2
    const-string v6, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating tile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 211
    :catch_0
    move-exception v2

    .line 212
    .local v2, "t":Ljava/lang/Throwable;
    const-string v6, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error creating tile for spec: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 217
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v4    # "tileSpec":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 223
    :cond_4
    :goto_2
    return-void

    .line 218
    :cond_5
    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    .line 219
    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 220
    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host$Callback;

    if-eqz v6, :cond_4

    .line 221
    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host$Callback;

    invoke-interface {v6}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host$Callback;->onTilesChanged()V

    goto :goto_2
.end method


# virtual methods
.method public getBluetoothController()Lcom/android/systemui_ex/statusbar/policy/BluetoothController;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mBluetooth:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFlashlightController()Lcom/android/systemui_ex/statusbar/policy/FlashlightController;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mFlashlight:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    return-object v0
.end method

.method public getKeyguardMonitor()Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mKeyguard:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method public getLocationController()Lcom/android/systemui_ex/statusbar/policy/LocationController;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mLocation:Lcom/android/systemui_ex/statusbar/policy/LocationController;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getNetworkController()Lcom/android/systemui_ex/controlpanel/policy/NetworkController;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mNetwork:Lcom/android/systemui_ex/controlpanel/policy/NetworkController;

    return-object v0
.end method

.method public getRotationLockController()Lcom/android/systemui_ex/statusbar/policy/RotationLockController;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mRotation:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getVPNController()Lcom/android/systemui_ex/controlpanel/policy/VPNController;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mVPN:Lcom/android/systemui_ex/controlpanel/policy/VPNController;

    return-object v0
.end method

.method public setCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host$Callback;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host$Callback;

    .line 130
    return-void
.end method

.method public setQSTileHostCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;

    .line 311
    return-void
.end method

.method public startSettingsActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 145
    return-void
.end method
