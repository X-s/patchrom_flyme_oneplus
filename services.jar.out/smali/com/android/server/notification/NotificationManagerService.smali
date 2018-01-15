.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;,
        Lcom/android/server/notification/NotificationManagerService$FlymeWakeUpScreenRunnable;,
        Lcom/android/server/notification/NotificationManagerService$1;,
        Lcom/android/server/notification/NotificationManagerService$2;,
        Lcom/android/server/notification/NotificationManagerService$3;,
        Lcom/android/server/notification/NotificationManagerService$4;,
        Lcom/android/server/notification/NotificationManagerService$5;,
        Lcom/android/server/notification/NotificationManagerService$6;,
        Lcom/android/server/notification/NotificationManagerService$Archive;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$NotificationRankers;,
        Lcom/android/server/notification/NotificationManagerService$PolicyAccess;,
        Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$ToastRecord;,
        Lcom/android/server/notification/NotificationManagerService$TrimCache;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    }
.end annotation


# static fields
.field private static final APPLOCKER_SEPARATOR:Ljava/lang/String; = "|"

.field private static final APP_LOCKER_SWITCH_OFF:I = 0x0

.field private static final APP_LOCKER_SWITCH_ON:I = 0x1

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final DBG:Z

.field private static final DB_VERSION:I = 0x1

.field private static DEBUG_ONEPLUS:Z = false

.field static final DEFAULT_MAX_NOTIFICATION_ENQUEUE_RATE:F = 10.0f

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field static final ENABLE_BLOCKED_TOASTS:Z = true

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field private static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field private static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field static final LONG_DELAY:I = 0xdac

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x5

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x6

.field private static final MESSAGE_RANKING_SORT:I = 0x3e9

.field private static final MESSAGE_RECONSIDER_RANKING:I = 0x3e8

.field static final MESSAGE_SAVE_NOTIFICATION_LED_POLICY_FILE:I = 0x7

.field static final MESSAGE_SAVE_POLICY_FILE:I = 0x3

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x4

.field static final MESSAGE_TIMEOUT:I = 0x2

.field private static final MIN_PACKAGE_OVERRATE_LOG_INTERVAL:J = 0x1388L

.field private static final MY_PID:I

.field private static final MY_UID:I

.field private static final NON_BLOCKABLE_PKGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SHORT_DELAY:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11


# instance fields
.field private mFlymeFirewall:Lcom/android/server/notification/NotificationFirewall;

.field private mFlymeInterceptThread:Landroid/os/HandlerThread;

.field mFlymePowerManager:Landroid/os/PowerManager;

.field mFlymeWakeLock:Landroid/os/PowerManager$WakeLock;

.field mFlymeWakeUpScreenRunnable:Ljava/lang/Runnable;

.field private mAm:Landroid/app/IActivityManager;

.field private mAppLockerSwitch:I

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field mAttentionLight:Lcom/android/server/lights/Light;

.field mAudioManager:Landroid/media/AudioManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field final mAutobundledSummaries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBuzzBeepBlinked:Ljava/lang/Runnable;

.field private mCallState:I

