.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;,
        Lcom/android/server/net/NetworkPolicyManagerService$10;,
        Lcom/android/server/net/NetworkPolicyManagerService$11;,
        Lcom/android/server/net/NetworkPolicyManagerService$12;,
        Lcom/android/server/net/NetworkPolicyManagerService$13;,
        Lcom/android/server/net/NetworkPolicyManagerService$14;,
        Lcom/android/server/net/NetworkPolicyManagerService$15;,
        Lcom/android/server/net/NetworkPolicyManagerService$16;,
        Lcom/android/server/net/NetworkPolicyManagerService$1;,
        Lcom/android/server/net/NetworkPolicyManagerService$2;,
        Lcom/android/server/net/NetworkPolicyManagerService$3;,
        Lcom/android/server/net/NetworkPolicyManagerService$4;,
        Lcom/android/server/net/NetworkPolicyManagerService$5;,
        Lcom/android/server/net/NetworkPolicyManagerService$6;,
        Lcom/android/server/net/NetworkPolicyManagerService$7;,
        Lcom/android/server/net/NetworkPolicyManagerService$8;,
        Lcom/android/server/net/NetworkPolicyManagerService$9;,
        Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$ChainToggleType;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;,
        Lcom/android/server/net/NetworkPolicyManagerService$RestrictType;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field public static final ACTION_DATAUSAGE_ALARM:Ljava/lang/String; = "com.oneplus.security.action.DATAUSAGE_ALARM"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final CHAIN_TOGGLE_DISABLE:I = 0x2

.field private static final CHAIN_TOGGLE_ENABLE:I = 0x1

.field private static final CHAIN_TOGGLE_NONE:I = 0x0

.field private static DEBUG_NETWORK:Z = false

.field private static LOGD:Z = false

.field private static LOGV:Z = false

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_REMOVE_INTERFACE_QUOTA:I = 0xb

.field private static final MSG_RESTRICT_BACKGROUND_BLACKLIST_CHANGED:I = 0xc

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RESTRICT_BACKGROUND_WHITELIST_CHANGED:I = 0x9

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final MSG_SET_FIREWALL_RULES:I = 0xd

.field private static final MSG_UID_GONE:I = 0xd348

.field private static final MSG_UID_STATE_CHANGED:I = 0x1e6c

.field private static final MSG_UPDATE_INTERFACE_QUOTA:I = 0xa

.field private static final MSG_UPDATE_UID_STATE:I = 0x8da

.field private static SCREEN_DOZE_NETWORKPOLICY:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict-background"

.field private static final TAG_REVOKED_RESTRICT_BACKGROUND:Ljava/lang/String; = "revoked-restrict-background"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_WHITELIST:Ljava/lang/String; = "whitelist"

.field private static final TIME_CACHE_MAX_AGE:J = 0xa4cb800L

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field private static final TYPE_RESTRICT_BACKGROUND:I = 0x1

.field private static final TYPE_RESTRICT_POWER:I = 0x2

.field public static final TYPE_WARNING:I = 0x1

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xa

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa

.field private static isDozeChangeSupport:Z

.field private static mAlarmManager:Landroid/app/AlarmManager;

.field private static mDozeNetworkIntent:Landroid/content/Intent;

.field private static mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

.field static mFirstDeviceMode:Z

.field private static mFirstDeviceModeTime:J

.field static screenOffCheckDelayTime:J


# instance fields
.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityListener:Landroid/net/INetworkPolicyListener;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field volatile mDeviceIdleMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mDozeChangeReceiver:Landroid/content/BroadcastReceiver;

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field final mNetworkPoliciesSecondLock:Ljava/lang/Object;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final mNetworkRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "allLocks"
    .end annotation
.end field

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field volatile mRestrictBackground:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field volatile mRestrictPower:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "allLocks"
    .end annotation
.end field

.field private final mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

.field private final mTime:Landroid/util/TrustedTime;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidRulesFirstLock:Ljava/lang/Object;

