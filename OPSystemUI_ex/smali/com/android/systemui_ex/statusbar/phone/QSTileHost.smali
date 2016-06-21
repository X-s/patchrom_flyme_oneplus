.class public Lcom/android/systemui_ex/statusbar/phone/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui_ex/qs/QSTile$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/phone/QSTileHost$Observer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBluetooth:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

.field private mCallback:Lcom/android/systemui_ex/qs/QSTile$Host$Callback;

.field private final mCast:Lcom/android/systemui_ex/statusbar/policy/CastController;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mFlashlight:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

.field private final mHotspot:Lcom/android/systemui_ex/statusbar/policy/HotspotController;

.field private final mKeyguard:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

.field private final mLocation:Lcom/android/systemui_ex/statusbar/policy/LocationController;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetwork:Lcom/android/systemui_ex/statusbar/policy/NetworkController;

.field private final mObserver:Lcom/android/systemui_ex/statusbar/phone/QSTileHost$Observer;

.field private final mRotation:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

.field private final mSecurity:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

.field private final mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui_ex/qs/QSTile",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mUserSwitcherController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

.field private final mUserTracker:Lcom/android/systemui_ex/settings/CurrentUserTracker;

.field private final mVPN:Lcom/android/systemui_ex/statusbar/policy/VPNController;

.field private final mVolume:Lcom/android/systemui_ex/volume/VolumeComponent;

.field private final mZen:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "QSTileHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/policy/BluetoothController;Lcom/android/systemui_ex/statusbar/policy/LocationController;Lcom/android/systemui_ex/statusbar/policy/VPNController;Lcom/android/systemui_ex/statusbar/policy/RotationLockController;Lcom/android/systemui_ex/statusbar/policy/NetworkController;Lcom/android/systemui_ex/statusbar/policy/ZenModeController;Lcom/android/systemui_ex/volume/VolumeComponent;Lcom/android/systemui_ex/statusbar/policy/HotspotController;Lcom/android/systemui_ex/statusbar/policy/CastController;Lcom/android/systemui_ex/statusbar/policy/FlashlightController;Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p3, "bluetooth"    # Lcom/android/systemui_ex/statusbar/policy/BluetoothController;
    .param p4, "location"    # Lcom/android/systemui_ex/statusbar/policy/LocationController;
    .param p5, "vpn"    # Lcom/android/systemui_ex/statusbar/policy/VPNController;
    .param p6, "rotation"    # Lcom/android/systemui_ex/statusbar/policy/RotationLockController;
    .param p7, "network"    # Lcom/android/systemui_ex/statusbar/policy/NetworkController;
    .param p8, "zen"    # Lcom/android/systemui_ex/statusbar/policy/ZenModeController;
    .param p9, "volume"    # Lcom/android/systemui_ex/volume/VolumeComponent;
    .param p10, "hotspot"    # Lcom/android/systemui_ex/statusbar/policy/HotspotController;
    .param p11, "cast"    # Lcom/android/systemui_ex/statusbar/policy/CastController;
    .param p12, "flashlight"    # Lcom/android/systemui_ex/statusbar/policy/FlashlightController;
    .param p13, "userSwitcher"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    .param p14, "keyguard"    # Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;
    .param p15, "security"    # Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 88
    new-instance v2, Lcom/android/systemui_ex/statusbar/phone/QSTileHost$Observer;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost$Observer;-><init>(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui_ex/statusbar/phone/QSTileHost$Observer;

    .line 115
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .line 117
    iput-object p3, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    .line 118
    iput-object p4, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui_ex/statusbar/policy/LocationController;

    .line 119
    iput-object p5, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mVPN:Lcom/android/systemui_ex/statusbar/policy/VPNController;

    .line 120
    iput-object p6, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

    .line 121
    iput-object p7, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui_ex/statusbar/policy/NetworkController;

    .line 122
    iput-object p8, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    .line 123
    iput-object p9, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mVolume:Lcom/android/systemui_ex/volume/VolumeComponent;

    .line 124
    iput-object p10, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui_ex/statusbar/policy/HotspotController;

    .line 125
    iput-object p11, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui_ex/statusbar/policy/CastController;

    .line 126
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    .line 127
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .line 128
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    .line 129
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    .line 130
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 132
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 135
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 137
    .local v1, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 138
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    .line 140
    new-instance v2, Lcom/android/systemui_ex/statusbar/phone/QSTileHost$1;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui_ex/settings/CurrentUserTracker;

    .line 152
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->recreateTiles()V

    .line 154
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui_ex/settings/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui_ex/settings/CurrentUserTracker;->startTracking()V

    .line 155
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui_ex/statusbar/phone/QSTileHost$Observer;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost$Observer;->register()V

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->recreateTiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)Lcom/android/systemui_ex/statusbar/policy/SecurityController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)Lcom/android/systemui_ex/statusbar/policy/NetworkController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui_ex/statusbar/policy/NetworkController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)Lcom/android/systemui_ex/statusbar/phone/QSTileHost$Observer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui_ex/statusbar/phone/QSTileHost$Observer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)Lcom/android/systemui_ex/settings/CurrentUserTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui_ex/settings/CurrentUserTracker;

    return-object v0
.end method

.method private recreateTiles()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method


# virtual methods
.method public collapsePanels()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->postAnimateCollapsePanels()V

    .line 181
    return-void
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getSecurityController()Lcom/android/systemui_ex/statusbar/policy/SecurityController;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    return-object v0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui_ex/qs/QSTile",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUserSwitcherController()Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    return-object v0
.end method

.method public setCallback(Lcom/android/systemui_ex/qs/QSTile$Host$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/qs/QSTile$Host$Callback;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui_ex/qs/QSTile$Host$Callback;

    .line 161
    return-void
.end method

.method public startSettingsActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->postStartSettingsActivity(Landroid/content/Intent;I)V

    .line 171
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 176
    return-void
.end method