.field private mCarrierConfig:Landroid/os/PersistableBundle;

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mDefLowBatteryWarningLevel:I

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDefaultVibrationPattern:[J

.field private mDisableNotificationEffects:Z

.field private mEffectsSuppressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private mInCall:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field private mLastOverRateLogTime:J

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHints:I

.field private mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final mListenersDisablingEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLockAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxPackageEnqueueRate:F

.field private final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mNotificationLedBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationLedPolicyFile:Landroid/util/AtomicFile;

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPulseEnabled:Z

.field final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field final mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mRankerServicePackageName:Ljava/lang/String;

.field private mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

.field private mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field private mScreenOn:Z

.field private final mService:Landroid/os/IBinder;

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field private mSoundNotificationKey:Ljava/lang/String;

.field mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field final mSummaryByGroupKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemNotificationSound:Ljava/lang/String;

.field mSystemReady:Z

.field final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUnlockAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUseAttentionLight:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field private mVibrateNotificationKey:Ljava/lang/String;

.field private mVibrateWhenMute:I

.field mVibrator:Landroid/os/Vibrator;

.field private mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

.field private mWindowManagerInternal:Landroid/view/WindowManagerInternal;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/notification/NotificationManagerService;)F
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankerServicePackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUnlockAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/notification/NotificationManagerService;)Landroid/view/WindowManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/app/IAppOpsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppLockerSwitch:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/notification/NotificationManagerService;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemNotificationSound:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateWhenMute:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/Adjustment;)V
    .locals 0
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->applyAdjustmentLocked(Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "reason"    # I
    .param p6, "sendDelete"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    return-void
.end method

.method static synthetic -wrap15(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap16(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17()V
    .locals 0

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearLightsLocked()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p1, "hints"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleRankingSort()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSaveNotificationLedPolicyFile()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method static synthetic -wrap3(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->initLockAppList()V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/Adjustment;)V
    .locals 0
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->maybeAddAutobundleSummary(Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/notification/NotificationManagerService;Ljava/io/InputStream;Z)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;Z)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    .line 194
    const-string/jumbo v0, "NotificationService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 196
    const-string/jumbo v0, "debug.child_notifs"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 195
    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 197
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_ONEPLUS:Z

    .line 221
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 345
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 346
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 357
    new-array v0, v1, [Ljava/lang/String;

    .line 358
    const-string/jumbo v1, "com.oneplus.deskclock"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 359
    const-string/jumbo v1, "com.android.dialer"

    aput-object v1, v0, v3

    .line 360
    const-string/jumbo v1, "com.oneplus.opbackup"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 357
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_PKGS:Ljava/util/List;

    .line 192
    return-void

    .line 221
    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1131
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 259
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 261
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ranker"

    .line 262
    const/16 v2, 0xa

    .line 261
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    .line 282
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 281
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 285
    iput v3, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 288
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 289
    iput-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 301
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 300
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 302
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 304
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 305
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$PolicyAccess;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedBlockedPackages:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    iput v4, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateWhenMute:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUnlockAppList:Ljava/util/List;

    iput v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAppLockerSwitch:I

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    return-void
.end method

.method private addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 3
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hint"    # I

    .prologue
    .line 1517
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 1518
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1521
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1522
    .local v0, "hintListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1516
    return-void
.end method

.method private addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .prologue
    .line 1503
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1504
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 1507
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 1508
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 1511
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 1512
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 1502
    :cond_2
    return-void
.end method

.method private applyAdjustmentLocked(Landroid/service/notification/Adjustment;)V
    .locals 5
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .prologue
    const/4 v4, 0x0

    .line 2577
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->maybeClearAutobundleSummaryLocked(Landroid/service/notification/Adjustment;)V

    .line 2578
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 2579
    .local v1, "n":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_0

    .line 2580
    return-void

    .line 2582
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getImportance()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2583
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getImportance()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->setImportance(ILjava/lang/CharSequence;)V

    .line 2585
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2586
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2587
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    .line 2588
    const-string/jumbo v3, "group_key_override"

    .line 2587
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2589
    .local v0, "autoGroupKey":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 2590
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeNotificationUnautogrouped(Ljava/lang/String;)V

    .line 2594
    :goto_0
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v0}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 2576
    .end local v0    # "autoGroupKey":Ljava/lang/String;
    :cond_2
    return-void

    .line 2592
    .restart local v0    # "autoGroupKey":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeNotificationAutogrouped(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v2, 0x0

    .line 3583
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 3584
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3585
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->shouldSuppressWhenScreenOff()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3586
    const/4 v1, 0x1

    .line 3587
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->shouldSuppressWhenScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3588
    const/4 v2, 0x2

    .line 3585
    :cond_0
    or-int v0, v1, v2

    .line 3589
    .local v0, "suppressed":I
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    .line 3582
    .end local v0    # "suppressed":I
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 3586
    goto :goto_0
.end method

.method private static audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;
    .locals 5
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v4, 0x0

    .line 3371
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_0

    .line 3372
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3375
    :cond_0
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3377
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 3378
    iget v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 3377
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0

    .line 3374
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object v0

    .line 3380
    :cond_2
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 3381
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    return-object v0

    .line 3383
    :cond_3
    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "Invalid stream type: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method private calculateHints()I
    .locals 5

    .prologue
    .line 1526
    const/4 v1, 0x0

    .line 1527
    .local v1, "hints":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1528
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1529
    .local v0, "hint":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1531
    .local v3, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1532
    or-int/2addr v1, v0

    .line 1527
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1536
    .end local v0    # "hint":I
    .end local v3    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_1
    return v1
.end method

.method private calculateSuppressedEffects()J
    .locals 6

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 1541
    .local v0, "hints":I
    const-wide/16 v2, 0x0

    .line 1543
    .local v2, "suppressedEffects":J
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 1544
    const-wide/16 v2, 0x3

    .line 1547
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 1548
    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    .line 1551
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 1552
    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    .line 1555
    :cond_2
    return-wide v2
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 4161
    packed-switch p0, :pswitch_data_0

    .line 4165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4162
    :pswitch_0
    const-string/jumbo v0, "CALL_STATE_IDLE"

    return-object v0

    .line 4163
    :pswitch_1
    const-string/jumbo v0, "CALL_STATE_RINGING"

    return-object v0

    .line 4164
    :pswitch_2
    const-string/jumbo v0, "CALL_STATE_OFFHOOK"

    return-object v0

    .line 4161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V
    .locals 18
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "reason"    # I
    .param p6, "sendDelete"    # Z

    .prologue
    .line 3993
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v17

    .line 3994
    .local v17, "n":Landroid/app/Notification;
    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3995
    return-void

    .line 3998
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3999
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v8

    .line 4001
    .local v8, "userId":I
    if-nez v5, :cond_2

    .line 4002
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No package for group summary: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    :cond_1
    return-void

    .line 4006
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 4007
    .local v13, "N":I
    add-int/lit8 v16, v13, -0x1

    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_5

    .line 4008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 4009
    .local v14, "childR":Lcom/android/server/notification/NotificationRecord;
    iget-object v15, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4010
    .local v15, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4007
    :cond_3
    :goto_1
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 4011
    :cond_4
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 4010
    if-eqz v3, :cond_3

    .line 4012
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    .line 4013
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v11, p5

    move-object/from16 v12, p4

    .line 4012
    invoke-static/range {v3 .. v12}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 4014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4015
    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p5

    invoke-direct {v0, v14, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    goto :goto_1

    .line 3992
    .end local v14    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v15    # "childSbn":Landroid/service/notification/StatusBarNotification;
    :cond_5
    return-void
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 16
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 3734
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 3737
    if-eqz p2, :cond_0

    .line 3738
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-object v13, v13, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v13, :cond_0

    .line 3740
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-object v13, v13, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v13}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3750
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 3751
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 3752
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13, v14}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V

    .line 3755
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 3758
    .local v2, "canceledKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 3759
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 3760
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3762
    .local v8, "identity":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v7

    .line 3763
    .local v7, "player":Landroid/media/IRingtonePlayer;
    if-eqz v7, :cond_2

    .line 3764
    invoke-interface {v7}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3768
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3773
    .end local v7    # "player":Landroid/media/IRingtonePlayer;
    .end local v8    # "identity":J
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 3774
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 3775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3777
    .restart local v8    # "identity":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v13}, Landroid/os/Vibrator;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3780
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3785
    .end local v8    # "identity":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p3}, Lcom/android/server/notification/NotificationManagerService;->addFlymePackageRemoveByUserNumber(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 3789
    packed-switch p3, :pswitch_data_0

    .line 3802
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3803
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    .line 3804
    .local v5, "groupKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 3805
    .local v6, "groupSummary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 3806
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3808
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    .line 3809
    .local v12, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v12, :cond_6

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3810
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3814
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13, v14}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    .line 3816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3818
    .local v10, "now":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v15

    .line 3817
    move/from16 v0, p3

    invoke-static {v2, v0, v13, v14, v15}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIII)V

    .line 3731
    return-void

    .line 3741
    .end local v2    # "canceledKey":Ljava/lang/String;
    .end local v5    # "groupKey":Ljava/lang/String;
    .end local v6    # "groupSummary":Lcom/android/server/notification/NotificationRecord;
    .end local v10    # "now":J
    .end local v12    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 3744
    .local v4, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v13, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "canceled PendingIntent for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3766
    .end local v4    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "canceledKey":Ljava/lang/String;
    .restart local v8    # "identity":J
    :catch_1
    move-exception v3

    .line 3768
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 3767
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v13

    .line 3768
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3767
    throw v13

    .line 3779
    :catchall_1
    move-exception v13

    .line 3780
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3779
    throw v13

    .line 3794
    .end local v8    # "identity":J
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    goto/16 :goto_2

    .line 3798
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    goto/16 :goto_2

    .line 3789
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static checkCallerIsSameApp(Ljava/lang/String;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 4144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4146
    .local v2, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 4147
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    .line 4146
    invoke-interface {v3, p0, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4148
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 4149
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4155
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 4156
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4151
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4152
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4153
    const-string/jumbo v5, " which is owned by uid "

    .line 4152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4153
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4143
    :cond_1
    return-void
.end method

.method private static checkCallerIsSystem()V
    .locals 3

    .prologue
    .line 4130
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4131
    return-void

    .line 4133
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 4137
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4138
    return-void

    .line 4140
    :cond_0
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 4136
    return-void
.end method

.method private checkNotificationOp(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 620
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 621
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return v0

    .line 621
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 3709
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private clearLightsLocked()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 850
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 847
    return-void
.end method

.method private clearSoundLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 824
    iput-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 825
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 827
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 828
    .local v1, "player":Landroid/media/IRingtonePlayer;
    if-eqz v1, :cond_0

    .line 829
    invoke-interface {v1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    .end local v1    # "player":Landroid/media/IRingtonePlayer;
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 832
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 833
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 832
    throw v4
.end method

.method private clearVibrateLocked()V
    .locals 3

    .prologue
    .line 838
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 841
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 837
    return-void

    .line 842
    :catchall_0
    move-exception v2

    .line 843
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 842
    throw v2
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 2689
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_0

    .line 2690
    const-string/jumbo v0, "booleanState"

    return-object v0

    .line 2692
    :cond_0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2693
    const-string/jumbo v0, "listenerHints"

    return-object v0

    .line 2695
    :cond_1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2698
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 2696
    :cond_3
    const-string/jumbo v0, "callState"

    return-object v0
.end method

.method private dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 2702
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2704
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "service"

    const-string/jumbo v3, "Notification Manager"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2705
    const-string/jumbo v2, "bans"

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/notification/RankingHelper;->dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2706
    const-string/jumbo v2, "ranking"

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/notification/RankingHelper;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2707
    const-string/jumbo v2, "stats"

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v3, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2711
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2701
    return-void

    .line 2708
    :catch_0
    move-exception v1

    .line 2709
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .locals 2
    .param p1, "target"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3595
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I
    .param p2, "maxlen"    # I
    .param p3, "def"    # [J

    .prologue
    .line 1118
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1119
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 1120
    return-object p3

    .line 1122
    :cond_0
    array-length v4, v0

    if-le v4, p2, :cond_1

    move v2, p2

    .line 1123
    .local v2, "len":I
    :goto_0
    new-array v3, v2, [J

    .line 1124
    .local v3, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1125
    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 1124
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1122
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "out":[J
    :cond_1
    array-length v2, v0

    goto :goto_0

    .line 1127
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "out":[J
    :cond_2
    return-object v3
.end method

.method private getSuppressors()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1470
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1471
    .local v3, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1472
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 1474
    .local v4, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1475
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1471
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1479
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v4    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_1
    return-object v3
.end method

.method private handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .prologue
    .line 3123
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v16, v0

    .line 3124
    .local v16, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    .line 3125
    .local v10, "n":Landroid/app/Notification;
    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3131
    :cond_0
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    .line 3132
    .local v8, "group":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v9

    .line 3134
    .local v9, "isSummary":Z
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    .line 3135
    :goto_1
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v11

    .line 3136
    :goto_2
    if-eqz p2, :cond_7

    invoke-virtual {v13}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v12

    .line 3138
    .local v12, "oldIsSummary":Z
    :goto_3
    if-eqz v12, :cond_1

    .line 3139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    .line 3140
    .local v15, "removedSummary":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    if-eq v15, v0, :cond_1

    .line 3142
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    .line 3143
    .local v14, "removedKey":Ljava/lang/String;
    :goto_4
    const-string/jumbo v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3144
    const-string/jumbo v3, ", removed="

    .line 3143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    .end local v14    # "removedKey":Ljava/lang/String;
    .end local v15    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    if-eqz v9, :cond_2

    .line 3148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3155
    :cond_2
    if-eqz v12, :cond_3

    if-eqz v9, :cond_9

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3122
    :cond_3
    :goto_5
    return-void

    .line 3128
    .end local v8    # "group":Ljava/lang/String;
    .end local v9    # "isSummary":Z
    .end local v12    # "oldIsSummary":Z
    :cond_4
    iget v1, v10, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, v10, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 3134
    .restart local v8    # "group":Ljava/lang/String;
    .restart local v9    # "isSummary":Z
    :cond_5
    const/4 v13, 0x0

    .local v13, "oldN":Landroid/app/Notification;
    goto :goto_1

    .line 3135
    .end local v13    # "oldN":Landroid/app/Notification;
    :cond_6
    const/4 v11, 0x0

    .local v11, "oldGroup":Ljava/lang/String;
    goto :goto_2

    .line 3136
    .end local v11    # "oldGroup":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 3142
    .restart local v12    # "oldIsSummary":Z
    .restart local v15    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_8
    const-string/jumbo v14, "<null>"

    .restart local v14    # "removedKey":Ljava/lang/String;
    goto :goto_4

    .line 3156
    .end local v14    # "removedKey":Ljava/lang/String;
    .end local v15    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_9
    const/4 v5, 0x0

    .line 3157
    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 3156
    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V

    goto :goto_5
.end method

.method private handleListenerHintsChanged(I)V
    .locals 2
    .param p1, "hints"    # I

    .prologue
    .line 3625
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3626
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3624
    return-void

    .line 3625
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .locals 2
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 3631
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3632
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3630
    return-void

    .line 3631
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3506
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Lcom/android/server/notification/RankingReconsideration;

    if-nez v9, :cond_0

    return-void

    .line 3507
    :cond_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/notification/RankingReconsideration;

    .line 3508
    .local v5, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 3510
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v10

    .line 3511
    :try_start_0
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3512
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v6, :cond_1

    monitor-exit v10

    .line 3513
    return-void

    .line 3515
    :cond_1
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    .line 3516
    .local v2, "indexBefore":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    .line 3517
    .local v4, "interceptBefore":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    .line 3518
    .local v8, "visibilityBefore":I
    invoke-virtual {v5, v6}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 3519
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 3520
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 3521
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v1

    .line 3522
    .local v1, "indexAfter":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    .line 3523
    .local v3, "interceptAfter":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 3524
    .local v7, "visibilityAfter":I
    if-ne v2, v1, :cond_2

    if-eq v4, v3, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 3526
    .local v0, "changed":Z
    :goto_0
    if-eqz v4, :cond_3

    if-eqz v3, :cond_7

    :cond_3
    :goto_1
    monitor-exit v10

    .line 3530
    if-eqz v0, :cond_4

    .line 3531
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V

    .line 3505
    :cond_4
    return-void

    .line 3525
    .end local v0    # "changed":Z
    :cond_5
    if-eq v8, v7, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .end local v0    # "changed":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 3527
    :cond_7
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3510
    .end local v0    # "changed":Z
    .end local v1    # "indexAfter":I
    .end local v2    # "indexBefore":I
    .end local v3    # "interceptAfter":Z
    .end local v4    # "interceptBefore":Z
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v7    # "visibilityAfter":I
    .end local v8    # "visibilityBefore":I
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method private handleRankingSort()V
    .locals 11

    .prologue
    .line 3536
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v9

    .line 3537
    :try_start_0
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3538
    .local v0, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3539
    .local v4, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3540
    .local v1, "groupOverrideBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v7, v0, [I

    .line 3541
    .local v7, "visibilities":[I
    new-array v3, v0, [I

    .line 3544
    .local v3, "importances":[I
    new-array v5, v0, [I

    .line 3546
    .local v5, "priorityBefore":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3547
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 3548
    .local v6, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3549
    iget-object v8, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3550
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    aput v8, v7, v2

    .line 3551
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v8

    aput v8, v3, v2

    .line 3554
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v8

    aput v8, v5, v2

    .line 3556
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v8, v6}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 3546
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3558
    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 3559
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 3560
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 3561
    .restart local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3562
    aget v8, v7, v2

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v10

    if-eq v8, v10, :cond_2

    .line 3568
    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 3569
    return-void

    .line 3563
    :cond_2
    :try_start_1
    aget v8, v3, v2

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v10

    if-ne v8, v10, :cond_1

    .line 3564
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v10, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3567
    aget v8, v5, v2

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-ne v8, v10, :cond_1

    .line 3559
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v9

    .line 3535
    return-void

    .line 3536
    .end local v0    # "N":I
    .end local v1    # "groupOverrideBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "importances":[I
    .end local v4    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "priorityBefore":[I
    .end local v7    # "visibilities":[I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private handleSaveNotificationLedPolicyFile()V
    .locals 9

    .prologue
    .line 558
    const-string/jumbo v5, "NotificationService"

    const-string/jumbo v6, "handleSaveNotificationLedPolicyFile"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v6

    .line 562
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 569
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 570
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 571
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 572
    const-string/jumbo v5, "notification-policy"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 573
    const-string/jumbo v5, "version"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v8, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    const-string/jumbo v5, "blocked-packages"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 575
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedBlockedPackages:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 576
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v5, "package"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    const-string/jumbo v5, "name"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 578
    const-string/jumbo v5, "package"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 584
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v5, "NotificationService"

    const-string/jumbo v7, "Failed to save policy file, restoring backup"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-exit v6

    .line 557
    return-void

    .line 563
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 564
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v5, "NotificationService"

    const-string/jumbo v7, "Failed to save policy file"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 565
    return-void

    .line 580
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_4
    const-string/jumbo v5, "blocked-packages"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 581
    const-string/jumbo v5, "notification-policy"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 583
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 559
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "pkg$iterator":Ljava/util/Iterator;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private handleSavePolicyFile()V
    .locals 5

    .prologue
    .line 471
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "handleSavePolicyFile"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v3

    .line 475
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 482
    .local v1, "stream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    .line 483
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 489
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 470
    return-void

    .line 476
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v4, "Failed to save policy file"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 478
    return-void

    .line 484
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 485
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v4, "Failed to save policy file, restoring backup"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleSendRankingUpdate()V
    .locals 2

    .prologue
    .line 3606
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3607
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3605
    return-void

    .line 3606
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 3462
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Timeout pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3464
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    .line 3465
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 3466
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 3460
    return-void

    .line 3463
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private initLockAppList()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 4839
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 4840
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 4841
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 4842
    .local v10, "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 4843
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v14, v10}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v6

    .line 4844
    .local v6, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 4845
    .local v3, "packageCount":I
    const-string/jumbo v11, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "initLockAppList for userId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4846
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 4847
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    iget-object v5, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4848
    .local v5, "packageName":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 4850
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4, v5, v10}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v7

    .line 4851
    .local v7, "uid":I
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v12, 0x3f

    invoke-interface {v11, v12, v7, v5}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    .line 4853
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4854
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4855
    const-string/jumbo v11, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is locked"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4846
    .end local v7    # "uid":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4857
    :catch_0
    move-exception v0

    .line 4858
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fail to get app lock mode for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4838
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "p":I
    .end local v3    # "packageCount":I
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v10    # "userId":I
    :cond_2
    return-void
.end method

.method private static isCallerSystem()Z
    .locals 1

    .prologue
    .line 4126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 4270
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4272
    .local v2, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4275
    :catch_0
    move-exception v0

    .line 4277
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    return v3

    .line 4273
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 4274
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Could not talk to package manager service"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static isUidSystem(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4121
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4122
    .local v0, "appid":I
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 4262
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4263
    const/4 v0, 0x0

    return v0

    .line 4266
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private listenForCallState()V
    .locals 3

    .prologue
    .line 4170
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4177
    const/16 v2, 0x20

    .line 4170
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4169
    return-void
.end method

.method private loadNotificationLedPolicyFile()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 507
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v10

    .line 508
    :try_start_0
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    const/4 v4, 0x0

    .line 512
    .local v4, "infile":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    .line 513
    .local v4, "infile":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 514
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v5, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 518
    const/4 v8, 0x1

    .line 519
    .local v8, "version":I
    :cond_0
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    if-eq v7, v13, :cond_4

    .line 520
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 521
    .local v6, "tag":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    .line 522
    const-string/jumbo v9, "notification-policy"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 524
    const-string/jumbo v9, "version"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 523
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 525
    :cond_1
    const-string/jumbo v9, "blocked-packages"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 526
    :cond_2
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v13, :cond_0

    .line 527
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 528
    const-string/jumbo v9, "package"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 529
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedBlockedPackages:Ljava/util/HashSet;

    .line 530
    const-string/jumbo v11, "name"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 529
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 538
    .end local v4    # "infile":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v8    # "version":I
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    monitor-exit v10

    .line 506
    return-void

    .line 531
    .restart local v4    # "infile":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    .restart local v8    # "version":I
    :cond_3
    :try_start_3
    const-string/jumbo v9, "blocked-packages"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x3

    if-ne v7, v9, :cond_2

    goto :goto_0

    .line 547
    .end local v6    # "tag":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 507
    .end local v4    # "infile":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .end local v8    # "version":I
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 544
    :catch_1
    move-exception v3

    .line 545
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string/jumbo v9, "NotificationService"

    const-string/jumbo v11, "Unable to parse notification led policy"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 547
    :try_start_6
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 542
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 543
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_7
    const-string/jumbo v9, "NotificationService"

    const-string/jumbo v11, "Unable to parse notification led policy"

    invoke-static {v9, v11, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 547
    :try_start_8
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 540
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    .line 541
    .local v1, "e":Ljava/io/IOException;
    :try_start_9
    const-string/jumbo v9, "NotificationService"

    const-string/jumbo v11, "Unable to read notification led policy"

    invoke-static {v9, v11, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 547
    :try_start_a
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 546
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 547
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 546
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method private loadPolicyFile()V
    .locals 15

    .prologue
    .line 432
    sget-boolean v11, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "NotificationService"

    const-string/jumbo v12, "loadPolicyFile"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v12

    .line 435
    const/4 v6, 0x0

    .line 437
    .local v6, "infile":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    .line 438
    .local v6, "infile":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    invoke-direct {p0, v6, v11}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 460
    :try_start_1
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "infile":Ljava/io/FileInputStream;
    :goto_0
    monitor-exit v12

    .line 431
    return-void

    .line 457
    :catch_0
    move-exception v4

    .line 458
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v11, "NotificationService"

    const-string/jumbo v13, "Unable to parse notification policy"

    invoke-static {v11, v13, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 460
    :try_start_3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 433
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 455
    :catch_1
    move-exception v3

    .line 456
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string/jumbo v11, "NotificationService"

    const-string/jumbo v13, "Unable to parse notification policy"

    invoke-static {v11, v13, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 460
    :try_start_5
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 453
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v2

    .line 454
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v11, "NotificationService"

    const-string/jumbo v13, "Unable to read notification policy"

    invoke-static {v11, v13, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 460
    :try_start_7
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 439
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 442
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v11, 0x1

    :try_start_8
    new-array v11, v11, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v13, v11, v14

    invoke-static {v11}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 443
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v11}, Lcom/android/server/notification/RankingHelper;->getDefaultDenoiseList()Ljava/util/List;

    move-result-object v7

    .line 444
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 445
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_2

    .line 446
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "user$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 447
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 448
    .local v10, "userId":I
    iget-object v13, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v14, v11}, Lcom/android/server/notification/RankingHelper;->setDefaultOPLevel(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 459
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "i":I
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "user$iterator":Ljava/util/Iterator;
    .end local v10    # "userId":I
    :catchall_1
    move-exception v11

    .line 460
    :try_start_9
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 459
    throw v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 445
    .restart local v0    # "N":I
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "i":I
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "user$iterator":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 451
    .end local v9    # "user$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 460
    .end local v0    # "N":I
    .end local v5    # "i":I
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_b
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 27
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 4187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 4188
    .local v14, "N":I
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 4189
    .local v22, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 4190
    .local v18, "interceptedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 4191
    .local v17, "importance":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 4192
    .local v9, "overrideGroupKeys":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4193
    .local v5, "visibilityOverrides":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 4194
    .local v6, "suppressedVisualEffects":Landroid/os/Bundle;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 4196
    .local v8, "explanation":Landroid/os/Bundle;
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 4197
    .local v19, "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 4198
    .local v24, "lockedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAppLockerSwitch:I

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v2, v0, :cond_1

    .line 4199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    .line 4200
    .local v12, "L":I
    const/16 v23, 0x0

    .local v23, "l":I
    :goto_0
    move/from16 v0, v23

    if-ge v0, v12, :cond_1

    .line 4201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 4202
    .local v20, "item":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mUnlockAppList:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4203
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4200
    :cond_0
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 4208
    .end local v12    # "L":I
    .end local v20    # "item":Ljava/lang/String;
    .end local v23    # "l":I
    :cond_1
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v14, :cond_7

    .line 4209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/notification/NotificationRecord;

    .line 4210
    .local v25, "record":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4208
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 4213
    :cond_2
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v21

    .line 4214
    .local v21, "key":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4215
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4216
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4217
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4219
    :cond_3
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4220
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4223
    :cond_4
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4224
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v2

    .line 4225
    const/16 v26, -0x3e8

    .line 4224
    move/from16 v0, v26

    if-eq v2, v0, :cond_5

    .line 4226
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4228
    :cond_5
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v26, "|"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 4232
    .local v15, "applock":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4233
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 4235
    :cond_6
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 4239
    .end local v15    # "applock":Ljava/lang/String;
    .end local v21    # "key":Ljava/lang/String;
    .end local v25    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_7
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 4240
    .local v13, "M":I
    new-array v2, v13, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 4241
    .local v3, "keysAr":[Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 4242
    .local v4, "interceptedKeysAr":[Ljava/lang/String;
    new-array v7, v13, [I

    .line 4243
    .local v7, "importanceAr":[I
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v0, v13, :cond_8

    .line 4244
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v7, v16

    .line 4243
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 4247
    :cond_8
    new-array v10, v13, [Z

    .line 4248
    .local v10, "isLockAr":[Z
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v0, v13, :cond_9

    .line 4249
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v10, v16

    .line 4248
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 4251
    :cond_9
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 4253
    .local v11, "lockedAppsAr":[Ljava/lang/String;
    new-instance v2, Landroid/service/notification/NotificationRankingUpdate;

    invoke-direct/range {v2 .. v11}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;[ILandroid/os/Bundle;Landroid/os/Bundle;[Z[Ljava/lang/String;)V

    return-object v2
.end method

.method private maybeAddAutobundleSummary(Landroid/service/notification/Adjustment;)V
    .locals 29
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .prologue
    .line 2621
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2622
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2623
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "autogroup_needed"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2625
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "group_key_override"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2626
    .local v17, "newAutoBundleKey":Ljava/lang/String;
    const/16 v27, -0x1

    .line 2627
    .local v27, "userId":I
    const/16 v25, 0x0

    .line 2628
    .local v25, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 2630
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/notification/NotificationRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2631
    .local v23, "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    if-nez v23, :cond_0

    monitor-exit v28

    .line 2634
    return-void

    .line 2636
    :cond_0
    :try_start_1
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    .line 2637
    .local v20, "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v27

    .line 2638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArrayMap;

    .line 2639
    .local v24, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v24, :cond_1

    .line 2640
    new-instance v24, Landroid/util/ArrayMap;

    .end local v24    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v24 .. v24}, Landroid/util/ArrayMap;-><init>()V

    .line 2642
    .restart local v24    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2643
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2644
    if-eqz v17, :cond_3

    .line 2647
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2648
    const-string/jumbo v5, "android.appInfo"

    .line 2647
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ApplicationInfo;

    .line 2649
    .local v21, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 2650
    .local v22, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "android.appInfo"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2652
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2653
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 2652
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2654
    const/4 v5, 0x1

    .line 2652
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2656
    const/16 v5, 0x400

    const/4 v7, 0x1

    .line 2652
    invoke-virtual {v4, v5, v7}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2657
    const/16 v5, 0x200

    const/4 v7, 0x1

    .line 2652
    invoke-virtual {v4, v5, v7}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2658
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->color:I

    .line 2652
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2659
    const/4 v5, 0x1

    .line 2652
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    .line 2661
    .local v15, "summaryNotification":Landroid/app/Notification;
    iget-object v4, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2662
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2663
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 2662
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 2664
    .local v6, "appIntent":Landroid/content/Intent;
    if-eqz v6, :cond_2

    .line 2666
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2667
    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 2666
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2665
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v15, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2670
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/notification/NotificationManagerService;->addFlymeOrigPackageName(Landroid/service/notification/Adjustment;Landroid/app/Notification;)V

    new-instance v8, Landroid/service/notification/StatusBarNotification;

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2671
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v10

    .line 2672
    const-string/jumbo v12, "group_key_override"

    .line 2673
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v13

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v14

    .line 2674
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v16

    .line 2676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 2672
    const v11, 0x7fffffff

    .line 2670
    invoke-direct/range {v8 .. v19}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 2677
    .local v8, "summarySbn":Landroid/service/notification/StatusBarNotification;
    new-instance v26, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4, v8}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2678
    .local v26, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    .end local v25    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    move-result-object v4

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v25, v26

    .end local v6    # "appIntent":Landroid/content/Intent;
    .end local v8    # "summarySbn":Landroid/service/notification/StatusBarNotification;
    .end local v15    # "summaryNotification":Landroid/app/Notification;
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "extras":Landroid/os/Bundle;
    .end local v26    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v28

    .line 2681
    if-eqz v25, :cond_4

    .line 2682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2620
    .end local v17    # "newAutoBundleKey":Ljava/lang/String;
    .end local v20    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .end local v23    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v24    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27    # "userId":I
    :cond_4
    return-void

    .line 2628
    .restart local v17    # "newAutoBundleKey":Ljava/lang/String;
    .restart local v25    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v27    # "userId":I
    :catchall_0
    move-exception v4

    .end local v25    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :goto_0
    monitor-exit v28

    throw v4

    .restart local v6    # "appIntent":Landroid/content/Intent;
    .restart local v8    # "summarySbn":Landroid/service/notification/StatusBarNotification;
    .restart local v15    # "summaryNotification":Landroid/app/Notification;
    .restart local v20    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "extras":Landroid/os/Bundle;
    .restart local v23    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v24    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_1
    move-exception v4

    move-object/from16 v25, v26

    .end local v26    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .local v25, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    goto :goto_0
.end method

.method private maybeClearAutobundleSummaryLocked(Landroid/service/notification/Adjustment;)V
    .locals 5
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .prologue
    const/4 v4, 0x0

    .line 2600
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2601
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2602
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "autogroup_needed"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2603
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "autogroup_needed"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2599
    :cond_0
    :goto_0
    return-void

    .line 2605
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getUser()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 2606
    .local v1, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2608
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 2609
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2608
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 2610
    .local v0, "removed":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_0

    .line 2611
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2612
    const/16 v2, 0x10

    invoke-direct {p0, v0, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    goto :goto_0
.end method

.method private noteNotificationOp(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 610
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const-string/jumbo v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifications are disabled by AppOps for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return v3

    .line 615
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    .line 3890
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3891
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    .line 3890
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 3877
    if-eq p2, v2, :cond_0

    .line 3879
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3875
    :cond_0
    :goto_0
    return v0

    .line 3881
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    if-eq v1, p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readPolicyXml(Ljava/io/InputStream;Z)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 423
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 425
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 427
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_PKGS:Ljava/util/List;

    invoke-virtual {v1, v0, p2, v2}, Lcom/android/server/notification/RankingHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/List;)V

    goto :goto_0

    .line 421
    :cond_0
    return-void
.end method

.method private recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3577
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->recordCaller(Lcom/android/server/notification/NotificationRecord;)V

    .line 3575
    :cond_0
    return-void
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 1483
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    return v0
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .prologue
    .line 1487
    const/4 v3, 0x0

    .line 1489
    .local v3, "removed":Z
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .end local v3    # "removed":Z
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1490
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1492
    .local v0, "hint":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1494
    .local v2, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    if-eqz p2, :cond_0

    and-int v4, v0, p2

    if-ne v4, v0, :cond_1

    .line 1495
    :cond_0
    if-nez v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 1489
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1495
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "removed":Z
    goto :goto_1

    .line 1499
    .end local v0    # "hint":I
    .end local v2    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    .end local v3    # "removed":Z
    :cond_3
    return v3
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .locals 3
    .param p1, "listenerInterruptionFilter"    # I

    .prologue
    const/4 v2, 0x6

    .line 3617
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3618
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    .line 3621
    const/4 v1, 0x0

    .line 3618
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3616
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x5

    .line 3612
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3613
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3611
    return-void
.end method

.method private scheduleSendRankingUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 3599
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3600
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3601
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3598
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 3454
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3455
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3456
    .local v2, "m":Landroid/os/Message;
    iget v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0xdac

    :goto_0
    int-to-long v0, v3

    .line 3457
    .local v0, "delay":J
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3452
    return-void

    .line 3456
    .end local v0    # "delay":J
    :cond_0
    const/16 v3, 0x7d0

    goto :goto_0
.end method

.method private sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1366
    const/high16 v2, 0x40000000    # 2.0f

    .line 1365
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1366
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    .line 1365
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1364
    return-void
.end method

.method private syncBlockDb()V
    .locals 21

    .prologue
    .line 1373
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/RankingHelper;->getPackageBans()Ljava/util/Map;

    move-result-object v8

    .line 1377
    .local v8, "packageBans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "ban$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1378
    .local v4, "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1379
    .local v13, "uid":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1380
    .local v11, "packageName":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v13, v1}, Lcom/android/server/notification/NotificationManagerService;->setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1384
    .end local v4    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "uid":I
    :cond_0
    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 1385
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "user$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/UserInfo;

    .line 1386
    .local v14, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 1387
    .local v16, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1388
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v12

    .line 1389
    .local v12, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 1390
    .local v9, "packageCount":I
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_1
    if-ge v7, v9, :cond_1

    .line 1391
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1393
    .restart local v11    # "packageName":Ljava/lang/String;
    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v10, v11, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v13

    .line 1394
    .restart local v13    # "uid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationOp(Ljava/lang/String;I)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1396
    sget-object v17, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_PKGS:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    .line 1398
    const/16 v19, 0x0

    .line 1397
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v13, v11, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1399
    const-string/jumbo v17, "NotificationService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Reset importance to default, enable notifications for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    .end local v13    # "uid":I
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1401
    .restart local v13    # "uid":I
    :cond_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1404
    .end local v13    # "uid":I
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    .line 1409
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "p":I
    .end local v9    # "packageCount":I
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14    # "user":Landroid/content/pm/UserInfo;
    .end local v16    # "userId":I
    :cond_4
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1410
    .restart local v4    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v19, v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/RankingHelper;->setImportance(Ljava/lang/String;II)V

    goto :goto_3

    .line 1413
    .end local v4    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 1372
    return-void
.end method

.method private updateEffectsSuppressorLocked()V
    .locals 6

    .prologue
    .line 1460
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedEffects()J

    move-result-wide v2

    .line 1461
    .local v2, "updatedSuppressedEffects":J
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getSuppressedEffects()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    return-void

    .line 1462
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->getSuppressors()Ljava/util/ArrayList;

    move-result-object v0

    .line 1463
    .local v0, "suppressors":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;J)V

    .line 1464
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 1465
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setSuppressedEffects(J)V

    .line 1466
    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    .line 1459
    return-void
.end method

.method private updateInterruptionFilterLocked()V
    .locals 2

    .prologue
    .line 1559
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 1560
    .local v0, "interruptionFilter":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_0

    return-void

    .line 1561
    :cond_0
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 1562
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    .line 1558
    return-void
.end method

.method private updateListenerHintsLocked()V
    .locals 3

    .prologue
    .line 1452
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 1453
    .local v0, "hints":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_0

    return-void

    .line 1454
    :cond_0
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    .line 1455
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 1456
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    .line 1451
    return-void
.end method

.method private updateNotificationPulse()V
    .locals 2

    .prologue
    .line 4115
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4116
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4114
    return-void

    .line 4115
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private writePolicyXml(Ljava/io/OutputStream;Z)V
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 493
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 494
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 495
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 496
    const-string/jumbo v1, "notification-policy"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    const-string/jumbo v1, "version"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 499
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/RankingHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 500
    const-string/jumbo v1, "notification-policy"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 492
    return-void
.end method


# virtual methods
.method buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 39
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3163
    const/4 v14, 0x0

    .line 3164
    .local v14, "buzz":Z
    const/4 v12, 0x0

    .line 3165
    .local v12, "beep":Z
    const/4 v13, 0x0

    .line 3167
    .local v13, "blink":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v27

    .line 3168
    .local v27, "notification":Landroid/app/Notification;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v23

    .line 3171
    .local v23, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateWhenMute:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    const/16 v38, 0x1

    .line 3175
    .local v38, "zenAlarmsVibrate":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_12

    const/4 v10, 0x1

    .line 3176
    .local v10, "aboveThreshold":Z
    :goto_1
    if-eqz v10, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    if-eqz v4, :cond_13

    move/from16 v15, v38

    .line 3177
    :goto_2
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3178
    :cond_0
    const-string/jumbo v4, "NotificationService"

    .line 3179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " canInterrupt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3180
    const-string/jumbo v6, " intercept="

    .line 3179
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3180
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v6

    .line 3179
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3178
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v32

    .line 3186
    .local v32, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    .line 3188
    .local v17, "currentUser":I
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3192
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v18

    .line 3193
    .local v18, "disableEffects":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 3194
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 3198
    :cond_2
    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .line 3199
    :goto_3
    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    .line 3202
    :goto_4
    const/16 v22, 0x0

    .line 3203
    .local v22, "hasValidVibrate":Z
    const/16 v21, 0x0

    .line 3205
    .local v21, "hasValidSound":Z
    const/16 v29, 0x0

    .line 3206
    .local v29, "smsRingtone":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-nez v4, :cond_17

    .line 3207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v4}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 3212
    .end local v29    # "smsRingtone":Z
    :goto_5
    if-eqz v18, :cond_3

    if-eqz v29, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-eqz v4, :cond_a

    .line 3213
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 3214
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    move/from16 v0, v17

    if-ne v4, v0, :cond_18

    .line 3212
    :cond_4
    :goto_6
    if-eqz v15, :cond_a

    .line 3217
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 3212
    if-eqz v4, :cond_a

    .line 3218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_a

    .line 3219
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "NotificationService"

    const-string/jumbo v5, "Interrupting!"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    :cond_5
    move-object/from16 v0, v27

    iget v4, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_19

    .line 3226
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 3227
    move-object/from16 v0, v27

    iget-object v5, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3226
    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v31

    .line 3229
    .local v31, "useDefaultSound":Z
    :goto_7
    const/16 v30, 0x0

    .line 3230
    .local v30, "soundUri":Landroid/net/Uri;
    if-eqz v31, :cond_1b

    .line 3231
    sget-object v30, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 3234
    .local v30, "soundUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemNotificationSound:Ljava/lang/String;

    if-eqz v4, :cond_1a

    const/16 v21, 0x1

    .line 3249
    .end local v30    # "soundUri":Landroid/net/Uri;
    :cond_6
    :goto_8
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_1d

    const/16 v20, 0x1

    .line 3254
    .local v20, "hasCustomVibrate":Z
    :goto_9
    if-nez v20, :cond_1f

    if-eqz v21, :cond_1f

    .line 3256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1e

    move/from16 v16, v38

    .line 3260
    :goto_a
    move-object/from16 v0, v27

    iget v4, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_20

    const/16 v34, 0x1

    .line 3262
    .local v34, "useDefaultVibrate":Z
    :goto_b
    if-nez v34, :cond_21

    if-nez v16, :cond_21

    .line 3263
    move/from16 v22, v20

    .line 3267
    .end local v22    # "hasValidVibrate":Z
    :goto_c
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v4, :cond_23

    .line 3268
    move-object/from16 v0, v27

    iget v4, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    .line 3267
    :goto_d
    if-nez v4, :cond_a

    .line 3270
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 3272
    if-eqz v21, :cond_7

    .line 3274
    move-object/from16 v0, v27

    iget v4, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_24

    const/16 v26, 0x1

    .line 3275
    .local v26, "looping":Z
    :goto_e
    invoke-static/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    move-result-object v11

    .line 3276
    .local v11, "audioAttributes":Landroid/media/AudioAttributes;
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 3279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 3280
    invoke-static {v11}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v5

    .line 3279
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-eqz v4, :cond_7

    .line 3281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 3300
    .end local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v26    # "looping":Z
    :cond_7
    :goto_f
    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    if-nez v4, :cond_8

    if-eqz v38, :cond_a

    .line 3302
    :cond_8
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 3304
    if-nez v34, :cond_9

    if-eqz v16, :cond_2a

    .line 3307
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 3309
    .local v24, "identity":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v6

    .line 3310
    if-eqz v34, :cond_28

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J

    .line 3312
    :goto_10
    move-object/from16 v0, v27

    iget v8, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_29

    .line 3313
    const/4 v8, 0x0

    :goto_11
    invoke-static/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    move-result-object v9

    .line 3309
    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3314
    const/4 v14, 0x1

    .line 3316
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3333
    .end local v20    # "hasCustomVibrate":Z
    .end local v24    # "identity":J
    .end local v31    # "useDefaultSound":Z
    .end local v34    # "useDefaultVibrate":Z
    :cond_a
    :goto_12
    if-eqz v35, :cond_b

    if-eqz v21, :cond_2c

    .line 3336
    :cond_b
    :goto_13
    if-eqz v36, :cond_c

    if-eqz v22, :cond_2d

    .line 3342
    :cond_c
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v37

    .line 3343
    .local v37, "wasShowLights":Z
    move-object/from16 v0, v27

    iget v4, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2e

    if-eqz v10, :cond_2e

    .line 3344
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2e

    .line 3348
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationManagerService;->isNotificationLedEnabledImpl(Ljava/lang/String;)Z

    move-result v4

    .line 3343
    if-eqz v4, :cond_2e

    .line 3349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->notifyFlymeWakeupScreen(Lcom/android/server/notification/NotificationRecord;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    invoke-virtual {v4}, Lcom/android/server/lights/Light;->pulse()V

    :cond_d
    const/4 v13, 0x1

    :cond_e
    :goto_15
    if-nez v14, :cond_f

    if-nez v12, :cond_f

    if-eqz v13, :cond_10

    .line 3359
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2f

    .line 3361
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_10

    const-string/jumbo v4, "NotificationService"

    const-string/jumbo v5, "Suppressed SystemUI from triggering screen on"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    :cond_10
    :goto_16
    return-void

    .line 3171
    .end local v10    # "aboveThreshold":Z
    .end local v17    # "currentUser":I
    .end local v18    # "disableEffects":Ljava/lang/String;
    .end local v21    # "hasValidSound":Z
    .end local v32    # "token":J
    .end local v37    # "wasShowLights":Z
    .end local v38    # "zenAlarmsVibrate":Z
    :cond_11
    const/16 v38, 0x0

    .restart local v38    # "zenAlarmsVibrate":Z
    goto/16 :goto_0

    .line 3175
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 3176
    .restart local v10    # "aboveThreshold":Z
    :cond_13
    const/4 v15, 0x1

    .local v15, "canInterrupt":Z
    goto/16 :goto_2

    .end local v15    # "canInterrupt":Z
    :cond_14
    const/4 v15, 0x0

    .restart local v15    # "canInterrupt":Z
    goto/16 :goto_2

    .line 3187
    .end local v15    # "canInterrupt":Z
    .restart local v32    # "token":J
    :catchall_0
    move-exception v4

    .line 3188
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3187
    throw v4

    .line 3198
    .restart local v17    # "currentUser":I
    .restart local v18    # "disableEffects":Ljava/lang/String;
    :cond_15
    const/16 v35, 0x0

    .local v35, "wasBeep":Z
    goto/16 :goto_3

    .line 3199
    .end local v35    # "wasBeep":Z
    :cond_16
    const/16 v36, 0x0

    .local v36, "wasBuzz":Z
    goto/16 :goto_4

    .line 3209
    .end local v36    # "wasBuzz":Z
    .restart local v21    # "hasValidSound":Z
    .restart local v22    # "hasValidVibrate":Z
    .restart local v29    # "smsRingtone":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 3210
    const-string/jumbo v5, "config_sms_ringtone_incall"

    .line 3209
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    .local v29, "smsRingtone":Z
    goto/16 :goto_5

    .line 3215
    .end local v29    # "smsRingtone":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v4

    .line 3212
    if-eqz v4, :cond_a

    goto/16 :goto_6

    .line 3225
    :cond_19
    const/16 v31, 0x1

    goto/16 :goto_7

    .line 3234
    .restart local v30    # "soundUri":Landroid/net/Uri;
    .restart local v31    # "useDefaultSound":Z
    :cond_1a
    const/16 v21, 0x0

    goto/16 :goto_8

    .line 3235
    .local v30, "soundUri":Landroid/net/Uri;
    :cond_1b
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_6

    .line 3243
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const-string/jumbo v6, "notification_sound"

    invoke-static {v4, v5, v6}, Landroid/media/RingtoneManager;->validForSound(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 3245
    .local v30, "soundUri":Landroid/net/Uri;
    if-eqz v30, :cond_1c

    const/16 v21, 0x1

    goto/16 :goto_8

    :cond_1c
    const/16 v21, 0x0

    goto/16 :goto_8

    .line 3249
    .end local v30    # "soundUri":Landroid/net/Uri;
    :cond_1d
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 3256
    .restart local v20    # "hasCustomVibrate":Z
    :cond_1e
    const/16 v16, 0x1

    .local v16, "convertSoundToVibration":Z
    goto/16 :goto_a

    .line 3254
    .end local v16    # "convertSoundToVibration":Z
    :cond_1f
    const/16 v16, 0x0

    .restart local v16    # "convertSoundToVibration":Z
    goto/16 :goto_a

    .line 3260
    .end local v16    # "convertSoundToVibration":Z
    :cond_20
    const/16 v34, 0x0

    goto/16 :goto_b

    .line 3262
    .restart local v34    # "useDefaultVibrate":Z
    :cond_21
    const/16 v22, 0x1

    goto/16 :goto_c

    .line 3268
    .end local v22    # "hasValidVibrate":Z
    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 3267
    :cond_23
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 3274
    :cond_24
    const/16 v26, 0x0

    .restart local v26    # "looping":Z
    goto/16 :goto_e

    .line 3282
    .restart local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 3285
    .restart local v24    # "identity":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v28

    .line 3286
    .local v28, "player":Landroid/media/IRingtonePlayer;
    if-eqz v28, :cond_27

    .line 3287
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_26

    const-string/jumbo v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Playing sound "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3288
    const-string/jumbo v6, " with attributes "

    .line 3287
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    :cond_26
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v26

    invoke-interface {v0, v1, v4, v2, v11}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3291
    const/4 v12, 0x1

    .line 3295
    :cond_27
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_f

    .line 3293
    .end local v28    # "player":Landroid/media/IRingtonePlayer;
    :catch_0
    move-exception v19

    .line 3295
    .local v19, "e":Landroid/os/RemoteException;
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_f

    .line 3294
    .end local v19    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    .line 3295
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3294
    throw v4

    .line 3311
    .end local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v26    # "looping":Z
    :cond_28
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_10

    .line 3313
    :cond_29
    const/4 v8, -0x1

    goto/16 :goto_11

    .line 3315
    :catchall_2
    move-exception v4

    .line 3316
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3315
    throw v4

    .line 3318
    .end local v24    # "identity":J
    :cond_2a
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/app/Notification;->vibrate:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    .line 3321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v6

    .line 3322
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/app/Notification;->vibrate:[J

    .line 3323
    move-object/from16 v0, v27

    iget v8, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2b

    .line 3324
    const/4 v8, 0x0

    :goto_17
    invoke-static/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    move-result-object v9

    .line 3321
    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    .line 3325
    const/4 v14, 0x1

    goto/16 :goto_12

    .line 3324
    :cond_2b
    const/4 v8, -0x1

    goto :goto_17

    .line 3334
    .end local v20    # "hasCustomVibrate":Z
    .end local v31    # "useDefaultSound":Z
    .end local v34    # "useDefaultVibrate":Z
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    goto/16 :goto_13

    .line 3337
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    goto/16 :goto_14

    .line 3355
    .restart local v37    # "wasShowLights":Z
    :cond_2e
    if-eqz v37, :cond_e

    .line 3356
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    goto/16 :goto_15

    .line 3364
    :cond_2f
    if-eqz v14, :cond_30

    const/4 v4, 0x1

    move v6, v4

    :goto_18
    if-eqz v12, :cond_31

    const/4 v4, 0x1

    move v5, v4

    :goto_19
    if-eqz v13, :cond_32

    const/4 v4, 0x1

    .line 3363
    :goto_1a
    move-object/from16 v0, v23

    invoke-static {v0, v6, v5, v4}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    .line 3365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_16

    .line 3364
    :cond_30
    const/4 v4, 0x0

    move v6, v4

    goto :goto_18

    :cond_31
    const/4 v4, 0x0

    move v5, v4

    goto :goto_19

    :cond_32
    const/4 v4, 0x0

    goto :goto_1a
.end method

.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .locals 18
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"    # Z

    .prologue
    .line 3953
    if-nez p5, :cond_1

    const/4 v10, 0x0

    .line 3955
    .local v10, "listenerName":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v9, p4

    .line 3954
    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 3957
    const/4 v15, 0x0

    .line 3958
    .local v15, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3959
    .local v14, "N":I
    add-int/lit8 v16, v14, -0x1

    .end local v15    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v16, "i":I
    :goto_1
    if-ltz v16, :cond_5

    .line 3960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/notification/NotificationRecord;

    .line 3961
    .local v17, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz p6, :cond_2

    .line 3962
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3959
    :cond_0
    :goto_2
    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    .line 3953
    .end local v10    # "listenerName":Ljava/lang/String;
    .end local v14    # "N":I
    .end local v16    # "i":I
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 3966
    .restart local v10    # "listenerName":Ljava/lang/String;
    .restart local v14    # "N":I
    .restart local v16    # "i":I
    .restart local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3971
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x22

    if-nez v3, :cond_0

    .line 3973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3974
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p4

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 3976
    if-nez v15, :cond_4

    .line 3977
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3979
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3982
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3983
    .local v13, "M":I
    :goto_3
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v0, v13, :cond_7

    .line 3984
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 3985
    const/16 v11, 0xc

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 3984
    invoke-direct/range {v6 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V

    .line 3983
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 3982
    .end local v13    # "M":I
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "M":I
    goto :goto_3

    .line 3987
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 3952
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 18
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "mustHaveFlags"    # I
    .param p5, "mustNotHaveFlags"    # I
    .param p6, "doit"    # Z
    .param p7, "userId"    # I
    .param p8, "reason"    # I
    .param p9, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3901
    if-nez p9, :cond_1

    const/4 v10, 0x0

    .local v10, "listenerName":Ljava/lang/String;
    :goto_0
    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p8

    .line 3902
    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 3906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3907
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3908
    .local v14, "N":I
    const/4 v15, 0x0

    .line 3909
    .local v15, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    add-int/lit8 v16, v14, -0x1

    .end local v15    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v16, "i":I
    :goto_1
    if-ltz v16, :cond_7

    .line 3910
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/notification/NotificationRecord;

    .line 3911
    .local v17, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 3909
    :cond_0
    :goto_2
    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    .line 3901
    .end local v10    # "listenerName":Ljava/lang/String;
    .end local v14    # "N":I
    .end local v16    # "i":I
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p9

    iget-object v3, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 3915
    .restart local v10    # "listenerName":Ljava/lang/String;
    .restart local v14    # "N":I
    .restart local v16    # "i":I
    .restart local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    if-eqz p3, :cond_0

    .line 3918
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int v3, v3, p4

    move/from16 v0, p4

    if-ne v3, v0, :cond_0

    .line 3921
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int v3, v3, p5

    if-nez v3, :cond_0

    .line 3924
    if-eqz p3, :cond_4

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3927
    :cond_4
    if-nez v15, :cond_5

    .line 3928
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3930
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3931
    if-nez p6, :cond_6

    .line 3932
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .line 3934
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3935
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p8

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3906
    .end local v14    # "N":I
    .end local v16    # "i":I
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3937
    .restart local v14    # "N":I
    .restart local v16    # "i":I
    :cond_7
    if-eqz p6, :cond_8

    if-eqz v15, :cond_8

    .line 3938
    :try_start_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3939
    .local v13, "M":I
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v0, v13, :cond_8

    .line 3940
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 3941
    const/16 v11, 0xc

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 3940
    invoke-direct/range {v6 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V

    .line 3939
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 3944
    .end local v13    # "M":I
    :cond_8
    if-eqz v15, :cond_9

    .line 3945
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3947
    :cond_9
    if-eqz v15, :cond_a

    const/4 v3, 0x1

    :goto_4
    monitor-exit v4

    return v3

    :cond_a
    const/4 v3, 0x0

    goto :goto_4
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 14
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3833
    iget-object v13, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$9;

    move-object v1, p0

    move-object/from16 v2, p11

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p9

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p10

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZ)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3828
    return-void
.end method

.method cancelToastLocked(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 3422
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 3425
    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3426
    if-eqz v2, :cond_0

    .line 3427
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->uid:I

    const-string/jumbo v4, "cancelToastLocked"

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 3432
    :cond_0
    :try_start_0
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3440
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 3441
    .local v1, "lastToast":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;Z)V

    .line 3443
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 3444
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 3448
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V

    .line 3421
    :cond_1
    return-void

    .line 3433
    .end local v1    # "lastToast":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :catch_0
    move-exception v0

    .line 3434
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Object died trying to hide notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3435
    const-string/jumbo v5, " in package "

    .line 3434
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3435
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    .line 3434
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 2715
    const-string/jumbo v18, "Current Notification Manager state"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2716
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2717
    const-string/jumbo v18, " (filtered to "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v18, ")"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2719
    :cond_0
    const/16 v18, 0x3a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 2721
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    move/from16 v17, v0

    .line 2723
    .local v17, "zenOnly":Z
    :goto_0
    if-nez v17, :cond_4

    .line 2724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2725
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2726
    .local v4, "N":I
    if-lez v4, :cond_3

    .line 2727
    const-string/jumbo v18, "  Toast Queue:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2728
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 2729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    const-string/jumbo v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2728
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2721
    .end local v4    # "N":I
    .end local v8    # "i":I
    .end local v17    # "zenOnly":Z
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 2731
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    .restart local v17    # "zenOnly":Z
    :cond_2
    const-string/jumbo v18, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "i":I
    :cond_3
    monitor-exit v19

    .line 2736
    .end local v4    # "N":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2737
    if-nez v17, :cond_f

    .line 2738
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2739
    .restart local v4    # "N":I
    if-lez v4, :cond_8

    .line 2740
    const-string/jumbo v18, "  Notification List:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2741
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v4, :cond_7

    .line 2742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 2743
    .local v14, "nr":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    iget-object v0, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2744
    :cond_5
    const-string/jumbo v18, "    "

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2741
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2724
    .end local v4    # "N":I
    .end local v8    # "i":I
    .end local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 2746
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    :cond_7
    :try_start_2
    const-string/jumbo v18, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2749
    .end local v8    # "i":I
    :cond_8
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    .line 2750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2751
    if-lez v4, :cond_b

    .line 2752
    const-string/jumbo v18, "  Lights List:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2753
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_a

    .line 2754
    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_9

    .line 2755
    const-string/jumbo v18, "  > "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2759
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2753
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2757
    :cond_9
    const-string/jumbo v18, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 2736
    .end local v4    # "N":I
    .end local v8    # "i":I
    :catchall_1
    move-exception v18

    monitor-exit v19

    throw v18

    .line 2761
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    :cond_a
    :try_start_3
    const-string/jumbo v18, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2763
    .end local v8    # "i":I
    :cond_b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mUseAttentionLight="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2764
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mNotificationPulseEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2765
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mSoundNotificationKey="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2766
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mVibrateNotificationKey="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2767
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mDisableNotificationEffects="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2768
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mCallState="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2769
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mSystemReady="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2770
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mMaxPackageEnqueueRate="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2772
    :cond_c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mArchive="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2774
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v8, 0x0

    .line 2775
    .restart local v8    # "i":I
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 2776
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/service/notification/StatusBarNotification;

    .line 2777
    .local v16, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz p2, :cond_e

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2778
    :cond_e
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2779
    add-int/lit8 v8, v8, 0x1

    const/16 v18, 0x5

    move/from16 v0, v18

    if-lt v8, v0, :cond_d

    .line 2780
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    const-string/jumbo v18, "    ..."

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2786
    .end local v4    # "N":I
    .end local v8    # "i":I
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    .end local v16    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_f
    if-nez v17, :cond_10

    .line 2787
    const-string/jumbo v18, "\n  Usage Stats:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v18, v0

    const-string/jumbo v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2791
    :cond_10
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    if-eqz v17, :cond_12

    .line 2792
    :cond_11
    const-string/jumbo v18, "\n  Zen Mode:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2793
    const-string/jumbo v18, "    mInterruptionFilter="

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    move-object/from16 v18, v0

    const-string/jumbo v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2796
    const-string/jumbo v18, "\n  Zen Log:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2797
    const-string/jumbo v18, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2800
    :cond_12
    if-nez v17, :cond_17

    .line 2801
    const-string/jumbo v18, "\n  Ranking Config:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v18, v0

    const-string/jumbo v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2804
    const-string/jumbo v18, "\n  Notification listeners:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2806
    const-string/jumbo v18, "    mListenerHints: "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2807
    const-string/jumbo v18, "    mListenersDisablingEffects: ("

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 2809
    .restart local v4    # "N":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    if-ge v8, v4, :cond_16

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2811
    .local v7, "hint":I
    if-lez v8, :cond_13

    const/16 v18, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2812
    :cond_13
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "hint["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, "]:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    .line 2816
    .local v13, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 2818
    .local v12, "listenerSize":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_6
    if-ge v10, v12, :cond_15

    .line 2819
    if-lez v8, :cond_14

    const/16 v18, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2820
    :cond_14
    invoke-virtual {v13, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 2821
    .local v11, "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v0, v11, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2818
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 2809
    .end local v11    # "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2824
    .end local v7    # "hint":I
    .end local v10    # "j":I
    .end local v12    # "listenerSize":I
    .end local v13    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_16
    const/16 v18, 0x29

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 2825
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "\n  mRankerServicePackageName: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServicePackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    const-string/jumbo v18, "\n  Notification ranker services:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2829
    .end local v4    # "N":I
    .end local v8    # "i":I
    :cond_17
    const-string/jumbo v18, "\n  Policy access:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2830
    const-string/jumbo v18, "    mPolicyAccess: "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2832
    const-string/jumbo v18, "\n  Condition providers:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2835
    const-string/jumbo v18, "\n  Group summaries:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "entry$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2837
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    .line 2838
    .local v15, "r":Lcom/android/server/notification/NotificationRecord;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, " -> "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    if-eq v0, v15, :cond_18

    .line 2840
    const-string/jumbo v18, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2841
    const-string/jumbo v18, "      "

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_7

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v15    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_19
    monitor-exit v19

    .line 2714
    return-void
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .locals 33
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "idOut"    # [I
    .param p9, "incomingUserId"    # I

    .prologue
    .line 2886
    sget-boolean v5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v5, :cond_0

    .line 2887
    const-string/jumbo v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enqueueNotificationInternal: pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2888
    const-string/jumbo v7, " notification="

    .line 2887
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 2891
    invoke-static/range {p3 .. p3}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "android"

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    .line 2892
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->-wrap0(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Ljava/lang/String;)Z

    move-result v25

    .line 2895
    .local v25, "isNotificationFromListener":Z
    const-string/jumbo v9, "enqueueNotification"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, p9

    move-object/from16 v10, p1

    .line 2894
    invoke-static/range {v4 .. v10}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v32

    .line 2896
    .local v32, "userId":I
    new-instance v13, Landroid/os/UserHandle;

    move/from16 v0, v32

    invoke-direct {v13, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 2900
    .local v13, "user":Landroid/os/UserHandle;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2902
    const/4 v5, -0x1

    move/from16 v0, v32

    if-ne v0, v5, :cond_3

    const/4 v5, 0x0

    .line 2901
    :goto_1
    const/high16 v7, 0x10000000

    .line 2900
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 2903
    .local v15, "ai":Landroid/content/pm/ApplicationInfo;
    move/from16 v0, v32

    move-object/from16 v1, p7

    invoke-static {v15, v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2909
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByApp(Ljava/lang/String;)V

    .line 2912
    if-eqz p1, :cond_1

    if-nez p7, :cond_4

    .line 2913
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "null not allowed: pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2914
    const-string/jumbo v7, " id="

    .line 2913
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2914
    const-string/jumbo v7, " notification="

    .line 2913
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2891
    .end local v13    # "user":Landroid/os/UserHandle;
    .end local v15    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v25    # "isNotificationFromListener":Z
    .end local v32    # "userId":I
    :cond_2
    const/16 v26, 0x1

    .local v26, "isSystemNotification":Z
    goto/16 :goto_0

    .end local v26    # "isSystemNotification":Z
    .restart local v13    # "user":Landroid/os/UserHandle;
    .restart local v25    # "isNotificationFromListener":Z
    .restart local v32    # "userId":I
    :cond_3
    move/from16 v5, v32

    .line 2902
    goto :goto_1

    .line 2904
    :catch_0
    move-exception v22

    .line 2905
    .local v22, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "NotificationService"

    const-string/jumbo v6, "Cannot create a context for sending app"

    move-object/from16 v0, v22

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2906
    return-void

    .line 2916
    .end local v22    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_4
    new-instance v4, Landroid/service/notification/StatusBarNotification;

    .line 2917
    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p6

    move-object/from16 v8, p5

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v12, p7

    .line 2916
    invoke-direct/range {v4 .. v13}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2921
    .local v4, "n":Landroid/service/notification/StatusBarNotification;
    const/16 v27, 0x0

    .line 2922
    .local v27, "mustShow":Z
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    .line 2923
    .local v18, "b":Landroid/os/Bundle;
    if-eqz v18, :cond_5

    .line 2924
    const-string/jumbo v5, "oneplus.mustShow"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 2929
    .end local v27    # "mustShow":Z
    :cond_5
    if-nez v26, :cond_6

    if-eqz v25, :cond_8

    .line 2967
    :cond_6
    :goto_2
    move-object/from16 v0, p7

    iget-object v5, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-eqz v5, :cond_e

    .line 2968
    move-object/from16 v0, p7

    iget-object v5, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v24

    .line 2969
    .local v24, "intentCount":I
    if-lez v24, :cond_e

    .line 2971
    const-class v5, Landroid/app/ActivityManagerInternal;

    .line 2970
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManagerInternal;

    .line 2973
    .local v16, "am":Landroid/app/ActivityManagerInternal;
    const-class v5, Lcom/android/server/DeviceIdleController$LocalService;

    .line 2972
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController$LocalService;->getNotificationWhitelistDuration()J

    move-result-wide v20

    .line 2974
    .local v20, "duration":J
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    .line 2975
    move-object/from16 v0, p7

    iget-object v5, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/app/PendingIntent;

    .line 2976
    .local v30, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v30, :cond_7

    .line 2977
    invoke-virtual/range {v30 .. v30}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v5

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ActivityManagerInternal;->setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;J)V

    .line 2974
    :cond_7
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 2929
    .end local v16    # "am":Landroid/app/ActivityManagerInternal;
    .end local v20    # "duration":J
    .end local v23    # "i":I
    .end local v24    # "intentCount":I
    .end local v30    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_8
    if-nez v27, :cond_6

    .line 2930
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2931
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 2933
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationUsageStats;->getAppEnqueueRate(Ljava/lang/String;)F

    move-result v17

    .line 2934
    .local v17, "appEnqueueRate":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    cmpl-float v5, v17, v5

    if-lez v5, :cond_a

    .line 2935
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerOverRateQuota(Ljava/lang/String;)V

    .line 2936
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    .line 2937
    .local v28, "now":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    sub-long v8, v28, v8

    const-wide/16 v10, 0x1388

    cmp-long v5, v8, v10

    if-lez v5, :cond_9

    .line 2938
    const-string/jumbo v5, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package enqueue rate is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2939
    const-string/jumbo v8, ". Shedding events. package="

    .line 2938
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    monitor-exit v6

    .line 2942
    return-void

    .line 2946
    .end local v17    # "appEnqueueRate":F
    .end local v28    # "now":J
    :cond_a
    const/16 v19, 0x0

    .line 2947
    .local v19, "count":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2948
    .local v14, "N":I
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_4
    move/from16 v0, v23

    if-ge v0, v14, :cond_b

    .line 2949
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/notification/NotificationRecord;

    .line 2950
    .local v31, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    move/from16 v0, v32

    if-ne v5, v0, :cond_d

    .line 2951
    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    move/from16 v0, p6

    if-ne v5, v0, :cond_c

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_c

    .end local v31    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_b
    monitor-exit v6

    goto/16 :goto_2

    .line 2954
    .restart local v31    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_c
    add-int/lit8 v19, v19, 0x1

    .line 2955
    const/16 v5, 0x32

    move/from16 v0, v19

    if-lt v0, v5, :cond_d

    .line 2956
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerOverCountQuota(Ljava/lang/String;)V

    .line 2957
    const-string/jumbo v5, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package has already posted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2958
    const-string/jumbo v8, " notifications.  Not showing more.  package="

    .line 2957
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 2959
    return-void

    .line 2948
    :cond_d
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    .line 2930
    .end local v14    # "N":I
    .end local v19    # "count":I
    .end local v23    # "i":I
    .end local v31    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2984
    :cond_e
    move-object/from16 v0, p7

    iget v5, v0, Landroid/app/Notification;->priority:I

    const/4 v6, -0x2

    .line 2985
    const/4 v7, 0x2

    .line 2984
    invoke-static {v5, v6, v7}, Lcom/android/server/notification/NotificationManagerService;->clamp(III)I

    move-result v5

    move-object/from16 v0, p7

    iput v5, v0, Landroid/app/Notification;->priority:I

    new-instance v31, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-direct {v0, v5, v4}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    .line 2989
    .restart local v31    # "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v31

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2991
    const/4 v5, 0x0

    aput p6, p8, v5

    .line 2885
    return-void
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 4105
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4106
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4107
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4108
    return v1

    .line 4106
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4111
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 4091
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 4092
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4093
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4094
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 4095
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p3, :cond_0

    .line 4096
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 4095
    if-eqz v4, :cond_0

    .line 4096
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 4095
    if-eqz v4, :cond_0

    .line 4097
    return v0

    .line 4093
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4100
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;

    .prologue
    .line 3474
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3475
    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 3476
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3477
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3478
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 3479
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 3480
    return v1

    .line 3477
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3483
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1
    const/4 v5, -0x1

    return v5
.end method

.method public isNotificationLedEnabledImpl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method keepProcessAliveIfNeededLocked(I)V
    .locals 9
    .param p1, "pid"    # I

    .prologue
    const/4 v6, 0x0

    .line 3489
    const/4 v5, 0x0

    .line 3490
    .local v5, "toastCount":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 3491
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3492
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3493
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 3494
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget v7, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    if-ne v7, p1, :cond_0

    .line 3495
    add-int/lit8 v5, v5, 0x1

    .line 3492
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3499
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v5, :cond_2

    const/4 v6, 0x1

    :cond_2
    invoke-interface {v7, v8, p1, v6}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3487
    :goto_1
    return-void

    .line 3500
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 1418
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 1420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 1423
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 1424
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 1425
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    .line 1426
    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 1427
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1428
    :cond_1
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 1432
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    .line 1433
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->onBootPhaseAppsCanStart()V

    .line 1434
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 23

    .prologue
    .line 1161
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 1163
    .local v21, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1164
    const-string/jumbo v2, "max_notification_enqueue_rate"

    .line 1165
    const/high16 v3, 0x41200000    # 10.0f

    .line 1163
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 1167
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 1168
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1169
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 1170
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServicePackageName:Ljava/lang/String;

    .line 1176
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    const v1, #android:array@config_notificationSignalExtractors#t

    :try_start_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 1184
    .local v18, "extractorNames":[Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1185
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 1186
    new-instance v1, Lcom/android/server/notification/RankingHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 1188
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1186
    move-object/from16 v0, v18

    invoke-direct {v1, v2, v3, v5, v0}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1190
    new-instance v1, Lcom/android/server/notification/ConditionProviders;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 1191
    new-instance v1, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 1215
    new-instance v22, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    move-object/from16 v0, v22

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1216
    .local v22, "systemDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "notification_policy.xml"

    move-object/from16 v0, v22

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 1218
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->syncBlockDb()V

    .line 1222
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "notification_led_policy.xml"

    move-object/from16 v0, v22

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedPolicyFile:Landroid/util/AtomicFile;

    .line 1223
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->loadNotificationLedPolicyFile()V

    .line 1227
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1230
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    .line 1232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->registerRanker()V

    .line 1234
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v1, :cond_0

    .line 1236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 1239
    :cond_0
    const-class v1, Lcom/android/server/lights/LightsManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/lights/LightsManager;

    .line 1240
    .local v20, "lights":Lcom/android/server/lights/LightsManager;
    const/4 v1, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1241
    const/4 v1, 0x5

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    const v1, #android:color@config_defaultNotificationColor#t

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    const v1, #android:integer@config_defaultNotificationLedOn#t

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    const v1, #android:integer@config_defaultNotificationLedOff#t

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    const v2, #android:array@config_defaultNotificationVibePattern#t

    const/16 v3, 0x11

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J

    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    const v2, #android:array@config_notificationFallbackVibePattern#t

    const/16 v3, 0x11

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    const v1, #android:bool@config_useAttentionLight#t

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    const v1, #android:integer@config_lowBatteryWarningLevel#t

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefLowBatteryWarningLevel:I

    .line 1272
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1273
    const-string/jumbo v2, "device_provisioned"

    const/4 v3, 0x0

    .line 1272
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1274
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    .line 1276
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    .line 1277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 1279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 1280
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V

    .line 1283
    new-instance v19, Landroid/content/IntentFilter;

    invoke-direct/range {v19 .. v19}, Landroid/content/IntentFilter;-><init>()V

    .line 1284
    .local v19, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1285
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1286
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1287
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1288
    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1289
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1290
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1291
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1292
    const-string/jumbo v1, "android.intent.action.USER_UNLOCKED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1293
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1296
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v1, :cond_2

    .line 1297
    const-string/jumbo v1, "action.appboot.notification_listener_update"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1300
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1302
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1303
    .local v4, "pkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1304
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1305
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1306
    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1307
    const-string/jumbo v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1308
    const-string/jumbo v1, "package"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1309
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    .line 1310
    const/4 v6, 0x0

    .line 1309
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1312
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1313
    .local v8, "suspendedPkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1315
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1314
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1317
    new-instance v12, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v12, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1318
    .local v12, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    .line 1319
    const/4 v14, 0x0

    .line 1318
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1321
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v2, #android:integer@config_notificationServiceArchiveSize#t

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 1326
    const-string/jumbo v1, "notification"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1327
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    const-string v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    .local v15, "b":Landroid/os/IBinder;
    invoke-static {v15}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 1334
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->initLockAppList()V

    .line 1335
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$8;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    const/16 v3, 0x3f

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    .end local v4    # "pkgFilter":Landroid/content/IntentFilter;
    .end local v8    # "suspendedPkgFilter":Landroid/content/IntentFilter;
    .end local v12    # "sdFilter":Landroid/content/IntentFilter;
    .end local v15    # "b":Landroid/os/IBinder;
    .end local v18    # "extractorNames":[Ljava/lang/String;
    .end local v19    # "filter":Landroid/content/IntentFilter;
    .end local v20    # "lights":Lcom/android/server/lights/LightsManager;
    .end local v22    # "systemDir":Ljava/io/File;
    :catch_0
    move-exception v16

    .line 1182
    .local v16, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v18, v0

    .restart local v18    # "extractorNames":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1359
    .end local v16    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v4    # "pkgFilter":Landroid/content/IntentFilter;
    .restart local v8    # "suspendedPkgFilter":Landroid/content/IntentFilter;
    .restart local v12    # "sdFilter":Landroid/content/IntentFilter;
    .restart local v15    # "b":Landroid/os/IBinder;
    .restart local v19    # "filter":Landroid/content/IntentFilter;
    .restart local v20    # "lights":Lcom/android/server/lights/LightsManager;
    .restart local v22    # "systemDir":Ljava/io/File;
    :catch_1
    move-exception v17

    .local v17, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public saveNotificationLedPolicyFile()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 553
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 552
    return-void
.end method

.method public savePolicyFile()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 466
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 465
    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 3714
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3715
    return-void

    .line 3719
    :cond_0
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3720
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3721
    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3722
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 3723
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3724
    .local v2, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3725
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3728
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3712
    return-void
.end method

.method setAudioManager(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "audioMananger"    # Landroid/media/AudioManager;

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 1135
    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    .line 1150
    return-void
.end method

.method public setNotificationLedStatusImpl(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .prologue
    .line 592
    if-eqz p2, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 597
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->saveNotificationLedPolicyFile()V

    .line 591
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1439
    const-string/jumbo v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const-string/jumbo v0, "en"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "abling notifications for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1442
    if-eqz p3, :cond_1

    move v0, v4

    .line 1441
    :goto_1
    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2, p1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1445
    if-eqz p3, :cond_2

    .line 1438
    :goto_2
    return-void

    .line 1439
    :cond_0
    const-string/jumbo v0, "dis"

    goto :goto_0

    :cond_1
    move v0, v6

    .line 1442
    goto :goto_1

    .line 1446
    :cond_2
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1447
    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    .line 1446
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    goto :goto_2
.end method

.method setSystemNotificationSound(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemNotificationSound"    # Ljava/lang/String;

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemNotificationSound:Ljava/lang/String;

    .line 1155
    return-void
.end method

.method setSystemReady(Z)V
    .locals 0
    .param p1, "systemReady"    # Z

    .prologue
    .line 1146
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 1145
    return-void
.end method

.method setVibrator(Landroid/os/Vibrator;)V
    .locals 0
    .param p1, "vibrator"    # Landroid/os/Vibrator;

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 1140
    return-void
.end method

.method showNextToastLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3389
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 3390
    :goto_0
    if-eqz v2, :cond_4

    .line 3391
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Show pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    :cond_0
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3394
    if-eqz v2, :cond_1

    .line 3395
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->uid:I

    const-string/jumbo v4, "showNextToastLocked"

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 3400
    :cond_1
    :try_start_0
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    iget-object v4, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    invoke-interface {v3, v4}, Landroid/app/ITransientNotification;->show(Landroid/os/IBinder;)V

    .line 3401
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3402
    return-void

    .line 3403
    :catch_0
    move-exception v0

    .line 3404
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3405
    const-string/jumbo v5, " in package "

    .line 3404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3405
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    .line 3404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3408
    .local v1, "index":I
    if-ltz v1, :cond_2

    .line 3409
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3411
    :cond_2
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 3412
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 3413
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto/16 :goto_0

    .line 3415
    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_3
    const/4 v2, 0x0

    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto/16 :goto_0

    .line 3388
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "index":I
    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_4
    return-void
.end method

.method updateLightsLocked()V
    .locals 17

    .prologue
    .line 4024
    const/4 v6, 0x0

    .line 4025
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 4040
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v14}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 4041
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "oem_allow_led_light"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_9

    const/4 v4, 0x1

    .line 4042
    .local v4, "disableLedInZenMode":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Landroid/content/IntentFilter;

    const-string/jumbo v16, "android.intent.action.BATTERY_CHANGED"

    invoke-direct/range {v15 .. v16}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 4043
    .local v2, "batteryStatus":Landroid/content/Intent;
    const/4 v10, 0x0

    .line 4044
    .local v10, "lowBattery":Z
    const/4 v13, 0x0

    .line 4045
    .local v13, "powerConnected":Z
    if-eqz v2, :cond_2

    .line 4046
    const-string/jumbo v14, "level"

    const/4 v15, -0x1

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4047
    .local v1, "batteryLevel":I
    const-string/jumbo v14, "plugged"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 4048
    .local v3, "chargePlug":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/notification/NotificationManagerService;->mDefLowBatteryWarningLevel:I

    if-gt v1, v14, :cond_b

    const/4 v10, 0x1

    .line 4049
    :goto_2
    if-eqz v3, :cond_c

    const/4 v13, 0x1

    .line 4052
    .end local v1    # "batteryLevel":I
    .end local v3    # "chargePlug":I
    :cond_2
    :goto_3
    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-nez v14, :cond_d

    if-nez v4, :cond_d

    if-eqz v10, :cond_3

    if-eqz v13, :cond_d

    .line 4058
    :cond_3
    iget-object v14, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 4059
    .local v12, "packageName":Ljava/lang/String;
    iget-object v14, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 4060
    .local v9, "ledno":Landroid/app/Notification;
    iget v5, v9, Landroid/app/Notification;->ledARGB:I

    .line 4061
    .local v5, "ledARGB":I
    iget v8, v9, Landroid/app/Notification;->ledOnMS:I

    .line 4062
    .local v8, "ledOnMS":I
    iget v7, v9, Landroid/app/Notification;->ledOffMS:I

    .line 4063
    .local v7, "ledOffMS":I
    iget v14, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_4

    .line 4064
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    .line 4065
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 4066
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    .line 4068
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eqz v14, :cond_6

    .line 4071
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/notification/NotificationManagerService;->isNotificationLedEnabledImpl(Ljava/lang/String;)Z

    move-result v14

    .line 4068
    if-eqz v14, :cond_6

    .line 4072
    sget-boolean v14, Lcom/android/server/notification/NotificationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v14, :cond_5

    .line 4073
    const-string/jumbo v15, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v0, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 4074
    const-string/jumbo v16, ", "

    .line 4073
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4074
    iget v14, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_e

    const-string/jumbo v14, "default"

    .line 4073
    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 4075
    const-string/jumbo v16, " LED color "

    .line 4073
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 4075
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    .line 4073
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 4075
    const-string/jumbo v16, " flashing"

    .line 4073
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    const/4 v15, 0x1

    invoke-virtual {v14, v5, v15, v8, v7}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 4081
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v14, :cond_7

    .line 4083
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v14, v5, v8, v7}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightPulse(III)V

    .line 4021
    .end local v5    # "ledARGB":I
    .end local v7    # "ledOffMS":I
    .end local v8    # "ledOnMS":I
    .end local v9    # "ledno":Landroid/app/Notification;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_7
    :goto_5
    return-void

    .line 4026
    .end local v2    # "batteryStatus":Landroid/content/Intent;
    .end local v4    # "disableLedInZenMode":Z
    .end local v10    # "lowBattery":Z
    .end local v13    # "powerConnected":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 4027
    .local v11, "owner":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v14, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 4028
    .local v6, "ledNotification":Lcom/android/server/notification/NotificationRecord;
    if-nez v6, :cond_0

    .line 4029
    const-string/jumbo v14, "NotificationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "LED Notification does not exist: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4041
    .end local v6    # "ledNotification":Lcom/android/server/notification/NotificationRecord;
    .end local v11    # "owner":Ljava/lang/String;
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "disableLedInZenMode":Z
    goto/16 :goto_1

    .line 4040
    .end local v4    # "disableLedInZenMode":Z
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "disableLedInZenMode":Z
    goto/16 :goto_1

    .line 4048
    .restart local v1    # "batteryLevel":I
    .restart local v2    # "batteryStatus":Landroid/content/Intent;
    .restart local v3    # "chargePlug":I
    .restart local v10    # "lowBattery":Z
    .restart local v13    # "powerConnected":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 4049
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 4053
    .end local v1    # "batteryLevel":I
    .end local v3    # "chargePlug":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v14}, Lcom/android/server/lights/Light;->turnOff()V

    .line 4054
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v14, :cond_7

    .line 4055
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v14}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    goto :goto_5

    .line 4074
    .restart local v5    # "ledARGB":I
    .restart local v7    # "ledOffMS":I
    .restart local v8    # "ledOnMS":I
    .restart local v9    # "ledno":Landroid/app/Notification;
    .restart local v12    # "packageName":Ljava/lang/String;
    :cond_e
    const-string/jumbo v14, "app defined"

    goto/16 :goto_4
.end method

.method private addFlymeOrigPackageName(Landroid/service/notification/Adjustment;Landroid/app/Notification;)V
    .locals 4
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;
    .param p2, "summaryNotification"    # Landroid/app/Notification;

    .prologue
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .local v1, "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    iget-object v0, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .local v0, "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/android/server/notification/CloudNotificationHelper;->putOrigPackageName(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addFlymePackageRemoveByUserNumber(Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/16 v0, 0xa

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/RankingHelper;->addPackageRemoveByUserNumber(Lcom/android/server/notification/NotificationRecord;)V

    :cond_1
    return-void
.end method

.method private initFlymeExtraFields()V
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationFirewallImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeFirewall:Lcom/android/server/notification/NotificationFirewall;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeFirewall:Lcom/android/server/notification/NotificationFirewall;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/RankingHelper;->setNotificationFirewall(Lcom/android/server/notification/NotificationFirewall;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeInterceptThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "intercept"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeInterceptThread:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeInterceptThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeFirewall:Lcom/android/server/notification/NotificationFirewall;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeInterceptThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/notification/NotificationFirewall;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymePowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymePowerManager:Landroid/os/PowerManager;

    const-string v1, "NotificationService"

    const v2, 0x3000001a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private isSystemApp(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    return v3

    :cond_0
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    return v3
.end method

.method private notifyFlymeWakeupScreen(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->shouldFlymeNotifyWakeupScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeUpScreenRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$FlymeWakeUpScreenRunnable;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$FlymeWakeUpScreenRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeUpScreenRunnable:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeUpScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private shouldFlymeNotifyWakeupScreen(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_show_notifications"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    const/4 v0, 0x1

    .local v0, "isLockScreenShowNotification":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_wakeup_screen"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    .local v1, "isNotifyWakeupScreen":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    return v5

    .end local v0    # "isLockScreenShowNotification":Z
    .end local v1    # "isNotifyWakeupScreen":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isLockScreenShowNotification":Z
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isNotifyWakeupScreen":Z
    goto :goto_1

    :cond_2
    return v4
.end method

.method addFlymePackageClickNumber(IILjava/lang/String;)V
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/RankingHelper;->addPackageClickNumber(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method addFlymePackageSendNumber(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/RankingHelper;->addPackageSendNumber(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method callFlymeReplyIntent(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/android/server/notification/CloudNotificationHelper;->callReplyIntent(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;I)V

    return-void
.end method

.method flymeGetFieldRankingHelper()Lcom/android/server/notification/RankingHelper;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-object v0
.end method

.method isFlymeNotificationHideFlag(Landroid/app/Notification;)Z
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v0, 0x0

    iget v1, p1, Landroid/app/Notification;->flags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method setFlymeNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
    .locals 26
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "user"    # Landroid/os/UserHandle;

    .prologue
    move-object/from16 v0, p7

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/notification/CloudNotificationHelper;->getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "origPkgName":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v21, p3

    .local v21, "origPkgUid":I
    :goto_0
    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v16

    .local v16, "isSystemApp":Z
    invoke-static/range {p3 .. p3}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    :goto_1
    new-instance v2, Landroid/service/notification/StatusBarNotification;

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p6

    move-object/from16 v6, p5

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .local v2, "temp":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/notification/NotificationRecord;

    .local v19, "old":Lcom/android/server/notification/NotificationRecord;
    const/4 v12, 0x0

    .local v12, "filter":Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
    move-object/from16 v0, p7

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_6

    move-object/from16 v0, p7

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_6

    move-object/from16 v0, p7

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_5

    const/4 v15, 0x1

    .local v15, "isClearable":Z
    :goto_2
    if-eqz v19, :cond_7

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, v3, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->copy()Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    move-result-object v12

    .local v12, "filter":Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
    iput-object v12, v2, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    new-instance v4, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v3, v4}, Lcom/android/server/notification/RankingHelper;->getPackageCategoryScore(Lcom/android/server/notification/NotificationRecord;)F

    move-result v22

    .local v22, "packageCategoryScore":F
    move/from16 v0, v22

    iput v0, v12, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    iget-boolean v3, v12, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    cmpg-float v3, v22, v3

    if-gtz v3, :cond_8

    iget v3, v12, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    const/4 v3, 0x1

    :goto_4
    iput-boolean v3, v12, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-nez v16, :cond_0

    if-eqz v17, :cond_9

    :cond_0
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "headsup"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .local v13, "flag":I
    const/4 v3, 0x2

    if-ne v13, v3, :cond_1

    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "headsup"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v13    # "flag":I
    :cond_1
    :goto_5
    iget-boolean v14, v12, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    .local v14, "intercept":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lmeizu/space/MSpaceControllerImpl;->getController(Landroid/content/Context;)Lmeizu/space/MSpaceController;

    move-result-object v18

    .local v18, "mSpaceController":Lmeizu/space/MSpaceController;
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lmeizu/space/MSpaceController;->isSilenceNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v24

    .local v24, "silence":Z
    if-nez v24, :cond_d

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/RankingHelper;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d

    :goto_6
    iget-boolean v3, v12, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    if-eqz v3, :cond_2

    iget v3, v12, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    iget v4, v12, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .local v23, "priority":I
    const/4 v3, -0x2

    move/from16 v0, v23

    if-lt v0, v3, :cond_2

    const/4 v3, 0x2

    move/from16 v0, v23

    if-gt v0, v3, :cond_2

    move/from16 v0, v23

    move-object/from16 v1, p7

    iput v0, v1, Landroid/app/Notification;->priority:I

    .end local v23    # "priority":I
    :cond_2
    return-object v12

    .end local v2    # "temp":Landroid/service/notification/StatusBarNotification;
    .end local v12    # "filter":Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
    .end local v14    # "intercept":Z
    .end local v15    # "isClearable":Z
    .end local v16    # "isSystemApp":Z
    .end local v18    # "mSpaceController":Lmeizu/space/MSpaceController;
    .end local v19    # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v21    # "origPkgUid":I
    .end local v22    # "packageCategoryScore":F
    .end local v24    # "silence":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move-object/from16 v0, v20

    invoke-static {v3, v0, v4}, Lcom/android/server/notification/CloudNotificationHelper;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v21

    goto/16 :goto_0

    .restart local v16    # "isSystemApp":Z
    .restart local v21    # "origPkgUid":I
    :cond_4
    const/16 v17, 0x1

    .local v17, "isSystemNotification":Z
    goto/16 :goto_1

    .end local v17    # "isSystemNotification":Z
    .restart local v2    # "temp":Landroid/service/notification/StatusBarNotification;
    .local v12, "filter":Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
    .restart local v19    # "old":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    const/4 v15, 0x0

    .restart local v15    # "isClearable":Z
    goto/16 :goto_2

    .end local v15    # "isClearable":Z
    :cond_6
    const/4 v15, 0x0

    .restart local v15    # "isClearable":Z
    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mFlymeFirewall:Lcom/android/server/notification/NotificationFirewall;

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v3, v2, v0, v1, v15}, Lcom/android/server/notification/NotificationFirewall;->interceptNotification(Landroid/service/notification/StatusBarNotification;ZZZ)Z

    iget-object v3, v2, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->copy()Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    move-result-object v12

    .local v12, "filter":Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
    goto/16 :goto_3

    .restart local v22    # "packageCategoryScore":F
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/RankingHelper;->getPackageHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v25

    .local v25, "visibility":I
    const/4 v3, 0x1

    move/from16 v0, v25

    if-eq v0, v3, :cond_a

    if-eqz v15, :cond_b

    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "headsup"

    move/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v25    # "visibility":I
    :cond_a
    :goto_7
    iget-boolean v3, v12, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "headsup"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    .restart local v25    # "visibility":I
    :cond_b
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "headsup"

    const/4 v5, 0x2

    move/from16 v0, v25

    if-eq v0, v5, :cond_c

    .end local v25    # "visibility":I
    :goto_8
    move/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    .restart local v25    # "visibility":I
    :cond_c
    const/16 v25, 0x1

    goto :goto_8

    .end local v25    # "visibility":I
    .restart local v14    # "intercept":Z
    .restart local v18    # "mSpaceController":Lmeizu/space/MSpaceController;
    .restart local v24    # "silence":Z
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p7

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p7

    iput-object v3, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v0, p7

    iget v3, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x3

    move-object/from16 v0, p7

    iput v3, v0, Landroid/app/Notification;->defaults:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p7

    iput v3, v0, Landroid/app/Notification;->defaults:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x5

    move-object/from16 v0, p7

    iput v3, v0, Landroid/app/Notification;->defaults:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p7

    iput v3, v0, Landroid/app/Notification;->flags:I

    goto/16 :goto_6
.end method

.method setFlymeNotificationFilter(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;)V
    .locals 0
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "filter"    # Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    .prologue
    iput-object p2, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    return-void
.end method