.field final mUidState:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/net/NetworkPolicyManagerService;IZZ)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z
    .param p3, "updateNow"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidUL(IZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateUL(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/util/SparseIntArray;)V
    .locals 0
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .param p1, "restrictedNetworksChanged"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeUL()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap20(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateUL(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "blacklisted"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundBlacklistChanged(Landroid/net/INetworkPolicyListener;IZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "whitelisted"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundWhitelistChanged(Landroid/net/INetworkPolicyListener;IZ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidRules"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/net/NetworkPolicyManagerService;IZ)V
    .locals 0
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyNL()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 238
    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 239
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_NETWORK:Z

    .line 442
    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    .line 2312
    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    .line 2313
    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceModeTime:J

    .line 2314
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/net/NetworkPolicyManagerService;->screenOffCheckDelayTime:J

    .line 2316
    const-string/jumbo v0, "com.oneplus.android.checkDozeNetworkplicy"

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->SCREEN_DOZE_NETWORKPOLICY:Ljava/lang/String;

    .line 2318
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p4, "networkManagement"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 448
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 447
    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    .line 446
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p4, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p5, "time"    # Landroid/util/TrustedTime;
    .param p6, "systemDir"    # Ljava/io/File;
    .param p7, "suppressDefaultPolicy"    # Z

    .prologue
    .line 455
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 330
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 331
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 342
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 344
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    .line 347
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 349
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 352
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 354
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 356
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 360
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 368
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 376
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 379
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 385
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 392
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 391
    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 400
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 399
    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 404
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 407
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 411
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 415
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 421
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 731
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 756
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 768
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    .line 779
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 788
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 808
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 829
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 864
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 882
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 896
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 910
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 939
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 985
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 984
    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1243
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 2367
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 3499
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 458
    const-string/jumbo v2, "missing context"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 459
    const-string/jumbo v2, "missing activityManager"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 460
    const-string/jumbo v2, "missing networkStats"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkStatsService;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    .line 461
    const-string/jumbo v2, "missing networkManagement"

    invoke-static {p4, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 463
    const-string/jumbo v2, "deviceidle"

    .line 462
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 464
    const-string/jumbo v2, "missing TrustedTime"

    invoke-static {p5, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/TrustedTime;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    .line 465
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 466
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 468
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "NetworkPolicy"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 469
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 470
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 472
    iput-boolean p7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 474
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "netpolicy.xml"

    invoke-direct {v3, p6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 476
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 479
    const-class v2, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 480
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;)V

    .line 479
    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 481
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 482
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "setDeviceIdleMode"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 483
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 457
    return-void
.end method

.method private addDefaultRestrictBackgroundWhitelistUidsUL(I)Z
    .locals 13
    .param p1, "userId"    # I

    .prologue
    const/4 v12, 0x1

    .line 534
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v7

    .line 535
    .local v7, "sysConfig":Lcom/android/server/SystemConfig;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 536
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    move-result-object v0

    .line 537
    .local v0, "allowDataUsage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 538
    .local v2, "changed":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 539
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 540
    .local v5, "pkg":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_0

    .line 541
    const-string/jumbo v9, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "checking restricted background whitelisting for package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 542
    const-string/jumbo v11, " and user "

    .line 541
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    const/high16 v9, 0x100000

    :try_start_0
    invoke-virtual {v6, v5, v9, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 551
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v9

    if-nez v9, :cond_2

    .line 552
    const-string/jumbo v9, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addDefaultRestrictBackgroundWhitelistUidsUL(): skipping non-privileged app  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 546
    :catch_0
    move-exception v3

    .line 547
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_1

    const-string/jumbo v9, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No ApplicationInfo for package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 556
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 557
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8, v12}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 558
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_3

    .line 559
    const-string/jumbo v9, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Adding uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " (user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") to default restricted "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 560
    const-string/jumbo v11, "background whitelist. Revoked status: "

    .line 559
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 561
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    .line 559
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_3
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 563
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_4

    .line 564
    const-string/jumbo v9, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "adding default package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " (uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 565
    const-string/jumbo v11, ") to restrict background whitelist"

    .line 564
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_4
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8, v12}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 567
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 570
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v8    # "uid":I
    :cond_5
    return v2
.end method

.method private adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .locals 5
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .prologue
    const/4 v3, 0x2

    .line 3774
    move-object v1, p2

    .line 3775
    .local v1, "uidRulesTemp":Landroid/util/SparseIntArray;
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_NETWORK:Z

    if-eqz v2, :cond_2

    .line 3776
    if-ne p1, v3, :cond_2

    .line 3777
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3778
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 3779
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3777
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3782
    :cond_1
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUidFirewallRules uidRulesTemp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    .end local v0    # "index":I
    :cond_2
    return-object p2
.end method

.method private broadcastDataUsageAlarm()V
    .locals 2

    .prologue
    .line 3958
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.oneplus.security.action.DATAUSAGE_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3959
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3957
    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 3869
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    invoke-static/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 3879
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3880
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    .line 3881
    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.net.NetworkOverLimitActivity"

    .line 3880
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3882
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3883
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3884
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    .prologue
    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3873
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3874
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3875
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    invoke-static/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->buildFlymeViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 3888
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3889
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    .line 3890
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    .line 3889
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3891
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3892
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3893
    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1231
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1232
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 1233
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1232
    invoke-interface {v2, v1, p1, v3, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1234
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 3902
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 3903
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3904
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3903
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3901
    :cond_0
    return-void
.end method

.method private currentTimeMillis()J
    .locals 2

    .prologue
    .line 3865
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    .line 3461
    if-eqz p1, :cond_0

    .line 3463
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3460
    :cond_0
    :goto_0
    return-void

    .line 3464
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchRestrictBackgroundBlacklistChanged(Landroid/net/INetworkPolicyListener;IZ)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "blacklisted"    # Z

    .prologue
    .line 3491
    if-eqz p1, :cond_0

    .line 3493
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundBlacklistChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3490
    :cond_0
    :goto_0
    return-void

    .line 3494
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"    # Z

    .prologue
    .line 3471
    if-eqz p1, :cond_0

    .line 3473
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3470
    :cond_0
    :goto_0
    return-void

    .line 3474
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchRestrictBackgroundWhitelistChanged(Landroid/net/INetworkPolicyListener;IZ)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "whitelisted"    # Z

    .prologue
    .line 3481
    if-eqz p1, :cond_0

    .line 3483
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundWhitelistChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3480
    :cond_0
    :goto_0
    return-void

    .line 3484
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidRules"    # I

    .prologue
    .line 3451
    if-eqz p1, :cond_0

    .line 3453
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3450
    :cond_0
    :goto_0
    return-void

    .line 3454
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enableFirewallChainUL(IZ)V
    .locals 4
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 3816
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 3817
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 3819
    return-void

    .line 3821
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3823
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3815
    :goto_0
    return-void

    .line 3824
    :catch_0
    move-exception v1

    .line 3825
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "problem enable firewall chain"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3826
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 21
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    .line 1113
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v5

    .line 1114
    .local v5, "tag":Ljava/lang/String;
    new-instance v11, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .local v11, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    const-wide/16 v6, 0x0

    invoke-virtual {v11, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v4, #android:color@system_notification_accent_color#t

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1121
    .local v15, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    .line 1217
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1218
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v8, v2, [I

    .line 1219
    .local v8, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 1220
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    const/4 v6, 0x0

    .line 1221
    const/4 v9, -0x1

    move-object v4, v3

    .line 1219
    invoke-interface/range {v2 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v8    # "idReceived":[I
    :goto_1
    return-void

    .line 1123
    :pswitch_0
    const v2, #android:string@data_usage_warning_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1124
    .local v19, "title":Ljava/lang/CharSequence;
    const v2, #android:string@data_usage_warning_body#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "body":Ljava/lang/CharSequence;
    const v2, #android:drawable@stat_notify_error#t

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v2, -0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v18

    .line 1135
    .local v18, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    .line 1134
    move-object/from16 v0, v18

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1137
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v20

    .line 1139
    .local v20, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    .line 1138
    move-object/from16 v0, v20

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 1144
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v18    # "snoozeIntent":Landroid/content/Intent;
    .end local v19    # "title":Ljava/lang/CharSequence;
    .end local v20    # "viewIntent":Landroid/content/Intent;
    :pswitch_1
    const v2, #android:string@data_usage_limit_body#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .restart local v10    # "body":Ljava/lang/CharSequence;
    const v13, #android:drawable@stat_notify_disabled_data#t

    .local v13, "icon":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 1163
    const/16 v19, 0x0

    .line 1167
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1168
    invoke-virtual {v11, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1169
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1170
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1171
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1173
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v14

    .line 1175
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    .line 1174
    invoke-static {v2, v4, v14, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1150
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_2
    const v2, #android:string@data_usage_3g_limit_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1153
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v2, #android:string@data_usage_4g_limit_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1156
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v2, #android:string@data_usage_mobile_limit_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1159
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v2, #android:string@data_usage_wifi_limit_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    const v13, #android:drawable@stat_notify_error#t

    goto :goto_2

    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v13    # "icon":I
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v16, p3, v6

    .line 1180
    .local v16, "overBytes":J
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v2, v6

    const v4, #android:string@data_usage_limit_snoozed_body#t

    invoke-virtual {v15, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    const/16 v19, 0x0

    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v2, #android:drawable@stat_notify_error#t

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v14

    .line 1210
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    .line 1209
    invoke-static {v2, v4, v14, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1186
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_7
    const v2, #android:string@data_usage_3g_limit_snoozed_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1189
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v2, #android:string@data_usage_4g_limit_snoozed_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1192
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v2, #android:string@data_usage_mobile_limit_snoozed_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1195
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v2, #android:string@data_usage_wifi_limit_snoozed_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1223
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v16    # "overBytes":J
    .end local v19    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 1121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1148
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 1184
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private ensureActiveMobilePolicyNL()V
    .locals 7

    .prologue
    .line 1483
    sget-boolean v5, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "NetworkPolicy"

    const-string/jumbo v6, "ensureActiveMobilePolicyNL()"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v5, :cond_1

    return-void

    .line 1486
    :cond_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1487
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 1489
    .local v0, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v2

    .line 1490
    .local v2, "subIds":[I
    const/4 v5, 0x0

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_2

    aget v1, v2, v5

    .line 1491
    .local v1, "subId":I
    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 1492
    .local v3, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyNL(Ljava/lang/String;)V

    .line 1490
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1482
    .end local v1    # "subId":I
    .end local v3    # "subscriberId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private ensureActiveMobilePolicyNL(Ljava/lang/String;)V
    .locals 21
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 1498
    new-instance v2, Landroid/net/NetworkIdentity;

    const/4 v3, 0x0

    .line 1499
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v5, p1

    .line 1498
    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1500
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "i":I
    :goto_0
    if-ltz v19, :cond_2

    .line 1501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 1502
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1503
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_0

    .line 1504
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Found template "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " which matches subscriber "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1505
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1504
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_0
    return-void

    .line 1500
    :cond_1
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .line 1511
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    :cond_2
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No policy for subscriber "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1512
    const-string/jumbo v11, "; generating default policy"

    .line 1511
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, #android:integer@config_networkPolicyDefaultWarning#t

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    .local v18, "dataWarningConfig":I
    move/from16 v0, v18

    int-to-long v10, v0

    const-wide/16 v12, -0x1

    cmp-long v3, v10, v12

    if-nez v3, :cond_3

    .line 1519
    const-wide/16 v8, -0x1

    .line 1524
    .local v8, "warningBytes":J
    :goto_1
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 1525
    .local v20, "time":Landroid/text/format/Time;
    invoke-virtual/range {v20 .. v20}, Landroid/text/format/Time;->setToNow()V

    .line 1527
    move-object/from16 v0, v20

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    .line 1528
    .local v6, "cycleDay":I
    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1530
    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 1531
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    .line 1532
    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 1531
    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 1533
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyNL(Landroid/net/NetworkPolicy;)V

    .line 1496
    return-void

    .line 1521
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v20    # "time":Landroid/text/format/Time;
    :cond_3
    move/from16 v0, v18

    int-to-long v10, v0

    const-wide/32 v12, 0x100000

    mul-long v8, v10, v12

    .restart local v8    # "warningBytes":J
    goto :goto_1
.end method

.method private findPolicyForNetworkNL(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 5
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    const/4 v4, 0x0

    .line 2376
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2377
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 2387
    .local v2, "policy":Landroid/net/NetworkPolicy;
    :try_start_0
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2388
    return-object v2

    .line 2390
    :catch_0
    move-exception v1

    .line 2391
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2392
    return-object v4

    .line 2376
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2397
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    return-object v4
.end method

.method private getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 22
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 2415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    .line 2418
    .local v8, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2419
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkNL(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .local v18, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v2

    .line 2422
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2427
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v6

    .line 2430
    .local v6, "currentTime":J
    move-object/from16 v0, v18

    invoke-static {v6, v7, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 2431
    .local v4, "start":J
    move-wide/from16 v16, v6

    .line 2432
    .local v16, "end":J
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 2435
    .local v10, "totalBytes":J
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_1

    move-object/from16 v0, v18

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2437
    .local v12, "softLimitBytes":J
    :goto_0
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_2

    move-object/from16 v0, v18

    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2440
    .local v14, "hardLimitBytes":J
    :goto_1
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    return-object v9

    .line 2418
    .end local v4    # "start":J
    .end local v6    # "currentTime":J
    .end local v10    # "totalBytes":J
    .end local v12    # "softLimitBytes":J
    .end local v14    # "hardLimitBytes":J
    .end local v16    # "end":J
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 2424
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 2436
    .restart local v4    # "start":J
    .restart local v6    # "currentTime":J
    .restart local v10    # "totalBytes":J
    .restart local v16    # "end":J
    :cond_1
    const-wide/16 v12, -0x1

    .restart local v12    # "softLimitBytes":J
    goto :goto_0

    .line 2438
    :cond_2
    const-wide/16 v14, -0x1

    .restart local v14    # "hardLimitBytes":J
    goto :goto_1
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 452
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 3833
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 3837
    :catch_0
    move-exception v6

    .line 3839
    .local v6, "e":Landroid/os/RemoteException;
    return-wide v8

    .line 3834
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 3835
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem reading network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    return-wide v8
.end method

.method private hasInternetPermissions(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 3140
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string/jumbo v2, "android.permission.INTERNET"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 3142
    return v3

    .line 3144
    :catch_0
    move-exception v0

    .line 3146
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 3844
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3846
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3851
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3846
    return v1

    .line 3847
    :catch_0
    move-exception v0

    .line 3849
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 3851
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3849
    return v1

    .line 3850
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 3851
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3850
    throw v1
.end method

.method static isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z
    .locals 10
    .param p0, "procState"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2827
    sget-boolean v4, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    if-eqz v4, :cond_2

    .line 2828
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2829
    .local v0, "now":J
    if-gt p0, v5, :cond_1

    .line 2830
    sget-wide v4, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceModeTime:J

    sub-long v4, v0, v4

    sget-wide v6, Lcom/android/server/net/NetworkPolicyManagerService;->screenOffCheckDelayTime:J

    const-wide/32 v8, 0x493e0

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 2831
    .local v2, "res":Z
    :goto_0
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v2, v3

    .line 2830
    goto :goto_0

    :cond_1
    move v2, v3

    .line 2829
    goto :goto_0

    .line 2833
    .end local v0    # "now":J
    :cond_2
    if-gt p0, v5, :cond_3

    :goto_1
    return v2

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method static isProcStateAllowedWhileOnRestrictBackground(I)Z
    .locals 1
    .param p0, "procState"    # I

    .prologue
    .line 2838
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTemplateRelevant(Landroid/net/NetworkTemplate;)Z
    .locals 13
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1065
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1066
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    .line 1067
    .local v10, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    .line 1070
    .local v7, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v9

    .line 1071
    .local v9, "subIds":[I
    array-length v12, v9

    move v11, v1

    :goto_0
    if-ge v11, v12, :cond_1

    aget v8, v9, v11

    .line 1072
    .local v8, "subId":I
    invoke-virtual {v10, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 1073
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    .line 1074
    const/4 v4, 0x0

    move v2, v1

    move v5, v1

    .line 1073
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1075
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    return v6

    .line 1071
    :cond_0
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    .line 1079
    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v8    # "subId":I
    :cond_1
    return v1

    .line 1081
    .end local v7    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v9    # "subIds":[I
    .end local v10    # "tele":Landroid/telephony/TelephonyManager;
    :cond_2
    return v6
.end method

.method private isUidForegroundOnRestrictBackgroundUL(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2707
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2708
    .local v0, "procState":I
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    return v1
.end method

.method private isUidForegroundOnRestrictPowerUL(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2712
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2713
    .local v0, "procState":I
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v1

    return v1
.end method

.method private isUidForegroundUL(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2702
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForegroundUL(I)Z

    move-result v0

    return v0
.end method

.method private isUidIdle(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 3120
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 3121
    .local v1, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3123
    .local v2, "userId":I
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3124
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 3125
    .local v0, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v0, p1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3126
    return v4

    .line 3124
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3130
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method private isUidStateForegroundUL(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 2718
    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUidValidForBlacklistRules(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 3107
    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3fb

    if-ne p1, v0, :cond_1

    .line 3109
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3108
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v0

    .line 3107
    if-nez v0, :cond_0

    .line 3112
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isUidValidForWhitelistRules(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 3116
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWhitelistedBatterySaverUL(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2906
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2907
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static newWifiPolicy(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkPolicy;
    .locals 14
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "metered"    # Z

    .prologue
    const-wide/16 v4, -0x1

    .line 976
    new-instance v0, Landroid/net/NetworkPolicy;

    const-string/jumbo v3, "UTC"

    const/4 v2, -0x1

    .line 978
    const/4 v13, 0x1

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    move v12, p1

    .line 976
    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    return-object v0
.end method

.method private normalizePoliciesNL()V
    .locals 1

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 2050
    return-void
.end method

.method private normalizePoliciesNL([Landroid/net/NetworkPolicy;)V
    .locals 9
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    const/4 v4, 0x0

    .line 2055
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 2056
    .local v3, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v1

    .line 2058
    .local v1, "merged":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 2059
    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, p1, v4

    .line 2062
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v6, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    iput-object v6, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2063
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 2064
    .local v0, "existing":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v6

    if-lez v6, :cond_2

    .line 2065
    :cond_0
    if-eqz v0, :cond_1

    .line 2066
    const-string/jumbo v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Normalization replaced "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :cond_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2054
    .end local v0    # "existing":Landroid/net/NetworkPolicy;
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    return-void
.end method

.method private notifyOverLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1092
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1089
    :cond_0
    return-void
.end method

.method private notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1096
    return-void
.end method

.method private readPolicyAL()V
    .locals 37

    .prologue
    .line 1537
    sget-boolean v4, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "NetworkPolicy"

    const-string/jumbo v34, "readPolicyAL()"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 1543
    const/16 v22, 0x0

    .line 1545
    .local v22, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v22

    .line 1546
    .local v22, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v23

    .line 1547
    .local v23, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1550
    const/16 v33, 0x1

    .line 1551
    .local v33, "version":I
    const/16 v24, 0x0

    .line 1552
    .local v24, "insideWhitelist":Z
    :cond_1
    :goto_0
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v31

    .local v31, "type":I
    const/4 v4, 0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_14

    .line 1553
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v30

    .line 1554
    .local v30, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    move/from16 v0, v31

    if-ne v0, v4, :cond_13

    .line 1555
    const-string/jumbo v4, "policy-list"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1556
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    move/from16 v27, v0

    .line 1557
    .local v27, "oldValue":Z
    const-string/jumbo v4, "version"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v33

    .line 1558
    const/4 v4, 0x3

    move/from16 v0, v33

    if-lt v0, v4, :cond_2

    .line 1560
    const-string/jumbo v4, "restrictBackground"

    .line 1559
    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1564
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    move/from16 v0, v27

    if-eq v4, v0, :cond_1

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    .line 1568
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 1567
    :goto_2
    const/16 v35, 0x6

    .line 1568
    const/16 v36, 0x0

    .line 1567
    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1670
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "insideWhitelist":Z
    .end local v27    # "oldValue":Z
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v33    # "version":I
    :catch_0
    move-exception v19

    .line 1672
    .local v19, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundDataUL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1678
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1536
    .end local v19    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    return-void

    .line 1562
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "insideWhitelist":Z
    .restart local v27    # "oldValue":Z
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v33    # "version":I
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1673
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "insideWhitelist":Z
    .end local v27    # "oldValue":Z
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v33    # "version":I
    :catch_1
    move-exception v20

    .line 1674
    .local v20, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v4, "NetworkPolicy"

    const-string/jumbo v34, "problem reading network policy"

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1678
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .line 1568
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "insideWhitelist":Z
    .restart local v27    # "oldValue":Z
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v33    # "version":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 1571
    .end local v27    # "oldValue":Z
    :cond_4
    :try_start_4
    const-string/jumbo v4, "network-policy"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1572
    const-string/jumbo v4, "networkTemplate"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v26

    .line 1573
    .local v26, "networkTemplate":I
    const-string/jumbo v4, "subscriberId"

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1575
    .local v29, "subscriberId":Ljava/lang/String;
    const/16 v4, 0x9

    move/from16 v0, v33

    if-lt v0, v4, :cond_5

    .line 1576
    const-string/jumbo v4, "networkId"

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1580
    :goto_4
    const-string/jumbo v4, "cycleDay"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 1582
    .local v6, "cycleDay":I
    const/4 v4, 0x6

    move/from16 v0, v33

    if-lt v0, v4, :cond_6

    .line 1583
    const-string/jumbo v4, "cycleTimezone"

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1587
    .local v7, "cycleTimezone":Ljava/lang/String;
    :goto_5
    const-string/jumbo v4, "warningBytes"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 1588
    .local v8, "warningBytes":J
    const-string/jumbo v4, "limitBytes"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .line 1590
    .local v10, "limitBytes":J
    const/4 v4, 0x5

    move/from16 v0, v33

    if-lt v0, v4, :cond_7

    .line 1591
    const-string/jumbo v4, "lastLimitSnooze"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .line 1598
    .local v14, "lastLimitSnooze":J
    :goto_6
    const/4 v4, 0x4

    move/from16 v0, v33

    if-lt v0, v4, :cond_9

    .line 1599
    const-string/jumbo v4, "metered"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    .line 1612
    :goto_7
    const/4 v4, 0x5

    move/from16 v0, v33

    if-lt v0, v4, :cond_a

    .line 1613
    const-string/jumbo v4, "lastWarningSnooze"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    .line 1618
    .local v12, "lastWarningSnooze":J
    :goto_8
    const/4 v4, 0x7

    move/from16 v0, v33

    if-lt v0, v4, :cond_b

    .line 1619
    const-string/jumbo v4, "inferred"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .line 1624
    :goto_9
    new-instance v5, Landroid/net/NetworkTemplate;

    move/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-direct {v5, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1626
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    new-instance v4, Landroid/net/NetworkPolicy;

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1675
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "insideWhitelist":Z
    .end local v26    # "networkTemplate":I
    .end local v29    # "subscriberId":Ljava/lang/String;
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v33    # "version":I
    :catch_2
    move-exception v21

    .line 1676
    .local v21, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string/jumbo v4, "NetworkPolicy"

    const-string/jumbo v34, "problem reading network policy"

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1678
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_3

    .line 1578
    .end local v21    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "insideWhitelist":Z
    .restart local v26    # "networkTemplate":I
    .restart local v29    # "subscriberId":Ljava/lang/String;
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v33    # "version":I
    :cond_5
    const/16 v25, 0x0

    .local v25, "networkId":Ljava/lang/String;
    goto/16 :goto_4

    .line 1585
    .end local v25    # "networkId":Ljava/lang/String;
    .restart local v6    # "cycleDay":I
    :cond_6
    :try_start_6
    const-string/jumbo v7, "UTC"

    .restart local v7    # "cycleTimezone":Ljava/lang/String;
    goto/16 :goto_5

    .line 1592
    .restart local v8    # "warningBytes":J
    .restart local v10    # "limitBytes":J
    :cond_7
    const/4 v4, 0x2

    move/from16 v0, v33

    if-lt v0, v4, :cond_8

    .line 1593
    const-string/jumbo v4, "lastSnooze"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_6

    .line 1595
    .end local v14    # "lastLimitSnooze":J
    :cond_8
    const-wide/16 v14, -0x1

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_6

    .line 1601
    :cond_9
    packed-switch v26, :pswitch_data_0

    .line 1608
    const/16 v16, 0x0

    .local v16, "metered":Z
    goto :goto_7

    .line 1605
    .end local v16    # "metered":Z
    :pswitch_0
    const/16 v16, 0x1

    .line 1606
    .restart local v16    # "metered":Z
    goto :goto_7

    .line 1615
    .end local v16    # "metered":Z
    :cond_a
    const-wide/16 v12, -0x1

    .restart local v12    # "lastWarningSnooze":J
    goto :goto_8

    .line 1621
    :cond_b
    const/16 v17, 0x0

    .local v17, "inferred":Z
    goto :goto_9

    .line 1632
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v17    # "inferred":Z
    .end local v26    # "networkTemplate":I
    .end local v29    # "subscriberId":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "uid-policy"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1633
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v32

    .line 1634
    .local v32, "uid":I
    const-string/jumbo v4, "policy"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1636
    .local v28, "policy":I
    invoke-static/range {v32 .. v32}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1637
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1677
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "insideWhitelist":Z
    .end local v28    # "policy":I
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v32    # "uid":I
    .end local v33    # "version":I
    :catchall_0
    move-exception v4

    .line 1678
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1677
    throw v4

    .line 1639
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "insideWhitelist":Z
    .restart local v28    # "policy":I
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v32    # "uid":I
    .restart local v33    # "version":I
    :cond_d
    :try_start_7
    const-string/jumbo v4, "NetworkPolicy"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "unable to apply policy to UID "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "; ignoring"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1641
    .end local v28    # "policy":I
    .end local v32    # "uid":I
    :cond_e
    const-string/jumbo v4, "app-policy"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1642
    const-string/jumbo v4, "appId"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    .line 1643
    .local v18, "appId":I
    const-string/jumbo v4, "policy"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1647
    .restart local v28    # "policy":I
    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v32

    .line 1648
    .restart local v32    # "uid":I
    invoke-static/range {v32 .. v32}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1649
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto/16 :goto_0

    .line 1651
    :cond_f
    const-string/jumbo v4, "NetworkPolicy"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "unable to apply policy to UID "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "; ignoring"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1653
    .end local v18    # "appId":I
    .end local v28    # "policy":I
    .end local v32    # "uid":I
    :cond_10
    const-string/jumbo v4, "whitelist"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1654
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 1655
    :cond_11
    const-string/jumbo v4, "restrict-background"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v24, :cond_12

    .line 1656
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v32

    .line 1657
    .restart local v32    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_0

    .line 1658
    .end local v32    # "uid":I
    :cond_12
    const-string/jumbo v4, "revoked-restrict-background"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v24, :cond_1

    .line 1659
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v32

    .line 1660
    .restart local v32    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_0

    .line 1662
    .end local v32    # "uid":I
    :cond_13
    const/4 v4, 0x3

    move/from16 v0, v31

    if-ne v0, v4, :cond_1

    .line 1663
    const-string/jumbo v4, "whitelist"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1664
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1678
    .end local v30    # "tag":Ljava/lang/String;
    :cond_14
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_3

    .line 1601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3689
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3687
    :goto_0
    return-void

    .line 3690
    :catch_0
    move-exception v1

    .line 3691
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "problem removing interface quota"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3692
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private removeRestrictBackgroundWhitelistedUidUL(IZZ)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z
    .param p3, "updateNow"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2228
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 2229
    .local v1, "oldStatus":Z
    if-nez v1, :cond_0

    if-eqz p2, :cond_5

    .line 2233
    :cond_0
    if-nez p2, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v0

    .line 2234
    :goto_0
    if-eqz v1, :cond_1

    .line 2235
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removing uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from restrict background whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2238
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2239
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2244
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 2246
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(IZ)V

    .line 2248
    :cond_3
    if-eqz p3, :cond_4

    .line 2250
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2251
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 2256
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v3, :cond_a

    :goto_2
    return v0

    .line 2230
    :cond_5
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " was not whitelisted before"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    :cond_6
    return v2

    .line 2233
    :cond_7
    const/4 v0, 0x1

    .local v0, "needFirewallRules":Z
    goto :goto_0

    .line 2240
    .end local v0    # "needFirewallRules":Z
    :cond_8
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_9

    const-string/jumbo v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2241
    const-string/jumbo v5, " to revoked restrict background whitelist"

    .line 2240
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :cond_9
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_1

    .line 2250
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_a
    move v0, v2

    .line 2256
    goto :goto_2
.end method

.method private removeUidStateUL(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 2755
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 2756
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 2757
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 2758
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2759
    if-eq v1, v4, :cond_2

    .line 2760
    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 2762
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_0

    .line 2763
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 2765
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v2, :cond_1

    .line 2766
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 2768
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 2769
    invoke-direct {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V

    .line 2754
    .end local v1    # "oldUidState":I
    :cond_2
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 3678
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 3679
    invoke-static {p1, p2, p3}, Lcom/android/server/NetPluginDelegate;->setQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3676
    :goto_0
    return-void

    .line 3680
    :catch_0
    move-exception v1

    .line 3681
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "problem setting interface quota"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3682
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setMeteredNetworkBlacklist(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 3698
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMeteredNetworkBlacklist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3697
    :goto_0
    return-void

    .line 3701
    :catch_0
    move-exception v1

    .line 3702
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem setting blacklist ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") rules for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3703
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setMeteredNetworkWhitelist(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 3709
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMeteredNetworkWhitelist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3708
    :goto_0
    return-void

    .line 3712
    :catch_0
    move-exception v1

    .line 3713
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem setting whitelist ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") rules for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3714
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setNetworkPolicies_internal([Landroid/net/NetworkPolicy;)V
    .locals 5
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 1872
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1876
    .local v0, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1877
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1878
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 1879
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1880
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1881
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1882
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1886
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1871
    return-void

    .line 1877
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v4

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1876
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1885
    :catchall_2
    move-exception v2

    .line 1886
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1885
    throw v2
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 13
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1302
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 1305
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    .line 1306
    .local v7, "sm":Landroid/telephony/SubscriptionManager;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    .line 1308
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v9

    .line 1309
    .local v9, "subIds":[I
    array-length v12, v9

    move v11, v1

    :goto_0
    if-ge v11, v12, :cond_1

    aget v8, v9, v11

    .line 1310
    .local v8, "subId":I
    invoke-virtual {v10, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 1311
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    .line 1312
    const/4 v4, 0x0

    move v2, v1

    move v5, v1

    .line 1311
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1314
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1315
    invoke-virtual {v10, p2, v8}, Landroid/telephony/TelephonyManager;->setPolicyDataEnabled(ZI)V

    .line 1309
    :cond_0
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    .line 1298
    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v7    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v8    # "subId":I
    .end local v9    # "subIds":[I
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    return-void
.end method

.method private setRestrictBackgroundUL(Z)V
    .locals 5
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 2152
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2154
    .local v1, "oldRestrictBackground":Z
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2158
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    .line 2160
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2161
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not change Data Saver Mode on NMS to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2165
    return-void

    .line 2167
    :catch_0
    move-exception v0

    .line 2170
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2171
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 2172
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 2151
    return-void

    .line 2170
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setUidFirewallRule(III)V
    .locals 6
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    .line 3792
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 3793
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3799
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v3, :cond_1

    .line 3800
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUidFirewallRule chain = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " rule "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3791
    :goto_1
    return-void

    .line 3794
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 3795
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 3796
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 3797
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 3807
    :catch_0
    move-exception v2

    .line 3808
    .local v2, "oobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v3, "NetworkPolicy"

    const-string/jumbo v4, "problem setting firewall uid rules "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3803
    .end local v2    # "oobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 3804
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "NetworkPolicy"

    const-string/jumbo v4, "problem setting firewall uid rules"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3805
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private setUidFirewallRules(ILandroid/util/SparseIntArray;)V
    .locals 10
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .prologue
    .line 3753
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v5

    .line 3754
    .local v5, "uidRulesTemp":Landroid/util/SparseIntArray;
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 3755
    .local v4, "size":I
    new-array v6, v4, [I

    .line 3756
    .local v6, "uids":[I
    new-array v3, v4, [I

    .line 3757
    .local v3, "rules":[I
    add-int/lit8 v2, v4, -0x1

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_0

    .line 3758
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    aput v7, v6, v2

    .line 3759
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    aput v7, v3, v2

    .line 3757
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3761
    :cond_0
    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v7, :cond_1

    .line 3762
    const-string/jumbo v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    :cond_1
    const-string/jumbo v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setUidFirewallRules uidRules "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " chain ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v7, p1, v6, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3751
    .end local v2    # "index":I
    .end local v3    # "rules":[I
    .end local v4    # "size":I
    .end local v5    # "uidRulesTemp":Landroid/util/SparseIntArray;
    .end local v6    # "uids":[I
    :goto_1
    return-void

    .line 3766
    :catch_0
    move-exception v1

    .line 3767
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v7, "NetworkPolicy"

    const-string/jumbo v8, "problem setting firewall uid rules"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3768
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private setUidFirewallRulesAsync(ILandroid/util/SparseIntArray;I)V
    .locals 2
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;
    .param p3, "toggle"    # I

    .prologue
    .line 3741
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3742
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    .line 3743
    const-string/jumbo v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    :cond_0
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIIZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "oldPolicy"    # I
    .param p3, "policy"    # I
    .param p4, "persist"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1844
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 1846
    if-ne p3, v3, :cond_4

    const/4 v0, 0x1

    .line 1847
    .local v0, "isBlacklisted":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 1848
    if-eqz v0, :cond_0

    move v2, v3

    .line 1847
    :cond_0
    const/16 v5, 0xc

    invoke-virtual {v4, v5, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1850
    if-ne p2, v3, :cond_5

    const/4 v1, 0x1

    .line 1852
    .local v1, "wasBlacklisted":Z
    :goto_1
    if-nez p2, :cond_1

    if-nez v0, :cond_2

    .line 1853
    :cond_1
    if-eqz v1, :cond_3

    if-nez p3, :cond_3

    .line 1854
    :cond_2
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p1, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1843
    :cond_3
    return-void

    .line 1846
    .end local v0    # "isBlacklisted":Z
    .end local v1    # "wasBlacklisted":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isBlacklisted":Z
    goto :goto_0

    .line 1850
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "wasBlacklisted":Z
    goto :goto_1
.end method

.method private setUidPolicyUncheckedUL(IIZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue

    invoke-static/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->updateRulesForUidWifiAndMobileLocked(Lcom/android/server/net/NetworkPolicyManagerService;II)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1859
    :cond_0
    return-void

    .line 1865
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateNetworkStats(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .prologue
    .line 2787
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x8da

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2775
    return-void

    .line 2787
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .prologue
    .line 2795
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    .line 2797
    .local v1, "oldForeground":Z
    invoke-static {p3}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    .line 2798
    .local v0, "newForeground":Z
    if-eq v1, v0, :cond_0

    .line 2799
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 2793
    :cond_0
    return-void
.end method

.method private updateRestrictionRulesForUidUL(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 3164
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 3165
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 3166
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 3169
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 3172
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 3162
    return-void
.end method

.method private updateRulesForAllAppsUL(I)V
    .locals 14
    .param p1, "type"    # I

    .prologue
    .line 3047
    const-wide/32 v10, 0x200000

    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3048
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateRulesForRestrictPowerUL-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/32 v12, 0x200000

    invoke-static {v12, v13, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3051
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3054
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 3056
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const v10, 0xc2200

    .line 3055
    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 3060
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 3061
    .local v9, "usersSize":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 3062
    .local v2, "appsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_3

    .line 3063
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3064
    .local v7, "user":Landroid/content/pm/UserInfo;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 3065
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3066
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 3067
    .local v6, "uid":I
    packed-switch p1, :pswitch_data_0

    .line 3075
    const-string/jumbo v10, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid type for updateRulesForAllApps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3069
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 3079
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2    # "appsSize":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "uid":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v9    # "usersSize":I
    :catchall_0
    move-exception v10

    .line 3080
    const-wide/32 v12, 0x200000

    invoke-static {v12, v13}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3081
    const-wide/32 v12, 0x200000

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 3079
    :cond_1
    throw v10

    .line 3072
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v2    # "appsSize":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "uid":I
    .restart local v7    # "user":Landroid/content/pm/UserInfo;
    .restart local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v9    # "usersSize":I
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3062
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "uid":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3080
    .end local v4    # "j":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    const-wide/32 v10, 0x200000

    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3081
    const-wide/32 v10, 0x200000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 3046
    :cond_4
    return-void

    .line 3067
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateRulesForDataUsageRestrictionsUL(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 3215
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(IZ)V

    .line 3214
    return-void
.end method

.method private updateRulesForDataUsageRestrictionsUL(IZ)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3223
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3228
    :cond_0
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 3229
    .local v7, "uidPolicy":I
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 3230
    .local v6, "oldUidRules":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v1

    .line 3232
    .local v1, "isForeground":Z
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_8

    const/4 v0, 0x1

    .line 3233
    .local v0, "isBlacklisted":Z
    :goto_0
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 3234
    .local v2, "isWhitelisted":Z
    and-int/lit8 v5, v6, 0xf

    .line 3235
    .local v5, "oldRule":I
    const/4 v3, 0x0

    .line 3238
    .local v3, "newRule":I
    if-eqz v1, :cond_a

    .line 3239
    if-nez v0, :cond_9

    iget-boolean v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v8, :cond_1

    if-eqz v2, :cond_9

    :cond_1
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_1
    and-int/lit16 v8, v6, 0xf0

    or-int v4, v3, v8

    .local v4, "newUidRules":I
    invoke-static {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->updateFlymeRules(Lcom/android/server/net/NetworkPolicyManagerService;II)I

    move-result v4

    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v8, :cond_3

    const-string v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateRuleForRestrictBackgroundUL("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3255
    const-string/jumbo v10, ": isForeground="

    .line 3254
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3256
    const-string/jumbo v10, ", isBlacklisted="

    .line 3254
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3257
    const-string/jumbo v10, ", isWhitelisted="

    .line 3254
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3258
    const-string/jumbo v10, ", oldRule="

    .line 3254
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3258
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v10

    .line 3254
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3259
    const-string/jumbo v10, ", newRule="

    .line 3254
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3259
    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v10

    .line 3254
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3260
    const-string/jumbo v10, ", newUidRules="

    .line 3254
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3260
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v10

    .line 3254
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3261
    const-string/jumbo v10, ", oldUidRules="

    .line 3254
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3261
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v10

    .line 3254
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v4, :cond_c

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_2
    if-eq v3, v5, :cond_5

    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_d

    invoke-direct {p0, p1, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 3222
    :cond_5
    return-void

    .line 3224
    .end local v0    # "isBlacklisted":Z
    .end local v1    # "isForeground":Z
    .end local v2    # "isWhitelisted":Z
    .end local v3    # "newRule":I
    .end local v4    # "newUidRules":I
    .end local v5    # "oldRule":I
    .end local v6    # "oldUidRules":I
    .end local v7    # "uidPolicy":I
    :cond_6
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v8, :cond_7

    const-string/jumbo v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "no need to update restrict data rules for uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    :cond_7
    return-void

    .line 3232
    .restart local v1    # "isForeground":Z
    .restart local v6    # "oldUidRules":I
    .restart local v7    # "uidPolicy":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "isBlacklisted":Z
    goto/16 :goto_0

    .line 3240
    .restart local v2    # "isWhitelisted":Z
    .restart local v3    # "newRule":I
    .restart local v5    # "oldRule":I
    :cond_9
    const/4 v3, 0x2

    .line 3239
    goto/16 :goto_1

    .line 3245
    :cond_a
    if-eqz v0, :cond_b

    .line 3246
    const/4 v3, 0x4

    goto/16 :goto_1

    .line 3247
    :cond_b
    iget-boolean v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v8, :cond_2

    if-eqz v2, :cond_2

    .line 3248
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 3267
    .restart local v4    # "newUidRules":I
    :cond_c
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 3283
    :cond_d
    and-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_f

    .line 3290
    if-nez v2, :cond_e

    .line 3291
    invoke-direct {p0, p1, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 3293
    :cond_e
    if-eqz v0, :cond_4

    .line 3294
    invoke-direct {p0, p1, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto :goto_3

    .line 3296
    :cond_f
    and-int/lit8 v8, v3, 0x4

    if-nez v8, :cond_10

    .line 3297
    and-int/lit8 v8, v5, 0x4

    if-eqz v8, :cond_11

    .line 3299
    :cond_10
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    .line 3300
    and-int/lit8 v8, v5, 0x4

    if-eqz v8, :cond_4

    if-eqz v2, :cond_4

    .line 3304
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    goto :goto_3

    .line 3306
    :cond_11
    and-int/lit8 v8, v3, 0x1

    if-nez v8, :cond_12

    .line 3307
    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_13

    .line 3309
    :cond_12
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    goto :goto_3

    .line 3312
    :cond_13
    const-string/jumbo v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unexpected change of metered UID state for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3313
    const-string/jumbo v10, ": foreground="

    .line 3312
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3314
    const-string/jumbo v10, ", whitelisted="

    .line 3312
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3315
    const-string/jumbo v10, ", blacklisted="

    .line 3312
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3316
    const-string/jumbo v10, ", newRule="

    .line 3312
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3316
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v10

    .line 3312
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3317
    const-string/jumbo v10, ", oldRule="

    .line 3312
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3317
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v10

    .line 3312
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private updateRulesForGlobalChangeAL(Z)V
    .locals 4
    .param p1, "restrictedNetworksChanged"    # Z

    .prologue
    const-wide/32 v2, 0x200000

    .line 2998
    const-string/jumbo v0, "updateRulesForGlobalChangeAL"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3000
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 3001
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 3002
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    .line 3005
    if-eqz p1, :cond_0

    .line 3006
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 3007
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3010
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2997
    return-void

    .line 3009
    :catchall_0
    move-exception v0

    .line 3010
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3009
    throw v0
.end method

.method private updateRulesForPowerRestrictionsUL(IIZ)I
    .locals 10
    .param p1, "uid"    # I
    .param p2, "oldUidRules"    # I
    .param p3, "paroled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3365
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3366
    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "no need to update restrict power rules for uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    :cond_0
    return v1

    .line 3370
    :cond_1
    if-nez p3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    .line 3371
    .local v1, "isIdle":Z
    :cond_2
    if-nez v1, :cond_8

    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-nez v7, :cond_8

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v0

    .local v0, "isForeground":Z
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverUL(I)Z

    move-result v2

    .local v2, "isWhitelisted":Z
    and-int/lit16 v5, p2, 0xf0

    .local v5, "oldRule":I
    const/4 v3, 0x0

    .local v3, "newRule":I
    if-eqz v0, :cond_9

    if-eqz v6, :cond_3

    const/16 v3, 0x20

    :cond_3
    :goto_1
    and-int/lit8 v7, p2, 0xf

    or-int v4, v7, v3

    .local v4, "newUidRules":I
    invoke-static {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->flymeChangeUidRules(Lcom/android/server/net/NetworkPolicyManagerService;II)I

    move-result v4

    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v7, :cond_4

    const-string v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateRulesForPowerRestrictionsUL("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3394
    const-string/jumbo v9, ", isIdle: "

    .line 3393
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3395
    const-string/jumbo v9, ", mRestrictPower: "

    .line 3393
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3395
    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 3393
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3396
    const-string/jumbo v9, ", mDeviceIdleMode: "

    .line 3393
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3396
    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 3393
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3397
    const-string/jumbo v9, ", isForeground="

    .line 3393
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3398
    const-string/jumbo v9, ", isWhitelisted="

    .line 3393
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", oldRule="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newRule="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newUidRules="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", oldUidRules="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    :cond_4
    if-eq v3, v5, :cond_7

    .line 3407
    if-eqz v3, :cond_5

    and-int/lit8 v7, v3, 0x20

    if-eqz v7, :cond_b

    .line 3408
    :cond_5
    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Allowing non-metered access for UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 3422
    :cond_7
    return v4

    .line 3371
    .end local v0    # "isForeground":Z
    .end local v2    # "isWhitelisted":Z
    .end local v3    # "newRule":I
    .end local v4    # "newUidRules":I
    .end local v5    # "oldRule":I
    :cond_8
    const/4 v6, 0x1

    .local v6, "restrictMode":Z
    goto/16 :goto_0

    .line 3386
    .end local v6    # "restrictMode":Z
    .restart local v0    # "isForeground":Z
    .restart local v2    # "isWhitelisted":Z
    .restart local v3    # "newRule":I
    .restart local v5    # "oldRule":I
    :cond_9
    if-eqz v6, :cond_3

    .line 3387
    if-eqz v2, :cond_a

    const/16 v3, 0x20

    goto/16 :goto_1

    :cond_a
    const/16 v3, 0x40

    goto/16 :goto_1

    .line 3409
    .restart local v4    # "newUidRules":I
    :cond_b
    and-int/lit8 v7, v3, 0x40

    if-eqz v7, :cond_c

    .line 3410
    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Rejecting non-metered access for UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3413
    :cond_c
    const-string/jumbo v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected change of non-metered UID state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3414
    const-string/jumbo v9, ": foreground="

    .line 3413
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3415
    const-string/jumbo v9, ", whitelisted="

    .line 3413
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3416
    const-string/jumbo v9, ", newRule="

    .line 3413
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3416
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v9

    .line 3413
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3417
    const-string/jumbo v9, ", oldRule="

    .line 3413
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3417
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v9

    .line 3413
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private updateRulesForPowerRestrictionsUL(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 3344
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3346
    .local v1, "oldUidRules":I
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v0

    .line 3348
    .local v0, "newUidRules":I
    if-nez v0, :cond_0

    .line 3349
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3343
    :goto_0
    return-void

    .line 3351
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method private updateRulesForRestrictBackgroundUL()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x200000

    .line 3027
    const-string/jumbo v0, "updateRulesForRestrictBackgroundUL"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3029
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3031
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3026
    return-void

    .line 3030
    :catchall_0
    move-exception v0

    .line 3031
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3030
    throw v0
.end method

.method private updateRulesForRestrictPowerUL()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x200000

    .line 3016
    const-string/jumbo v0, "updateRulesForRestrictPowerUL"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3018
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    .line 3019
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerSaveUL()V

    .line 3020
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3022
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3015
    return-void

    .line 3021
    :catchall_0
    move-exception v0

    .line 3022
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3021
    throw v0
.end method

.method private updateRulesForScreenUL()V
    .locals 5

    .prologue
    .line 2816
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2817
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2818
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    .line 2819
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 2820
    .local v2, "uid":I
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    .line 2817
    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2814
    :cond_1
    return-void
.end method

.method private updateRulesForTempWhitelistChangeUL()V
    .locals 7

    .prologue
    .line 3087
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 3088
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 3089
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3090
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 3091
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 3092
    .local v0, "appId":I
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 3094
    .local v3, "uid":I
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 3095
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 3096
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 3098
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 3090
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3088
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3086
    .end local v2    # "j":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(IZI)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "enabled"    # Z
    .param p3, "chain"    # I

    .prologue
    .line 2913
    if-eqz p2, :cond_1

    .line 2914
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverUL(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2915
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v0

    .line 2914
    if-eqz v0, :cond_2

    .line 2916
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 2912
    :cond_1
    :goto_0
    return-void

    .line 2918
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_0
.end method

.method private updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "chain"    # I
    .param p3, "rules"    # Landroid/util/SparseIntArray;

    .prologue
    const/4 v8, 0x1

    .line 2873
    if-eqz p1, :cond_6

    .line 2876
    move-object v4, p3

    .line 2877
    .local v4, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 2878
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 2879
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "ui":I
    :goto_0
    if-ltz v2, :cond_3

    .line 2880
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2881
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 2882
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2883
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2884
    .local v0, "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2885
    .local v3, "uid":I
    invoke-virtual {p3, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2881
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2888
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_2
    if-ltz v1, :cond_2

    .line 2889
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2890
    .restart local v0    # "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2891
    .restart local v3    # "uid":I
    invoke-virtual {p3, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2888
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2879
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2894
    .end local v1    # "i":I
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_5

    .line 2895
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2896
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p3, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2894
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2899
    :cond_5
    invoke-direct {p0, p2, p3, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesAsync(ILandroid/util/SparseIntArray;I)V

    .line 2872
    .end local v1    # "i":I
    .end local v2    # "ui":I
    .end local v4    # "uidRules":Landroid/util/SparseIntArray;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_4
    return-void

    .line 2901
    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-direct {p0, p2, v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesAsync(ILandroid/util/SparseIntArray;I)V

    goto :goto_4
.end method

.method private updateScreenOn()V
    .locals 2

    .prologue
    .line 2803
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    if-eqz v0, :cond_1

    .line 2804
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    .line 2805
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2806
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2808
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2809
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenUL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2802
    :cond_1
    return-void

    .line 2808
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateUidStateUL(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    const-wide/32 v4, 0x200000

    .line 2727
    const-string/jumbo v1, "updateUidStateUL"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2729
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2730
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_4

    .line 2732
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2733
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 2734
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v1

    .line 2735
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v2

    .line 2734
    if-eq v1, v2, :cond_3

    .line 2736
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2737
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 2739
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_1

    .line 2740
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 2742
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v1, :cond_2

    .line 2743
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 2745
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 2747
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForegroundUL(I)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2750
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2726
    return-void

    .line 2749
    .end local v0    # "oldUidState":I
    :catchall_0
    move-exception v1

    .line 2750
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2749
    throw v1
.end method

.method private upgradeLegacyBackgroundDataUL()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1688
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "background_data"

    .line 1687
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1691
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_0

    .line 1692
    new-instance v0, Landroid/content/Intent;

    .line 1693
    const-string/jumbo v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    .line 1692
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1694
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1686
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1687
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method addDefaultRestrictBackgroundWhitelistUidsUL()Z
    .locals 6

    .prologue
    .line 522
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 523
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 525
    .local v2, "numberUsers":I
    const/4 v0, 0x0

    .line 526
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 527
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 528
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 526
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 530
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return v0
.end method

.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 3898
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3897
    return-void
.end method

.method addNetworkPolicyNL(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 2019
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 2020
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policies":[Landroid/net/NetworkPolicy;
    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 2021
    .restart local v0    # "policies":[Landroid/net/NetworkPolicy;
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies_internal([Landroid/net/NetworkPolicy;)V

    .line 2018
    return-void
.end method

.method public addRestrictBackgroundWhitelistedUid(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 2178
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2183
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 2184
    .local v2, "oldStatus":Z
    if-eqz v2, :cond_1

    .line 2185
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is already whitelisted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-exit v4

    .line 2186
    return-void

    .line 2188
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v1

    .line 2189
    .local v1, "needFirewallRules":Z
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "adding uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to restrict background whitelist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2191
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2192
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 2191
    if-eqz v3, :cond_3

    .line 2193
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2194
    const-string/jumbo v6, " from revoked restrict background whitelist"

    .line 2193
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2197
    :cond_3
    if-eqz v1, :cond_4

    .line 2199
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 2202
    :cond_4
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2203
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3

    .line 2205
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    const/4 v0, 0x0

    .local v0, "changed":I
    :goto_0
    monitor-exit v4

    .line 2207
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 2208
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2207
    const/16 v5, 0x9

    invoke-virtual {v3, v5, p1, v0, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2177
    return-void

    .line 2202
    .end local v0    # "changed":I
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v3

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2182
    .end local v1    # "needFirewallRules":Z
    .end local v2    # "oldStatus":Z
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2205
    .restart local v1    # "needFirewallRules":Z
    .restart local v2    # "oldStatus":Z
    :cond_6
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    .restart local v0    # "changed":I
    goto :goto_0
.end method

.method public addUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 1811
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1814
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1817
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1818
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1819
    .local v0, "oldPolicy":I
    or-int/2addr p2, v0

    .line 1820
    if-eq v0, p2, :cond_1

    .line 1821
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 1810
    return-void

    .line 1817
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 488
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 487
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .param p1, "notifManager"    # Landroid/app/INotificationManager;

    .prologue
    .line 492
    const-string/jumbo v0, "missing INotificationManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 491
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2517
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "android.permission.DUMP"

    const-string/jumbo v13, "NetworkPolicy"

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v11, "  "

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2521
    .local v3, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v2, Landroid/util/ArraySet;

    move-object/from16 v0, p3

    array-length v11, v0

    invoke-direct {v2, v11}, Landroid/util/ArraySet;-><init>(I)V

    .line 2522
    .local v2, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    move-object/from16 v0, p3

    array-length v12, v0

    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v1, p3, v11

    .line 2523
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2522
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2526
    .end local v1    # "arg":Ljava/lang/String;
    :cond_0
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2527
    :try_start_0
    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2528
    :try_start_1
    const-string/jumbo v11, "--unsnooze"

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2529
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 2530
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 2529
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2533
    :cond_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 2534
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 2535
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 2536
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 2537
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2539
    const-string/jumbo v11, "Cleared snooze timestamps"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v12

    .line 2540
    return-void

    .line 2543
    .end local v4    # "i":I
    :cond_2
    :try_start_3
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    if-eqz v11, :cond_3

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v12

    .line 2544
    return-void

    .line 2548
    :cond_3
    :try_start_5
    const-string/jumbo v11, "System ready: "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2549
    const-string/jumbo v11, "Restrict background: "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2550
    const-string/jumbo v11, "Restrict power: "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2551
    const-string/jumbo v11, "Device idle: "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2552
    const-string/jumbo v11, "Network policies:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2553
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2554
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v4, v11, :cond_4

    .line 2555
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2554
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2557
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2559
    const-string/jumbo v11, "Metered ifaces: "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2561
    const-string/jumbo v11, "Policy for UIDs:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2562
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2563
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    .line 2564
    .local v7, "size":I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_5

    .line 2565
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 2566
    .local v9, "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 2567
    .local v6, "policy":I
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2568
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2569
    const-string/jumbo v11, " policy="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2570
    const-class v11, Landroid/net/NetworkPolicyManager;

    const-string/jumbo v14, "POLICY_"

    invoke-static {v11, v14, v6}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2564
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2573
    .end local v6    # "policy":I
    .end local v9    # "uid":I
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2575
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2576
    if-lez v7, :cond_7

    .line 2577
    const-string/jumbo v11, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2578
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2579
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_6

    .line 2580
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2581
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2582
    const-string/jumbo v11, ": "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2583
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 2584
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2579
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2586
    :cond_6
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2589
    :cond_7
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2590
    if-lez v7, :cond_9

    .line 2591
    const-string/jumbo v11, "Power save whitelist app ids:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2592
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2593
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_8

    .line 2594
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2595
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2596
    const-string/jumbo v11, ": "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2597
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 2598
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2593
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2600
    :cond_8
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2603
    :cond_9
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2604
    if-lez v7, :cond_b

    .line 2605
    const-string/jumbo v11, "Restrict background whitelist uids:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2607
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v7, :cond_a

    .line 2608
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2609
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2610
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2607
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2612
    :cond_a
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2615
    :cond_b
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2616
    if-lez v7, :cond_d

    .line 2617
    const-string/jumbo v11, "Default restrict background whitelist uids:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2618
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2619
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v7, :cond_c

    .line 2620
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2621
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2622
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2619
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2624
    :cond_c
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2627
    :cond_d
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2628
    if-lez v7, :cond_f

    .line 2629
    const-string/jumbo v11, "Default restrict background whitelist uids revoked by users:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2630
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2631
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v7, :cond_e

    .line 2632
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2633
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2634
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2631
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 2636
    :cond_e
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2639
    :cond_f
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2640
    .local v5, "knownUids":Landroid/util/SparseBooleanArray;
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-static {v11, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2641
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v11, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2643
    const-string/jumbo v11, "Status for all known UIDs:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2644
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2645
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2646
    const/4 v4, 0x0

    :goto_9
    if-ge v4, v7, :cond_12

    .line 2647
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    .line 2648
    .restart local v9    # "uid":I
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2649
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2651
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v14, 0x10

    invoke-virtual {v11, v9, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 2652
    .local v8, "state":I
    const-string/jumbo v11, " state="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2653
    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2654
    const/4 v11, 0x2

    if-gt v8, v11, :cond_10

    .line 2655
    const-string/jumbo v11, " (fg)"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2661
    :goto_a
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v14, 0x0

    invoke-virtual {v11, v9, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 2662
    .local v10, "uidRules":I
    const-string/jumbo v11, " rules="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2663
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2664
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2646
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2657
    .end local v10    # "uidRules":I
    :cond_10
    const/4 v11, 0x4

    if-gt v8, v11, :cond_11

    .line 2658
    const-string/jumbo v11, " (fg svc)"

    .line 2657
    :goto_b
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_a

    .line 2527
    .end local v4    # "i":I
    .end local v5    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v7    # "size":I
    .end local v8    # "state":I
    .end local v9    # "uid":I
    :catchall_0
    move-exception v11

    :try_start_6
    monitor-exit v13

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2526
    :catchall_1
    move-exception v11

    monitor-exit v12

    throw v11

    .line 2658
    .restart local v4    # "i":I
    .restart local v5    # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v7    # "size":I
    .restart local v8    # "state":I
    .restart local v9    # "uid":I
    :cond_11
    :try_start_7
    const-string/jumbo v11, " (bg)"

    goto :goto_b

    .line 2666
    .end local v8    # "state":I
    .end local v9    # "uid":I
    :cond_12
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2668
    const-string/jumbo v11, "Status for just UIDs with rules:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2670
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    .line 2671
    const/4 v4, 0x0

    :goto_c
    if-ge v4, v7, :cond_13

    .line 2672
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 2673
    .restart local v9    # "uid":I
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2674
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2675
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v14, 0x0

    invoke-virtual {v11, v9, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 2676
    .restart local v10    # "uidRules":I
    const-string/jumbo v11, " rules="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2677
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2678
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2671
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2680
    .end local v9    # "uid":I
    .end local v10    # "uidRules":I
    :cond_13
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit v12

    .line 2516
    return-void
.end method

.method protected dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2480
    array-length v4, p3

    if-lt v4, v6, :cond_1

    .line 2481
    aget-object v0, p3, v5

    .line 2482
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v4, "log"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2484
    return v5

    .line 2486
    :cond_0
    array-length v4, p3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 2488
    const-string/jumbo v4, "Invalid argument! Get detail help as bellow:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->logOutNetworkPolicyManagerServiceLogTagHelp(Ljava/io/PrintWriter;)V

    .line 2490
    return v6

    .line 2494
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_1
    return v5

    .line 2497
    .restart local v0    # "cmd":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dynamicallyConfigNetworkPolicyManagerServiceLogTag, args.length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2498
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, p3

    if-ge v1, v4, :cond_3

    .line 2499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dynamicallyConfigNetworkPolicyManagerServiceLogTag, args["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2500
    aget-object v5, p3, v1

    .line 2499
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2503
    :cond_3
    aget-object v2, p3, v6

    .line 2504
    .local v2, "logCategoryTag":Ljava/lang/String;
    const-string/jumbo v4, "1"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    .line 2505
    .local v3, "on":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dynamicallyConfigNetworkPolicyManagerServiceLogTag, logCategoryTag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2506
    const-string/jumbo v5, ", on:"

    .line 2505
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2508
    const-string/jumbo v4, "netpolicy"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2509
    sput-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 2510
    sput-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 2512
    :cond_4
    return v6

    .line 2504
    .end local v3    # "on":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "on":Z
    goto :goto_1
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 10
    .param p1, "subscriber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3910
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v7, "NetworkPolicy"

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3912
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v6, "no_network_reset"

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3913
    return-void

    .line 3917
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 3918
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 3919
    .local v2, "template":Landroid/net/NetworkTemplate;
    array-length v6, v0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v0, v4

    .line 3920
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v2}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3921
    const-wide/16 v8, -0x1

    iput-wide v8, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3922
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 3923
    invoke-virtual {v1}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3919
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3926
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3929
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 3931
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v6, "no_control_apps"

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3933
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_3

    aget v3, v6, v4

    .line 3934
    .local v3, "uid":I
    invoke-virtual {p0, v3, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 3933
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3909
    .end local v3    # "uid":I
    :cond_3
    return-void
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2026
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2040
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2041
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 2042
    .local v3, "size":I
    new-array v2, v3, [Landroid/net/NetworkPolicy;

    .line 2043
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2044
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    aput-object v4, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2043
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2031
    .end local v1    # "i":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 2032
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x33

    invoke-virtual {v4, v6, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 2036
    new-array v4, v7, [Landroid/net/NetworkPolicy;

    return-object v4

    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "i":I
    .restart local v2    # "policies":[Landroid/net/NetworkPolicy;
    .restart local v3    # "size":I
    :cond_1
    monitor-exit v5

    .line 2046
    return-object v2

    .line 2040
    .end local v1    # "i":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 2402
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2408
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2410
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2408
    return-object v2

    .line 2409
    :catchall_0
    move-exception v2

    .line 2410
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2409
    throw v2
.end method

.method public getRestrictBackground()Z
    .locals 3

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2308
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 2307
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getRestrictBackgroundByCaller()I
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x1

    .line 2278
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.ACCESS_NETWORK_STATE"

    const-string/jumbo v7, "NetworkPolicy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2281
    .local v1, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2283
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 2286
    .local v2, "token":J
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2288
    .local v0, "policy":I
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2290
    if-ne v0, v8, :cond_0

    monitor-exit v5

    .line 2292
    return v4

    .line 2287
    .end local v0    # "policy":I
    :catchall_0
    move-exception v4

    .line 2288
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2287
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2281
    .end local v2    # "token":J
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2294
    .restart local v0    # "policy":I
    .restart local v2    # "token":J
    :cond_0
    :try_start_4
    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v6, :cond_1

    monitor-exit v5

    .line 2295
    return v8

    .line 2297
    :cond_1
    :try_start_5
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v6

    if-eqz v6, :cond_2

    .line 2298
    const/4 v4, 0x2

    :cond_2
    monitor-exit v5

    .line 2297
    return v4
.end method

.method public getRestrictBackgroundWhitelistedUids()[I
    .locals 7

    .prologue
    .line 2261
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2263
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2264
    .local v1, "size":I
    new-array v2, v1, [I

    .line 2265
    .local v2, "whitelist":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2266
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0

    .line 2265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2268
    :cond_0
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v3, :cond_1

    .line 2269
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRestrictBackgroundWhitelistedUids(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2270
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 2269
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    .line 2272
    return-object v2

    .line 2262
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "whitelist":[I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1895
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1894
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 7
    .param p1, "policy"    # I

    .prologue
    .line 1901
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 1904
    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1905
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1906
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 1907
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1908
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    .line 1909
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1905
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "uid":I
    .end local v2    # "uidPolicy":I
    :cond_1
    monitor-exit v5

    .line 1913
    return-object v3

    .line 1904
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    const/4 v4, 0x0

    .line 2445
    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-nez v3, :cond_0

    .line 2446
    return v4

    .line 2449
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 2452
    .local v0, "ident":Landroid/net/NetworkIdentity;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2453
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkNL(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3

    .line 2456
    if-eqz v1, :cond_1

    .line 2457
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    return v3

    .line 2452
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 2459
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 2460
    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 2461
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 2463
    :cond_4
    return v4
.end method

.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2697
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundUL(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 2696
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected logOutNetworkPolicyManagerServiceLogTagHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2469
    const-string/jumbo v0, "********************** Help begin:**********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2470
    const-string/jumbo v0, "1 All NetworkPolicyManagerService log"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2471
    const-string/jumbo v0, "cmd: dumpsys power log all 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2472
    const-string/jumbo v0, "2 All needed log when oem log is on"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2473
    const-string/jumbo v0, "cmd: dumpsys networkpolicy log switch 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2474
    const-string/jumbo v0, "----------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2475
    const-string/jumbo v0, "********************** Help end.  **********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2468
    return-void
.end method

.method maybeRefreshTrustedTime()V
    .locals 4

    .prologue
    .line 3859
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3860
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 3858
    :cond_0
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2688
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;-><init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 2687
    return-void
.end method

.method public onTetheringChanged(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "tethering"    # Z

    .prologue
    .line 2119
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTetherStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2121
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2122
    const-string/jumbo v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tethering on ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "); disable Data Saver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 2117
    return-void

    .line 2120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .prologue
    .line 2086
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2087
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v0

    .line 2088
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2089
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2091
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 2092
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    .line 2093
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to find policy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2089
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v5

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2088
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2096
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2104
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unexpected type"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2098
    :pswitch_0
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 2107
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 2108
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 2109
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 2110
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 2111
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v4

    .line 2085
    return-void

    .line 2101
    :pswitch_1
    :try_start_5
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2096
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method purgePowerSaveTempWhitelistUL()V
    .locals 3

    .prologue
    .line 595
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 596
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 597
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 596
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 594
    :cond_1
    return-void
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1984
    return-void
.end method

.method public removeRestrictBackgroundWhitelistedUid(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2213
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2216
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidUL(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "changed":Z
    monitor-exit v3

    .line 2218
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2219
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2218
    const/16 v4, 0x9

    invoke-virtual {v3, v4, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2212
    return-void

    .line 2215
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .restart local v0    # "changed":Z
    :cond_0
    move v1, v2

    .line 2218
    goto :goto_0
.end method

.method public removeUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 1828
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1831
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1834
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1835
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1836
    .local v0, "oldPolicy":I
    not-int v1, p2

    and-int p2, v0, v1

    .line 1837
    if-eq v0, p2, :cond_1

    .line 1838
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 1827
    return-void

    .line 1834
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method removeUserStateUL(IZ)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "writePolicy"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1922
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "NetworkPolicy"

    const-string/jumbo v7, "removeUserStateUL()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    :cond_0
    const/4 v0, 0x0

    .line 1926
    .local v0, "changed":Z
    new-array v4, v5, [I

    .line 1927
    .local v4, "wlUids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1928
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1929
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 1930
    invoke-static {v4, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    .line 1927
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1934
    .end local v2    # "uid":I
    :cond_2
    array-length v6, v4

    if-lez v6, :cond_4

    .line 1935
    array-length v7, v4

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_3

    aget v2, v4, v6

    .line 1936
    .restart local v2    # "uid":I
    invoke-direct {p0, v2, v5, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidUL(IZZ)Z

    .line 1935
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1938
    .end local v2    # "uid":I
    :cond_3
    const/4 v0, 0x1

    .line 1942
    :cond_4
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_2
    if-ltz v1, :cond_6

    .line 1943
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1944
    .restart local v2    # "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_5

    .line 1945
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 1946
    const/4 v0, 0x1

    .line 1942
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1951
    .end local v2    # "uid":I
    :cond_6
    new-array v3, v5, [I

    .line 1952
    .local v3, "uids":[I
    const/4 v1, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 1953
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 1954
    .restart local v2    # "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_7

    .line 1955
    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 1952
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1959
    .end local v2    # "uid":I
    :cond_8
    array-length v6, v3

    if-lez v6, :cond_a

    .line 1960
    array-length v6, v3

    :goto_4
    if-ge v5, v6, :cond_9

    aget v2, v3, v5

    .line 1961
    .restart local v2    # "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1960
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1963
    .end local v2    # "uid":I
    :cond_9
    const/4 v0, 0x1

    .line 1965
    :cond_a
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1966
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 1967
    if-eqz p2, :cond_b

    if-eqz v0, :cond_b

    .line 1968
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    monitor-exit v6

    .line 1971
    return v0

    .line 1965
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setConnectivityListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    if-eqz v0, :cond_0

    .line 1978
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Connectivity listener already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1980
    :cond_0
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    .line 1975
    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const-wide/32 v6, 0x200000

    .line 2322
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    const-string/jumbo v0, "setDeviceIdleMode"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2324
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2325
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2326
    :cond_0
    const-string/jumbo v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceIdleMode begin, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2329
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, p1, :cond_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2360
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2330
    return-void

    .line 2332
    :cond_1
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 2333
    const-string/jumbo v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceIdleMode enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v0, :cond_3

    .line 2338
    const-string/jumbo v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceIdleMode start mDozenChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    if-eqz v0, :cond_2

    .line 2340
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    if-nez v0, :cond_2

    .line 2341
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    .line 2342
    const-string/jumbo v0, "NetworkPolicy"

    const-string/jumbo v2, "setDeviceIdleMode start "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceModeTime:J

    .line 2345
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/net/NetworkPolicyManagerService;->screenOffCheckDelayTime:J

    add-long/2addr v2, v4

    .line 2347
    sget-object v4, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    .line 2345
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 2351
    :cond_2
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    monitor-exit v1

    .line 2354
    if-eqz p1, :cond_5

    .line 2355
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2360
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2362
    const-string/jumbo v0, "NetworkPolicy"

    const-string/jumbo v1, "setDeviceIdleMode end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2364
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2321
    :cond_4
    return-void

    .line 2328
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2359
    :catchall_1
    move-exception v0

    .line 2360
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2359
    throw v0

    .line 2357
    :cond_5
    :try_start_6
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 5
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 1999
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2003
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2004
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2005
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2006
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 2007
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 2008
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 2009
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 2010
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2014
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1998
    return-void

    .line 2005
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v4

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2004
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2013
    :catchall_2
    move-exception v2

    .line 2014
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2013
    throw v2
.end method

.method public setRestrictBackground(Z)V
    .locals 6
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2130
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2133
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2134
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2135
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-ne p1, v2, :cond_0

    .line 2137
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRestrictBackground: already "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2138
    return-void

    .line 2140
    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2147
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x6

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2129
    return-void

    .line 2134
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v4

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2143
    :catchall_1
    move-exception v2

    .line 2144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2143
    throw v2

    :cond_1
    move v2, v3

    .line 2147
    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 1791
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1794
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cannot apply policy to UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1796
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1797
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 1799
    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1800
    .local v0, "oldPolicy":I
    if-eq v0, p2, :cond_1

    .line 1801
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1804
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 1790
    return-void

    .line 1803
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    .line 1804
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1803
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1796
    .end local v2    # "token":J
    :catchall_1
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2075
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2079
    .local v0, "token":J
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2081
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2074
    return-void

    .line 2080
    :catchall_0
    move-exception v2

    .line 2081
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2080
    throw v2
.end method

.method public systemReady()V
    .locals 24

    .prologue
    .line 604
    const-string/jumbo v19, "systemReady"

    const-wide/32 v20, 0x200000

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 606
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v19

    if-nez v19, :cond_0

    .line 607
    const-string/jumbo v19, "NetworkPolicy"

    const-string/jumbo v20, "bandwidth controls disabled, unable to enforce policy"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 717
    const-wide/32 v20, 0x200000

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 608
    return-void

    .line 611
    :cond_0
    :try_start_1
    const-class v19, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static/range {v19 .. v19}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 614
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 615
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    .line 616
    const-class v19, Landroid/os/PowerManagerInternal;

    invoke-static/range {v19 .. v19}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManagerInternal;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v19, v0

    .line 618
    new-instance v22, Lcom/android/server/net/NetworkPolicyManagerService$17;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 617
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 632
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 635
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 641
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 642
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 648
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    move-object/from16 v20, v0

    .line 649
    const/16 v21, 0x3

    .line 648
    invoke-interface/range {v19 .. v21}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;I)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 658
    :goto_0
    :try_start_7
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 659
    .local v12, "screenFilter":Landroid/content/IntentFilter;
    const-string/jumbo v19, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 663
    new-instance v16, Landroid/content/IntentFilter;

    .line 664
    const-string/jumbo v19, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 663
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 665
    .local v16, "whitelistFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object/from16 v3, v22

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 668
    const-class v19, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static/range {v19 .. v19}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/DeviceIdleController$LocalService;

    .line 669
    .local v8, "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/server/DeviceIdleController$LocalService;->setNetworkPolicyTempWhitelistCallback(Ljava/lang/Runnable;)V

    .line 672
    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v19, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 673
    .local v7, "connFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string/jumbo v21, "android.permission.CONNECTIVITY_INTERNAL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 676
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 677
    .local v11, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    const-string/jumbo v19, "package"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    new-instance v21, Landroid/content/IntentFilter;

    const-string/jumbo v22, "android.intent.action.UID_REMOVED"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 682
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 686
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 687
    .local v15, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v19, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    const-string/jumbo v19, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 692
    new-instance v14, Landroid/content/IntentFilter;

    const-string/jumbo v19, "com.android.server.action.NETWORK_STATS_UPDATED"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 693
    .local v14, "statsFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string/jumbo v21, "android.permission.READ_NETWORK_USAGE_HISTORY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    .line 693
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 697
    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v19, "com.android.server.net.action.ALLOW_BACKGROUND"

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 698
    .local v6, "allowFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string/jumbo v21, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 701
    new-instance v13, Landroid/content/IntentFilter;

    const-string/jumbo v19, "com.android.server.net.action.SNOOZE_WARNING"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 702
    .local v13, "snoozeWarningFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    .line 703
    const-string/jumbo v21, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    .line 702
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 707
    new-instance v17, Landroid/content/IntentFilter;

    const-string/jumbo v19, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 708
    .local v17, "wifiConfigFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 711
    new-instance v18, Landroid/content/IntentFilter;

    .line 712
    const-string/jumbo v19, "android.net.wifi.STATE_CHANGE"

    .line 711
    invoke-direct/range {v18 .. v19}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 713
    .local v18, "wifiStateFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 717
    const-wide/32 v20, 0x200000

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const-string/jumbo v20, "oem.dozeNetworkChange.control"

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    sput-boolean v19, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "alarm"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/AlarmManager;

    sput-object v19, Lcom/android/server/net/NetworkPolicyManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 723
    new-instance v19, Landroid/content/Intent;

    sget-object v20, Lcom/android/server/net/NetworkPolicyManagerService;->SCREEN_DOZE_NETWORKPOLICY:Ljava/lang/String;

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v19, Lcom/android/server/net/NetworkPolicyManagerService;->mDozeNetworkIntent:Landroid/content/Intent;

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 725
    sget-object v20, Lcom/android/server/net/NetworkPolicyManagerService;->mDozeNetworkIntent:Landroid/content/Intent;

    .line 724
    const/16 v21, 0x0

    .line 725
    const/16 v22, 0x0

    .line 724
    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    sput-object v19, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    .line 726
    new-instance v9, Landroid/content/IntentFilter;

    sget-object v19, Lcom/android/server/net/NetworkPolicyManagerService;->SCREEN_DOZE_NETWORKPOLICY:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 727
    .local v9, "dozeNetworkPolicyFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozeChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 603
    return-void

    .line 614
    .end local v6    # "allowFilter":Landroid/content/IntentFilter;
    .end local v7    # "connFilter":Landroid/content/IntentFilter;
    .end local v8    # "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v9    # "dozeNetworkPolicyFilter":Landroid/content/IntentFilter;
    .end local v11    # "packageFilter":Landroid/content/IntentFilter;
    .end local v12    # "screenFilter":Landroid/content/IntentFilter;
    .end local v13    # "snoozeWarningFilter":Landroid/content/IntentFilter;
    .end local v14    # "statsFilter":Landroid/content/IntentFilter;
    .end local v15    # "userFilter":Landroid/content/IntentFilter;
    .end local v16    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v17    # "wifiConfigFilter":Landroid/content/IntentFilter;
    .end local v18    # "wifiStateFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v19

    :try_start_8
    monitor-exit v21

    throw v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 613
    :catchall_1
    move-exception v19

    :try_start_9
    monitor-exit v20

    throw v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 716
    :catchall_2
    move-exception v19

    .line 717
    const-wide/32 v20, 0x200000

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 716
    throw v19

    .line 651
    :catch_0
    move-exception v10

    .local v10, "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1991
    return-void
.end method

.method updateNetworkEnabledNL()V
    .locals 18

    .prologue
    .line 1267
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "updateNetworkEnabledNL()"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v6

    .line 1273
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_5

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkPolicy;

    .line 1276
    .local v13, "policy":Landroid/net/NetworkPolicy;
    iget-wide v2, v13, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v16, -0x1

    cmp-long v2, v2, v16

    if-eqz v2, :cond_1

    invoke-virtual {v13}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1281
    invoke-static {v6, v7, v13}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1282
    .local v4, "start":J
    move-wide v8, v6

    .line 1283
    .local v8, "end":J
    iget-object v3, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v14

    .line 1286
    .local v14, "totalBytes":J
    invoke-virtual {v13, v14, v15}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1287
    iget-wide v2, v13, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const/4 v12, 0x1

    .line 1288
    .local v12, "overLimitWithoutSnooze":Z
    :goto_1
    if-eqz v12, :cond_4

    const/4 v11, 0x0

    .line 1290
    .local v11, "networkEnabled":Z
    :goto_2
    iget-object v2, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    .line 1273
    .end local v4    # "start":J
    .end local v8    # "end":J
    .end local v11    # "networkEnabled":Z
    .end local v12    # "overLimitWithoutSnooze":Z
    .end local v14    # "totalBytes":J
    :goto_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 1277
    :cond_1
    iget-object v2, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_3

    .line 1287
    .restart local v4    # "start":J
    .restart local v8    # "end":J
    .restart local v14    # "totalBytes":J
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 1286
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 1288
    .restart local v12    # "overLimitWithoutSnooze":Z
    :cond_4
    const/4 v11, 0x1

    .restart local v11    # "networkEnabled":Z
    goto :goto_2

    .line 1266
    .end local v4    # "start":J
    .end local v8    # "end":J
    .end local v11    # "networkEnabled":Z
    .end local v12    # "overLimitWithoutSnooze":Z
    .end local v13    # "policy":Landroid/net/NetworkPolicy;
    .end local v14    # "totalBytes":J
    :cond_5
    return-void
.end method

.method updateNetworkRulesNL()V
    .locals 44

    .prologue
    .line 1327
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "NetworkPolicy"

    const-string/jumbo v7, "updateNetworkRulesNL()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v37

    .line 1339
    .local v37, "states":[Landroid/net/NetworkState;
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    array-length v6, v0

    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1340
    .local v13, "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    new-instance v14, Landroid/util/ArraySet;

    move-object/from16 v0, v37

    array-length v6, v0

    invoke-direct {v14, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 1341
    .local v14, "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object/from16 v0, v37

    array-length v7, v0

    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v36, v37, v6

    .line 1342
    .local v36, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v40, v0

    if-eqz v40, :cond_4

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v40

    if-eqz v40, :cond_4

    .line 1343
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1

    .line 1344
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v40, v0

    .line 1345
    const/16 v41, 0x0

    .line 1344
    invoke-virtual/range {v40 .. v41}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v40

    if-eqz v40, :cond_1

    .line 1346
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v40, v0

    .line 1347
    const/16 v41, 0xc

    .line 1346
    invoke-virtual/range {v40 .. v41}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v40

    .line 1342
    if-eqz v40, :cond_4

    .line 1348
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v19

    .line 1350
    .local v19, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    .line 1351
    .local v12, "baseIface":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 1352
    move-object/from16 v0, v19

    invoke-static {v12, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    :cond_2
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v35

    .line 1358
    .local v35, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "stackedLink$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_4

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/net/LinkProperties;

    .line 1359
    .local v33, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v33 .. v33}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v32

    .line 1360
    .local v32, "stackedIface":Ljava/lang/String;
    if-eqz v32, :cond_3

    .line 1361
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1332
    .end local v12    # "baseIface":Ljava/lang/String;
    .end local v13    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .end local v14    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "ident":Landroid/net/NetworkIdentity;
    .end local v32    # "stackedIface":Ljava/lang/String;
    .end local v33    # "stackedLink":Landroid/net/LinkProperties;
    .end local v34    # "stackedLink$iterator":Ljava/util/Iterator;
    .end local v35    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v36    # "state":Landroid/net/NetworkState;
    .end local v37    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v15

    .line 1334
    .local v15, "e":Landroid/os/RemoteException;
    return-void

    .line 1341
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v13    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .restart local v14    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "state":Landroid/net/NetworkState;
    .restart local v37    # "states":[Landroid/net/NetworkState;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1368
    .end local v36    # "state":Landroid/net/NetworkState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 1369
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .line 1370
    .local v22, "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v18, v6, -0x1

    .local v18, "i":I
    :goto_2
    if-ltz v18, :cond_9

    .line 1371
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/net/NetworkPolicy;

    .line 1373
    .local v29, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1374
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v24, v6, -0x1

    .local v24, "j":I
    :goto_3
    if-ltz v24, :cond_7

    .line 1375
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .line 1376
    .local v20, "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/net/NetworkIdentity;

    invoke-virtual {v7, v6}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1377
    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    :cond_6
    add-int/lit8 v24, v24, -0x1

    goto :goto_3

    .line 1381
    .end local v20    # "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    :cond_7
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 1382
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    .line 1383
    .local v23, "ifaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    .end local v23    # "ifaces":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    .line 1387
    .end local v24    # "j":I
    .end local v29    # "policy":Landroid/net/NetworkPolicy;
    :cond_9
    const-wide v26, 0x7fffffffffffffffL

    .line 1388
    .local v26, "lowestRule":J
    new-instance v28, Landroid/util/ArraySet;

    move-object/from16 v0, v37

    array-length v6, v0

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 1392
    .local v28, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v10

    .line 1393
    .local v10, "currentTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v18, v6, -0x1

    :goto_4
    if-ltz v18, :cond_15

    .line 1394
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/net/NetworkPolicy;

    .line 1395
    .restart local v29    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    .line 1399
    .restart local v23    # "ifaces":[Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1400
    move-object/from16 v0, v29

    invoke-static {v10, v11, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 1401
    .local v8, "start":J
    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v38

    .line 1407
    .local v38, "totalBytes":J
    :goto_5
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v6, :cond_a

    .line 1408
    const-string/jumbo v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "applying policy "

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v40, " to ifaces "

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_a
    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v40, -0x1

    cmp-long v6, v6, v40

    if-eqz v6, :cond_e

    const/16 v17, 0x1

    .line 1412
    .local v17, "hasWarning":Z
    :goto_6
    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v40, -0x1

    cmp-long v6, v6, v40

    if-eqz v6, :cond_f

    const/16 v16, 0x1

    .line 1413
    .local v16, "hasLimit":Z
    :goto_7
    if-nez v16, :cond_b

    move-object/from16 v0, v29

    iget-boolean v6, v0, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v6, :cond_12

    .line 1415
    :cond_b
    if-nez v16, :cond_10

    .line 1418
    const-wide v30, 0x7fffffffffffffffL

    .line 1430
    .local v30, "quotaBytes":J
    :goto_8
    move-object/from16 v0, v23

    array-length v6, v0

    const/4 v7, 0x1

    if-le v6, v7, :cond_c

    .line 1432
    const-string/jumbo v6, "NetworkPolicy"

    const-string/jumbo v7, "shared quota unsupported; generating rule for each iface"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_c
    const/4 v6, 0x0

    move-object/from16 v0, v23

    array-length v7, v0

    :goto_9
    if-ge v6, v7, :cond_12

    aget-object v21, v23, v6

    .line 1437
    .local v21, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v40, v0

    .line 1438
    const/16 v41, 0x20

    shr-long v42, v30, v41

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v41, v0

    const-wide/16 v42, -0x1

    and-long v42, v42, v30

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v42, v0

    .line 1437
    const/16 v43, 0xa

    move-object/from16 v0, v40

    move/from16 v1, v43

    move/from16 v2, v41

    move/from16 v3, v42

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/os/Message;->sendToTarget()V

    .line 1440
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1435
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1403
    .end local v8    # "start":J
    .end local v16    # "hasLimit":Z
    .end local v17    # "hasWarning":Z
    .end local v21    # "iface":Ljava/lang/String;
    .end local v30    # "quotaBytes":J
    .end local v38    # "totalBytes":J
    :cond_d
    const-wide v8, 0x7fffffffffffffffL

    .line 1404
    .restart local v8    # "start":J
    const-wide/16 v38, 0x0

    .restart local v38    # "totalBytes":J
    goto/16 :goto_5

    .line 1411
    :cond_e
    const/16 v17, 0x0

    .restart local v17    # "hasWarning":Z
    goto :goto_6

    .line 1412
    :cond_f
    const/16 v16, 0x0

    goto :goto_7

    .line 1419
    .restart local v16    # "hasLimit":Z
    :cond_10
    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_11

    .line 1422
    const-wide v30, 0x7fffffffffffffffL

    .restart local v30    # "quotaBytes":J
    goto :goto_8

    .line 1427
    .end local v30    # "quotaBytes":J
    :cond_11
    const-wide/16 v6, 0x1

    move-object/from16 v0, v29

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v40, v0

    sub-long v40, v40, v38

    move-wide/from16 v0, v40

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v30

    .restart local v30    # "quotaBytes":J
    goto :goto_8

    .line 1445
    .end local v30    # "quotaBytes":J
    :cond_12
    if-eqz v17, :cond_13

    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v6, v6, v26

    if-gez v6, :cond_13

    .line 1446
    move-object/from16 v0, v29

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v26, v0

    .line 1448
    :cond_13
    if-eqz v16, :cond_14

    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v6, v6, v26

    if-gez v6, :cond_14

    .line 1449
    move-object/from16 v0, v29

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v26, v0

    .line 1393
    :cond_14
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_4

    .line 1453
    .end local v8    # "start":J
    .end local v16    # "hasLimit":Z
    .end local v17    # "hasWarning":Z
    .end local v23    # "ifaces":[Ljava/lang/String;
    .end local v29    # "policy":Landroid/net/NetworkPolicy;
    .end local v38    # "totalBytes":J
    :cond_15
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v18, v6, -0x1

    :goto_a
    if-ltz v18, :cond_16

    .line 1454
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1456
    .restart local v21    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xa

    .line 1457
    const v40, 0x7fffffff

    const/16 v41, -0x1

    .line 1456
    move/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v21

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1459
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1453
    add-int/lit8 v18, v18, -0x1

    goto :goto_a

    .line 1462
    .end local v21    # "iface":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v40, 0x7

    move/from16 v0, v40

    invoke-virtual {v6, v0, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1465
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v18, v6, -0x1

    :goto_b
    if-ltz v18, :cond_18

    .line 1466
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1467
    .restart local v21    # "iface":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 1468
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    move-object/from16 v0, v21

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1465
    :cond_17
    add-int/lit8 v18, v18, -0x1

    goto :goto_b

    .line 1472
    .end local v21    # "iface":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 1474
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/String;

    .line 1475
    .local v25, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1326
    return-void
.end method

.method updateNotificationsNL()V
    .locals 14

    .prologue
    .line 946
    new-instance v6, Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v6, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 947
    .local v6, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 953
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v4

    .line 954
    .local v4, "currentTime":J
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_4

    .line 955
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 957
    .local v10, "policy":Landroid/net/NetworkPolicy;
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 954
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 958
    :cond_1
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    invoke-static {v4, v5, v10}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 961
    .local v2, "start":J
    move-wide v8, v4

    .line 962
    .local v8, "end":J
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v12

    .line 964
    .local v12, "totalBytes":J
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 965
    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 966
    const/4 v0, 0x3

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeEnqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_1

    .line 968
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeNotifyOverLimitLocked(Landroid/net/NetworkPolicy;IJ)V

    .line 969
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitNL(Landroid/net/NetworkTemplate;)V

    goto :goto_1

    .line 973
    :cond_3
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V

    .line 975
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 976
    const/4 v0, 0x1

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeNotifyOverLimitLocked(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_1

    .line 982
    .end local v2    # "start":J
    .end local v8    # "end":J
    .end local v10    # "policy":Landroid/net/NetworkPolicy;
    .end local v12    # "totalBytes":J
    :cond_4
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    :goto_2
    if-ltz v7, :cond_6

    .line 983
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 984
    .local v11, "tag":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 985
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    .line 982
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 942
    .end local v11    # "tag":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method updatePowerSaveTempWhitelistUL()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 576
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 577
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 578
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v6}, Landroid/os/IDeviceIdleController;->getAppIdTempWhitelist()[I

    move-result-object v4

    .line 582
    .local v4, "whitelist":[I
    if-eqz v4, :cond_1

    .line 583
    array-length v6, v4

    :goto_1
    if-ge v5, v6, :cond_1

    aget v3, v4, v5

    .line 584
    .local v3, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 587
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "uid":I
    .end local v4    # "whitelist":[I
    :catch_0
    move-exception v1

    .line 573
    :cond_1
    return-void
.end method

.method updatePowerSaveWhitelistUL()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 497
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v2

    .line 498
    .local v2, "whitelist":[I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 499
    if-eqz v2, :cond_0

    .line 500
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget v1, v2, v4

    .line 501
    .local v1, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 500
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 504
    .end local v1    # "uid":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v2

    .line 505
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 506
    if-eqz v2, :cond_1

    .line 507
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget v1, v2, v3

    .line 508
    .restart local v1    # "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 511
    .end local v1    # "uid":I
    .end local v2    # "whitelist":[I
    :catch_0
    move-exception v0

    .line 495
    :cond_1
    return-void
.end method

.method updateRuleForAppIdleUL(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x2

    .line 2954
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2955
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2956
    .local v0, "appId":I
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v1, :cond_1

    .line 2957
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUidFirewallRule mPowerSaveTempWhitelistAppIds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " idle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  isUidForegroundOnRestrictPowerUL(uid) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2959
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2962
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v4, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 2953
    :goto_0
    return-void

    .line 2960
    :cond_3
    invoke-direct {p0, v4, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_0
.end method

.method updateRuleForDeviceIdleUL(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2866
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 2865
    return-void
.end method

.method updateRuleForRestrictPowerUL(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2852
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 2851
    return-void
.end method

.method updateRulesForAppIdleParoleUL()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2971
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v3

    .line 2972
    .local v3, "paroled":Z
    if-eqz v3, :cond_1

    .line 2973
    .local v0, "enableChain":Z
    :goto_0
    const/4 v6, 0x2

    invoke-direct {p0, v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 2975
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 2976
    .local v4, "ruleCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 2977
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2978
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 2979
    .local v2, "oldRules":I
    if-eqz v0, :cond_2

    .line 2984
    and-int/lit8 v2, v2, 0xf

    .line 2989
    :cond_0
    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    .line 2976
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2972
    .end local v0    # "enableChain":Z
    .end local v1    # "i":I
    .end local v2    # "oldRules":I
    .end local v4    # "ruleCount":I
    .end local v5    # "uid":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2987
    .restart local v0    # "enableChain":Z
    .restart local v1    # "i":I
    .restart local v2    # "oldRules":I
    .restart local v4    # "ruleCount":I
    .restart local v5    # "uid":I
    :cond_2
    and-int/lit16 v6, v2, 0xf0

    if-nez v6, :cond_0

    goto :goto_2

    .line 2970
    .end local v2    # "oldRules":I
    .end local v5    # "uid":I
    :cond_3
    return-void
.end method

.method updateRulesForAppIdleUL()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x200000

    const/4 v7, 0x0

    .line 2924
    const-string/jumbo v6, "updateRulesForAppIdleUL"

    invoke-static {v12, v13, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2926
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 2927
    .local v3, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 2930
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 2931
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "ui":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2932
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2933
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v0

    .line 2934
    .local v0, "idleUids":[I
    array-length v8, v0

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_1

    aget v2, v0, v6

    .line 2935
    .local v2, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2939
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2940
    const/4 v9, 0x2

    invoke-virtual {v3, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2934
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2931
    .end local v2    # "uid":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2945
    .end local v0    # "idleUids":[I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v6, :cond_3

    .line 2946
    const-string/jumbo v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setUidFirewallRules FIREWALL_CHAIN_STANDBY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :cond_3
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {p0, v6, v3, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesAsync(ILandroid/util/SparseIntArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2949
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2923
    return-void

    .line 2948
    .end local v1    # "ui":I
    .end local v3    # "uidRules":Landroid/util/SparseIntArray;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    .line 2949
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2948
    throw v6
.end method

.method updateRulesForDeviceIdleUL()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x200000

    .line 2856
    const-string/jumbo v0, "updateRulesForDeviceIdleUL"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2858
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 2859
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 2858
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2861
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2855
    return-void

    .line 2860
    :catchall_0
    move-exception v0

    .line 2861
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2860
    throw v0
.end method

.method updateRulesForPowerSaveUL()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x200000

    .line 2842
    const-string/jumbo v0, "updateRulesForPowerSaveUL"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2844
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 2845
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 2844
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2847
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2841
    return-void

    .line 2846
    :catchall_0
    move-exception v0

    .line 2847
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2846
    throw v0
.end method

.method writePolicyAL()V
    .locals 14

    .prologue
    .line 1699
    sget-boolean v11, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "NetworkPolicy"

    const-string/jumbo v12, "writePolicyAL()"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_0
    const/4 v1, 0x0

    .line 1703
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1705
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1706
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1707
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1709
    const-string/jumbo v11, "policy-list"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1710
    const-string/jumbo v11, "version"

    const/16 v12, 0xa

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1711
    const-string/jumbo v11, "restrictBackground"

    iget-boolean v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1714
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v2, v11, :cond_5

    .line 1715
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    .line 1716
    .local v6, "policy":Landroid/net/NetworkPolicy;
    iget-object v9, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1717
    .local v9, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1714
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1719
    :cond_1
    const-string/jumbo v11, "network-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1720
    const-string/jumbo v11, "networkTemplate"

    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v12

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1721
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    .line 1722
    .local v8, "subscriberId":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 1723
    const-string/jumbo v11, "subscriberId"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1725
    :cond_2
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    .line 1726
    .local v3, "networkId":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1727
    const-string/jumbo v11, "networkId"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1729
    :cond_3
    const-string/jumbo v11, "cycleDay"

    iget v12, v6, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1730
    const-string/jumbo v11, "cycleTimezone"

    iget-object v12, v6, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v4, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1731
    const-string/jumbo v11, "warningBytes"

    iget-wide v12, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1732
    const-string/jumbo v11, "limitBytes"

    iget-wide v12, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1733
    const-string/jumbo v11, "lastWarningSnooze"

    iget-wide v12, v6, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1734
    const-string/jumbo v11, "lastLimitSnooze"

    iget-wide v12, v6, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1735
    const-string/jumbo v11, "metered"

    iget-boolean v12, v6, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1736
    const-string/jumbo v11, "inferred"

    iget-boolean v12, v6, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1737
    const-string/jumbo v11, "network-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1782
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "i":I
    .end local v3    # "networkId":Ljava/lang/String;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "policy":Landroid/net/NetworkPolicy;
    .end local v8    # "subscriberId":Ljava/lang/String;
    .end local v9    # "template":Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v0

    .line 1783
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 1784
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v11, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1698
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_2
    return-void

    .line 1741
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "i":I
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_5
    const/4 v2, 0x0

    :goto_3
    :try_start_1
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v2, v11, :cond_7

    .line 1742
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 1743
    .local v10, "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 1746
    .local v5, "policy":I
    if-nez v5, :cond_6

    .line 1741
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1748
    :cond_6
    const-string/jumbo v11, "uid-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1749
    const-string/jumbo v11, "uid"

    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1750
    const-string/jumbo v11, "policy"

    invoke-static {v4, v11, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1751
    const-string/jumbo v11, "uid-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    .line 1754
    .end local v5    # "policy":I
    .end local v10    # "uid":I
    :cond_7
    const-string/jumbo v11, "policy-list"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1757
    const-string/jumbo v11, "whitelist"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1760
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 1761
    .local v7, "size":I
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v7, :cond_8

    .line 1762
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .line 1763
    .restart local v10    # "uid":I
    const-string/jumbo v11, "restrict-background"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1764
    const-string/jumbo v11, "uid"

    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1765
    const-string/jumbo v11, "restrict-background"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1761
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1769
    .end local v10    # "uid":I
    :cond_8
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 1770
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v7, :cond_9

    .line 1771
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .line 1772
    .restart local v10    # "uid":I
    const-string/jumbo v11, "revoked-restrict-background"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1773
    const-string/jumbo v11, "uid"

    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1774
    const-string/jumbo v11, "revoked-restrict-background"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1770
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1777
    .end local v10    # "uid":I
    :cond_9
    const-string/jumbo v11, "whitelist"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1779
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1781
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v11, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method



.method private flymeChangeNotification(Landroid/app/Notification$Builder;Landroid/net/NetworkPolicy;J)V
    .locals 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "policy"    # Landroid/net/NetworkPolicy;
    .param p3, "totalBytes"    # J

    .prologue
    iget-object v1, p2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;J)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    sget v1, Lcom/flyme/internal/R$drawable;->mz_stat_sys_traffic_warn:I

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    sget v2, Lcom/flyme/internal/R$drawable;->mz_status_ic_traffic_warn:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    return-void
.end method

.method private flymeEnqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 29
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v9

    .local v9, "tag":Ljava/lang/String;
    new-instance v18, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .local v18, "builder":Landroid/app/Notification$Builder;
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    const-wide/16 v10, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, #android:color@system_notification_accent_color#t

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    const-string v14, "android.net.action.USER_DELETE_SNOOZED_NOTIFICATION"

    .local v14, "ACTION_USER_DELETE_SNOOZED_NOTIFICATION":Ljava/lang/String;
    const-string v15, "android.net.NETWORK_POLICY"

    .local v15, "EXTRA_NETWORK_POLICY":Ljava/lang/String;
    const-string v16, "android.net.TYPE"

    .local v16, "EXTRA_TYPE":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .local v23, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeChangeNotification(Landroid/app/Notification$Builder;Landroid/net/NetworkPolicy;J)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .local v7, "packageName":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v12, v6, [I

    .local v12, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v11

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v8, v7

    invoke-interface/range {v6 .. v13}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "packageName":Ljava/lang/String;
    .end local v12    # "idReceived":[I
    :goto_1
    return-void

    :pswitch_0
    const v6, #android:string@data_usage_warning_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .local v27, "title":Ljava/lang/CharSequence;
    const v6, #android:string@data_usage_warning_body#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .local v17, "body":Ljava/lang/CharSequence;
    const v6, #android:drawable@stat_notify_error#t

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v26

    .local v26, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v26

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v23

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v28

    .local v28, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v28

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .end local v17    # "body":Ljava/lang/CharSequence;
    .end local v26    # "snoozeIntent":Landroid/content/Intent;
    .end local v27    # "title":Ljava/lang/CharSequence;
    .end local v28    # "viewIntent":Landroid/content/Intent;
    :pswitch_1
    const v6, #android:string@data_usage_limit_body#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .restart local v17    # "body":Ljava/lang/CharSequence;
    const v21, #android:drawable@stat_notify_disabled_data#t

    .local v21, "icon":I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    const/16 v27, 0x0

    :goto_2
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v19, "deleteIntent":Landroid/content/Intent;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v19

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v23

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v22

    .local v22, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v22

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .end local v19    # "deleteIntent":Landroid/content/Intent;
    .end local v22    # "intent":Landroid/content/Intent;
    :pswitch_2
    const v6, #android:string@data_usage_3g_limit_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v6, #android:string@data_usage_4g_limit_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v6, #android:string@data_usage_mobile_limit_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v6, #android:string@data_usage_wifi_limit_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    const v21, #android:drawable@stat_notify_error#t

    goto/16 :goto_2

    .end local v17    # "body":Ljava/lang/CharSequence;
    .end local v21    # "icon":I
    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v24, p3, v10

    .local v24, "overBytes":J
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v24

    invoke-static {v8, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v6, v10

    const v8, #android:string@data_usage_limit_snoozed_body#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    packed-switch v6, :pswitch_data_2

    const/16 v27, 0x0

    :goto_3
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v6, #android:drawable@stat_notify_error#t

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v19    # "deleteIntent":Landroid/content/Intent;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v19

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v23

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v22

    .restart local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v22

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .end local v19    # "deleteIntent":Landroid/content/Intent;
    .end local v22    # "intent":Landroid/content/Intent;
    :pswitch_7
    const v6, #android:string@data_usage_3g_limit_snoozed_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v6, #android:string@data_usage_4g_limit_snoozed_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v6, #android:string@data_usage_mobile_limit_snoozed_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v6, #android:string@data_usage_wifi_limit_snoozed_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .end local v17    # "body":Ljava/lang/CharSequence;
    .end local v24    # "overBytes":J
    .end local v27    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v20

    .local v20, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private flymeNotifyOverLimitLocked(Landroid/net/NetworkPolicy;IJ)V
    .locals 5
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeEnqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .local v1, "template":Landroid/net/NetworkTemplate;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;J)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method flymeInvokeMethodIsUidForegroundOnRestrictBackgroundUL(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v0

    return v0
.end method

.method flymeInvokeMethodIsUidForegroundOnRestrictPowerUL(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v0

    return v0
.end method
