.class public Lcom/android/server/am/OnePlusProcessManager;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;,
        Lcom/android/server/am/OnePlusProcessManager$Traffic;,
        Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;,
        Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;,
        Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;,
        Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;,
        Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final APP_CFG_FILE:Ljava/lang/String; = "cfg.xml"

.field private static final APP_CFG_PATH:Ljava/lang/String; = "/data/data_bpm/cfg.xml"

.field private static final APP_WIDGET_FILE:Ljava/lang/String; = "appwidgets.xml"

.field private static final APP_WIDGET_PATH:Ljava/lang/String; = "/data/data_bpm/appwidgets.xml"

.field private static ASSERTCHECK:Ljava/lang/String; = null

.field private static final BAD_APPS_FILE:Ljava/lang/String; = "bad_apps.xml"

.field private static final BAD_APPS_PATH:Ljava/lang/String; = "/data/data_bpm/bad_apps.xml"

.field private static final BLACK_ALARM_FILE:Ljava/lang/String; = "black_alarm.xml"

.field private static final BLACK_ALARM_PATH:Ljava/lang/String; = "/data/data_bpm/black_alarm.xml"

.field private static final BLACK_BRD_APP_FILE:Ljava/lang/String; = "black_brd.xml"

.field private static final BLACK_BRD_APP_PATH:Ljava/lang/String; = "/data/data_bpm/black_brd.xml"

.field private static final BLACK_BROADCAST_FILE:Ljava/lang/String; = "black_broadcast.xml"

.field private static final BLACK_BROADCAST_PATH:Ljava/lang/String; = "/data/data_bpm/black_broadcast.xml"

.field private static final BLACK_GPS_APP_FILE:Ljava/lang/String; = "black_gps.xml"

.field private static final BLACK_GPS_APP_PATH:Ljava/lang/String; = "/data/data_bpm/black_gps.xml"

.field private static final BPM_DIR:Ljava/lang/String; = "/data/data_bpm/"

.field private static final BPM_FILE:Ljava/lang/String; = "bpm.xml"

.field private static final BPM_PATH:Ljava/lang/String; = "/data/data_bpm/bpm.xml"

.field private static final BPM_STATUS_FILE:Ljava/lang/String; = "bpm_sts.xml"

.field public static final BPM_STATUS_PATH:Ljava/lang/String; = "/data/data_bpm/bpm_sts.xml"

.field private static final BRD_FILE:Ljava/lang/String; = "brd.xml"

.field private static final BRD_PATH:Ljava/lang/String; = "/data/data_bpm/brd.xml"

.field private static CFG_VERSOON:I = 0x0

.field private static CONFIG_NAME:Ljava/lang/String; = null

.field public static DEBUG:Z = false

.field public static DEBUG_DETAIL:Z = false

.field public static DEBUG_ONEPLUS:Z = false

.field private static final DEVICE_IDLE_SERVICE:Ljava/lang/String; = "deviceidle"

.field private static final FORCE_SWITCH_IGNORE:I = 0x0

.field private static final FORCE_SWITCH_OFF:I = 0x2

.field private static final FORCE_SWITCH_ON:I = 0x1

.field private static final GET_CONFIG:I = 0x1

.field private static final INIT_CONFIG_DATA:I = 0x70

.field private static final MESSAGE_CLEAR_BROADCAST_HISTORY:I = 0x75

.field private static final MESSAGE_COMPLUTE_TRAFFIC:I = 0x74

.field private static final MESSAGE_SUSPEND_DELAY:I = 0x71

.field private static final MESSAGE_SUSPEND_UID_ADDPID:I = 0x73

.field private static final MESSAGE_UPDATE_FORGEGROUND:I = 0x77

.field private static final MESSAGE_UPDATE_STATE:I = 0x76

.field private static final MESSAGE_WRITE_PID_DELAY:I = 0x72

.field private static final PHONE_PKG_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final PKG_FILE:Ljava/lang/String; = "pkg.xml"

.field private static final PKG_PATH:Ljava/lang/String; = "/data/data_bpm/pkg.xml"

.field public static final POLICY_USE_CGROUP:Z = true

.field private static final PROP_USING:Ljava/lang/String; = "persist.sys.cgroup.using"

.field static final ReceiverFailMax:I = 0x4

.field static final ResumeBroadcastMax:I = 0x3

.field private static SCREEN_OFF_CHECKFORZEN:Ljava/lang/String; = null

.field private static SCREEN_OFF_FORCESTOP_AUDIO:I = 0x0

.field private static SCREEN_OFF_FORCESTOP_FOREPACKAGE:I = 0x0

.field private static SCREEN_OFF_FORCESTOP_GPS:I = 0x0

.field private static SCREEN_OFF_FORCESTOP_OTHER:I = 0x0

.field private static SCREEN_OFF_FORCESTOP_SHOW:I = 0x0

.field private static SCREEN_OFF_FORCESTOP_SKIP:I = 0x0

.field private static SCREEN_OFF_FORCESTOP_SUCESS:I = 0x0

.field private static SCREEN_OFF_FORCESTOP_WAKELOCK:I = 0x0

.field private static SCREEN_OFF_INTENT:Ljava/lang/String; = null

.field private static final START_WATCHING:I = 0x6f

.field private static final SUSPEND_DELAY:J = 0xfde8L

.field static final SUSPEND_DELAY_DEFAULT:I = 0x1

.field static final SUSPEND_DELAY_LONG:I = 0x3

.field static final SUSPEND_DELAY_SHORT:I = 0x2

.field private static final SUSPEND_PRE_APP_DELAY:J = 0x30d40L

.field private static final SYS_BLACK_ALARM_FILE:Ljava/lang/String; = "/system/bpm/black_alarm.xml"

.field private static final SYS_BLACK_BRD_FILE:Ljava/lang/String; = "/system/bpm/black_brd.xml"

.field private static final SYS_BLACK_BRODCAST_FILE:Ljava/lang/String; = "/system/bpm/black_broadcast.xml"

.field private static final SYS_BLACK_GPS_FILE:Ljava/lang/String; = "/system/bpm/black_gps.xml"

.field private static final SYS_BRD_FILE:Ljava/lang/String; = "/system/bpm/brd.xml"

.field private static final SYS_CFG_FILE:Ljava/lang/String; = "/system/bpm/cfg.xml"

.field private static final SYS_PKG_FILE:Ljava/lang/String; = "/system/bpm/pkg.xml"

.field public static final SYS_STATUS_FILE:Ljava/lang/String; = "/system/bpm/bpm_sts.xml"

.field private static final SYS_VERSION_FILE:Ljava/lang/String; = "/system/bpm/version.xml"

.field public static final TAG:Ljava/lang/String; = "OnePlusProcessManager"

.field private static final TRAFFIC_THRESHOLD:J = 0x19000L

.field private static final UPDATE_APPWIDGET:I = 0x69

.field private static final UPDATE_BAD:I = 0x68

.field private static final UPDATE_BPM:I = 0x65

.field private static final UPDATE_BRD:I = 0x66

.field private static final UPDATE_PKG:I = 0x67

.field private static final UPDATE_STS:I = 0x64

.field public static final VERSION:I = 0xe69999

.field private static final VERSION_FILE:Ljava/lang/String; = "version.xml"

.field private static final VERSION_PATH:Ljava/lang/String; = "/data/data_bpm/version.xml"

.field static broadcastHistoryTime:J = 0x0L

.field static computeTrafficTime:J = 0x0L

.field private static isAlarmAdjust:Z = false

.field private static isChargeringCloseForzen:Z = false

.field static isFozenDelay:Z = false

.field static isSuppoerted:Z = false

.field private static isUsing:Z = false

.field private static lm:Lcom/android/server/LocationManagerService; = null

.field public static mActivityManager:Lcom/android/server/am/ActivityManagerService; = null

.field static mAdjustUids:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mAlarmManager:Landroid/app/AlarmManager; = null

.field static mAudioUids:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mBPMStatus:Z = false

.field private static mBPMStatusing:Z = false

.field static final mCgroupFreezerPath:Ljava/lang/String; = "/sys/fs/cgroup/freezer/"

.field private static mCharging:Z

.field private static mDeviceIdleService:Landroid/os/IDeviceIdleController;

.field static mDoThawedUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mFozenCount:I

.field static mLoactionFailUidsCount:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mLock:Ljava/lang/Object;

.field public static mLockProcess:Ljava/lang/Object;

.field public static mMessageLock:Ljava/lang/Object;

.field private static mNotification:Landroid/app/INotificationManager;

.field private static mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field static mPendingUid:I

.field static mPhoneAppReady:Z

.field public static mProcess:Ljava/lang/Object;

.field static mReportWakelockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mResumeFirst:Z

.field public static mScreenLock:Ljava/lang/Object;

.field private static mScreenOffCheckIntent:Landroid/app/PendingIntent;

.field static mScreenOffCount:I

.field private static mScreenOffForzenCheck:Landroid/content/Intent;

.field private static mScreenOffFozenCheckIntent:Landroid/app/PendingIntent;

.field private static mScreenOffIntent:Landroid/content/Intent;

.field static mScreen_ON:Z

.field static mScreen_ON_ING:Z

.field static mSensorUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mSuspendFailUidsCount:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mSuspentRecents:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mSuspentUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mTrafficUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mTrafficUidsCount:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mTrafficeWhiteUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mUidPackageNames:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mUidState:Landroid/util/SparseIntArray;

.field static mUidTraffic:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OnePlusProcessManager$Traffic;",
            ">;"
        }
    .end annotation
.end field

.field static mUnFrozenReasonUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mUnFrozenUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mWakeLock:Ljava/lang/Object;

.field public static mWhiteLock:Ljava/lang/Object;

.field static mWhiteUids:[I

.field static screenOffCheckDelayTime:J

.field static screenOffFozenDelayTime:J

.field static screenOffTime:J

.field private static screen_on_forzen_enable:Z

.field static suspendUidDelayTime:J


# instance fields
.field private SUSPEND_FAIL_DEFAULT:D

.field private SUSPEND_FAIL_LONG:D

.field private SUSPEND_FAIL_NOTRY:D

.field private SUSPEND_FAIL_SLEEP:D

.field private SUSPEND_OK:D

.field appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

.field mAlarm:Landroid/app/IAlarmManager;

.field mAlarmAdjust:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBPMList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackAlarmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackBrdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackBroadcastList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackGpsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBrdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

.field mFontActivityUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mFontWindowTouchUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mForceSwitch:I

.field mGpsReceiverLocationUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mImportUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOneplusProcessHander:Landroid/os/Handler;

.field mOtherReceiverLocationUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPowerManager:Landroid/os/IPowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field private mProcessFreezerConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mResumeProcessHander:Landroid/os/Handler;

.field final mResumeUidBroadcasts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mRulesLock:Ljava/lang/Object;

.field mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mStatusLocationUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendProcessHander:Landroid/os/Handler;

.field private mSysCfgMapOnlineConifg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Landroid/os/HandlerThread;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

.field private mWhiteBroadcastList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field pm:Landroid/os/PowerManager;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 128
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 129
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    .line 137
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    .line 139
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 142
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 150
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 151
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z

    .line 152
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z

    .line 153
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    .line 234
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 236
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspentRecents:Ljava/util/Vector;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    .line 241
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    .line 244
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 248
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLockProcess:Ljava/lang/Object;

    .line 251
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    .line 252
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mProcess:Ljava/lang/Object;

    .line 258
    const-string v0, "com.oneplus.android.screenOffCheckProcessState"

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    .line 259
    const-string v0, "com.oneplus.android.assertCheck"

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->ASSERTCHECK:Ljava/lang/String;

    .line 260
    const-string v0, "com.oneplus.android.screenoffcheckforzen"

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_CHECKFORZEN:Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    .line 263
    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->screen_on_forzen_enable:Z

    .line 266
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    .line 267
    new-array v0, v2, [I

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    .line 269
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 270
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    .line 271
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mMessageLock:Ljava/lang/Object;

    .line 277
    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    .line 279
    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 280
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCount:I

    .line 281
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->screenOffCheckDelayTime:J

    .line 282
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->screenOffFozenDelayTime:J

    .line 283
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    .line 284
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    .line 285
    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->broadcastHistoryTime:J

    .line 286
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isFozenDelay:Z

    .line 287
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->mFozenCount:I

    .line 288
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->screenOffTime:J

    .line 290
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    .line 291
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    .line 292
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    .line 299
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    .line 302
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_SKIP:I

    .line 303
    sput v3, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_SUCESS:I

    .line 304
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_GPS:I

    .line 305
    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_WAKELOCK:I

    .line 306
    const/4 v0, 0x4

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_FOREPACKAGE:I

    .line 307
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_SHOW:I

    .line 308
    const/4 v0, 0x6

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_OTHER:I

    .line 309
    const/4 v0, 0x7

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_AUDIO:I

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    .line 316
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenUids:Ljava/util/HashSet;

    .line 318
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    .line 319
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSensorUids:Ljava/util/ArrayList;

    .line 321
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    .line 323
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 325
    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    .line 326
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    .line 329
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    .line 333
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    .line 338
    const-string v0, "ProcessFreezer"

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->CONFIG_NAME:Ljava/lang/String;

    .line 345
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z

    .line 346
    sput v3, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 12
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 144
    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 145
    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 157
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    .line 158
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    .line 159
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBroadcastList:Ljava/util/List;

    .line 160
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v6, v5, v10

    const-string v6, "com.android.server.action.NETWORK_STATS_UPDATED"

    aput-object v6, v5, v11

    const/4 v6, 0x2

    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mWhiteBroadcastList:Ljava/util/List;

    .line 165
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBadList:Ljava/util/List;

    .line 166
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mAppWidgetList:Ljava/util/List;

    .line 167
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    .line 245
    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    .line 246
    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    .line 247
    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    .line 272
    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    .line 273
    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    .line 274
    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    .line 293
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mImportUids:Ljava/util/HashSet;

    .line 294
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    .line 295
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    .line 296
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    .line 297
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    .line 298
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    .line 300
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    .line 301
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    .line 314
    iput v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    .line 322
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    .line 327
    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    .line 328
    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 334
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    .line 344
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    .line 426
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/OnePlusProcessManager$1;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidObserver:Landroid/app/IUidObserver;

    .line 763
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    .line 764
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    .line 765
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iput-wide v6, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    .line 766
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    iput-wide v6, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    .line 767
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    iput-wide v6, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_SLEEP:D

    .line 1138
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$2;

    invoke-direct {v5, p0}, Lcom/android/server/am/OnePlusProcessManager$2;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 1374
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$3;

    invoke-direct {v5, p0}, Lcom/android/server/am/OnePlusProcessManager$3;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1526
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$4;

    invoke-direct {v5, p0}, Lcom/android/server/am/OnePlusProcessManager$4;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 350
    iget-object v5, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    .line 351
    iget-object v5, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oem.background.control"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 352
    const-string v5, "persist.sys.cgroup.using"

    invoke-static {v5, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    .line 353
    const-string v5, "persist.sys.alarmAdjust.using"

    invoke-static {v5, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    .line 354
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    if-nez v5, :cond_0

    .line 355
    sput-boolean v10, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 357
    :cond_0
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v5, :cond_1

    .line 358
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnePlusProcessManager isSuppoerted ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    return-void

    .line 361
    :cond_1
    const-string v5, "OnePlusProcessManager"

    const-string v6, "OnePlusProcessManager VERSION = v15112601"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v5, "sys.cgroup.version"

    const-string v6, "v15112601"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v5, "persist.sys.cgroup.debug"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 364
    const-string v5, "persist.sys.cgroup.debugdetail"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 365
    new-instance v1, Landroid/os/HandlerThread;

    const-string v5, "OneplusProcessThread"

    invoke-direct {v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, "mOneplusThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 367
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    .line 368
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    const/16 v6, 0x6f

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 369
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    const/16 v6, 0x70

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 372
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "SuspenPorcessThread"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 373
    .local v3, "mSuspendThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 375
    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "ResumeProcessThread"

    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 376
    .local v2, "mResumeThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 377
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    .line 378
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    .line 379
    sput-object p1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 381
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareBPMConfigFiles()V

    .line 382
    const-string v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 384
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 386
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 387
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffIntent:Landroid/content/Intent;

    .line 388
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_CHECKFORZEN:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffForzenCheck:Landroid/content/Intent;

    .line 389
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->ASSERTCHECK:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_CHECKFORZEN:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v5, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffIntent:Landroid/content/Intent;

    invoke-static {v5, v10, v6, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;

    .line 398
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffForzenCheck:Landroid/content/Intent;

    invoke-static {v5, v10, v6, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffFozenCheckIntent:Landroid/app/PendingIntent;

    .line 400
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 401
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    .line 402
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    const-string v6, "frozenApp"

    invoke-virtual {v5, v11, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    .line 405
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidObserver:Landroid/app/IUidObserver;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;)V

    .line 406
    const-string v5, "deviceidle"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 409
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 411
    .local v4, "whitelistFilter":Landroid/content/IntentFilter;
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->updatePowerSaveWhitelistLocked()V

    .line 413
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 414
    const-string v5, "location"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService;

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    .line 415
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    .line 417
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 419
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    .line 420
    new-instance v5, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 421
    const-string v5, "alarm"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    .line 422
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->initialOnlineConfig()V

    .line 423
    const-string v5, "persist.sys.cgroup.charger"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusProcessManager;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusProcessManager;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusProcessManager;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_SLEEP:D

    return-wide v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/OnePlusProcessManager;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startResumeUid(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->resumeRelateUid(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(IIZ)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 121
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V

    return-void
.end method

.method static synthetic access$2200(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(II)V

    return-void
.end method

.method static synthetic access$2300()Lcom/android/server/am/OnePlusProcessManager;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusProcessManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->computeUidTraffic(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateForegroundActivityChange(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->removeTempWhiteList()V

    return-void
.end method

.method static synthetic access$2700()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2800()Landroid/app/AlarmManager;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2900()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffFozenCheckIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z

    return v0
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 121
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->handleAudioUid()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->tryAddScreenOffTrafficUids()V

    return-void
.end method

.method static synthetic access$3300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->ASSERTCHECK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_CHECKFORZEN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z

    return v0
.end method

.method static synthetic access$3600()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z

    return v0
.end method

.method static synthetic access$3602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 121
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startComputeUidTraffic(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/am/OnePlusProcessManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->sendForegroundChangeMessage(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/am/OnePlusProcessManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusProcessManager;I)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkSuspendUid(I)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusProcessManager;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->suspendRelateUid(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusProcessManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startSuspendUids(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusProcessManager;I)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addSuspendDelayCount(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private add3rdAppProcessState(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 2634
    const/16 v1, 0x2710

    if-lt p1, v1, :cond_1

    .line 2635
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2636
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2637
    .local v0, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 2638
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2639
    .restart local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2641
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2642
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2643
    monitor-exit v2

    .line 2645
    .end local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    return-void

    .line 2643
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static addDozeWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1759
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_1

    .line 1761
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 1762
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDozeWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p0}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1770
    :goto_0
    return-void

    .line 1764
    :catch_0
    move-exception v0

    .line 1765
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusProcessManager"

    const-string v2, "Falied to add package to doze whitelist"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1768
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "OnePlusProcessManager"

    const-string v2, "Cannot get DeviceIdleController"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addLocationFailCount(I)Z
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    .line 896
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 897
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 898
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 907
    :goto_1
    return v1

    .line 901
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 902
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 907
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static final addPidToCgroupTasksWithJudge(Lcom/android/server/am/ProcessRecord;I)V
    .locals 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "childPid"    # I

    .prologue
    .line 3142
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v1, :cond_1

    .line 3168
    :cond_0
    :goto_0
    return-void

    .line 3145
    :cond_1
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-nez v1, :cond_0

    .line 3149
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_0

    .line 3150
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3151
    if-lez p1, :cond_2

    .line 3152
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v1, v2, p1}, Lcom/android/server/am/OnePlusProcessManager;->add3rdAppProcessState(II)V

    .line 3154
    :cond_2
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3155
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v3, "addPidToCgroupTasksWithJudge"

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    .line 3157
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3158
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x73

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3159
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3160
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3161
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3162
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3163
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addResumeBroadcastUids(ILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "broadcast"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 911
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 912
    .local v0, "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 913
    new-instance v0, Landroid/util/ArrayMap;

    .end local v0    # "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 914
    .restart local v0    # "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 916
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 917
    .local v1, "mCount":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    .line 918
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 924
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 925
    .local v2, "msg2":Landroid/os/Message;
    const/16 v4, 0x75

    iput v4, v2, Landroid/os/Message;->what:I

    .line 926
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 927
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    sget-wide v6, Lcom/android/server/am/OnePlusProcessManager;->broadcastHistoryTime:J

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 929
    .end local v2    # "msg2":Landroid/os/Message;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    .line 930
    const/4 v3, 0x0

    .line 932
    :cond_2
    return v3

    .line 921
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addSuspendDelayCount(I)J
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/16 v4, 0x1e

    const/4 v3, 0x1

    .line 881
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 882
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v4, :cond_0

    .line 890
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 892
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long/2addr v2, v4

    return-wide v2

    .line 886
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 887
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addTempWhiteList(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1501
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1503
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v2, v1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1506
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->addDozeWhiteList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "OnePlusProcessManager"

    const-string v3, "Falied to add package to doze whitelist"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private adjustSuspendMessage(ILjava/lang/String;J)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;
    .param p3, "delayTime"    # J

    .prologue
    .line 3208
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v1, p1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3211
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 3212
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSuspendMessage message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " why = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v1

    .line 3214
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3215
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3216
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3219
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    .line 3221
    :cond_2
    return-void

    .line 3216
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private cancelNotificationsForUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2183
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/OnePlusProcessManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/OnePlusProcessManager$5;-><init>(Lcom/android/server/am/OnePlusProcessManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2190
    return-void
.end method

.method public static cancelNotificationsWithPkg(Ljava/lang/String;I)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 2193
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2194
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotificationsWithPkg():pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    if-nez v1, :cond_1

    .line 2205
    :goto_0
    return-void

    .line 2199
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    invoke-interface {v1, p0, p1}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2201
    :catch_0
    move-exception v0

    .line 2202
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception---->cancelNotificationsWithPkg():pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private changeIntToList([I)Ljava/util/List;
    .locals 3
    .param p1, "elem"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    .local v1, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1166
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1168
    :cond_0
    return-object v1
.end method

.method private checkActiveAudioUids(I)Z
    .locals 7
    .param p1, "mUid"    # I

    .prologue
    const/4 v3, 0x0

    .line 2027
    const/4 v1, 0x0

    .line 2028
    .local v1, "mTrackUids":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v1

    .line 2029
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2030
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActiveAudioUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :cond_0
    if-eqz v1, :cond_3

    .line 2033
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 2034
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2033
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2037
    :cond_2
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2042
    .local v2, "uid":I
    if-nez v2, :cond_4

    .line 2053
    .end local v0    # "i":I
    .end local v2    # "uid":I
    :cond_3
    :goto_1
    return v3

    .line 2045
    .restart local v0    # "i":I
    .restart local v2    # "uid":I
    :cond_4
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 2046
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WakeLock owner uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    :cond_5
    if-ne v2, p1, :cond_1

    .line 2049
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private checkActiveSensor(I)Z
    .locals 8
    .param p1, "mUid"    # I

    .prologue
    const/4 v4, 0x0

    .line 2391
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5}, Landroid/hardware/SensorManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    .line 2392
    .local v0, "activeSensor":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 2393
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkActiveSensor activeSensor= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2396
    .local v2, "mTrackUids":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 2397
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_3

    .line 2398
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2397
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2401
    :cond_2
    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2402
    .local v3, "uid":I
    if-nez v3, :cond_4

    .line 2410
    .end local v1    # "i":I
    .end local v3    # "uid":I
    :cond_3
    :goto_1
    return v4

    .line 2405
    .restart local v1    # "i":I
    .restart local v3    # "uid":I
    :cond_4
    if-ne v3, p1, :cond_1

    .line 2406
    const/4 v4, 0x1

    goto :goto_1
.end method

.method static final checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V
    .locals 9
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2965
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " died but not restart......"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2968
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2969
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2970
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 2971
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p0, v1, v7}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 2972
    iput-object v8, v1, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 2973
    iput-object v8, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    goto :goto_0

    .line 2975
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 2978
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_1
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2979
    .local v0, "NL":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 2980
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 2981
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p0, :cond_2

    .line 2982
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p0, v1, v7}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 2983
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2979
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2986
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_3
    return-void
.end method

.method static final checkBroadcast(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3306
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v1, :cond_1

    .line 3323
    :cond_0
    :goto_0
    return v0

    .line 3309
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v1, :cond_0

    .line 3312
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_0

    .line 3315
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-boolean v2, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3318
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2

    .line 3319
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BPM skip: receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to sender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is ordered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3323
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 8
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 3360
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v1, :cond_0

    move v6, v0

    .line 3393
    :goto_0
    return v6

    .line 3363
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_1

    move v6, v0

    .line 3364
    goto :goto_0

    .line 3366
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v1, :cond_2

    move v6, v0

    .line 3367
    goto :goto_0

    .line 3369
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_4

    :cond_3
    move v6, v0

    .line 3370
    goto :goto_0

    .line 3372
    :cond_4
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3373
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v7, :cond_5

    move v6, v0

    .line 3374
    goto :goto_0

    .line 3376
    :cond_5
    iget v1, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_6

    move v6, v0

    .line 3377
    goto :goto_0

    .line 3379
    :cond_6
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_7

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-nez v1, :cond_7

    move v6, v0

    .line 3380
    goto :goto_0

    .line 3382
    :cond_7
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v1, v7, p2}, Lcom/android/server/am/OnePlusProcessManager;->checkBroadcastIsPackageNotCanStartImpl(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3383
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_8

    .line 3384
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not want to launch app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callPid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    :cond_8
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p2, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 3390
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto/16 :goto_0

    :cond_9
    move v6, v0

    .line 3393
    goto/16 :goto_0
.end method

.method private checkBroadcastIsPackageNotCanStartImpl(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 7
    .param p1, "appinfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v4, 0x0

    .line 3398
    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3399
    .local v1, "broadcastAction":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3400
    .local v3, "isCheckBroadcast":Z
    if-nez v1, :cond_1

    .line 3421
    :cond_0
    :goto_0
    return v4

    .line 3403
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3404
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3405
    const/4 v3, 0x1

    .line 3409
    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_0

    .line 3410
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3413
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusProcessManager;->checkWhitePackageUid(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3416
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3418
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private checkBroadcastNeedSkip(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "broadcast"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 936
    const/16 v3, 0x2710

    if-ge p1, v3, :cond_1

    .line 946
    :cond_0
    :goto_0
    return v2

    .line 939
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 940
    .local v0, "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 942
    .local v1, "mCount":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 943
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkIsSuspenProcessRelateTop(Lcom/android/server/am/ProcessRecord;)Z
    .locals 8
    .param p1, "suspendProcess"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1942
    const/4 v0, 0x0

    .line 1943
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 1944
    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1945
    monitor-exit v7

    .line 1946
    if-nez v0, :cond_0

    move v4, v5

    .line 1973
    :goto_0
    return v4

    .line 1945
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1949
    :cond_0
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1950
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 1951
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_1

    .line 1952
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v7, :cond_1

    move v4, v6

    .line 1953
    goto :goto_0

    .line 1959
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1960
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderConnection;

    .line 1961
    .local v1, "cc":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_3

    .line 1962
    iget-object v4, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v7, :cond_3

    move v4, v6

    .line 1963
    goto :goto_0

    .line 1968
    .end local v1    # "cc":Lcom/android/server/am/ContentProviderConnection;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_5

    .line 1969
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v7, :cond_5

    move v4, v6

    .line 1970
    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 1973
    goto/16 :goto_0
.end method

.method private checkPackageForceStop(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1787
    const-string v0, "clock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "calendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.cts.app.stub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1789
    :cond_0
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPackageForceStop pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    const/4 v0, 0x0

    .line 1792
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkProcessAdj(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2115
    const/4 v0, 0x0

    .line 2116
    .local v0, "ret":Z
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-eqz v1, :cond_0

    .line 2117
    const/4 v0, 0x1

    .line 2119
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 2120
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessAdj(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    :cond_1
    return v0
.end method

.method static final checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x1

    .line 2936
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v1, :cond_1

    .line 2945
    :cond_0
    :goto_0
    return v0

    .line 2939
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v1, :cond_0

    .line 2942
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_0

    .line 2943
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessCanRestartImpl(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method private checkProcessCanRestartImpl(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x1

    .line 2949
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_1

    .line 2958
    :cond_0
    :goto_0
    return v0

    .line 2952
    :cond_1
    if-eqz p1, :cond_0

    .line 2955
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 2958
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method private checkProcessCanSuspend(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x1

    .line 1977
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 1978
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsNeedResumeProcess(): app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :cond_0
    if-nez p1, :cond_2

    .line 2023
    :cond_1
    :goto_0
    return v0

    .line 1984
    :cond_2
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_3

    .line 1985
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 1986
    const-string v1, "OnePlusProcessManager"

    const-string v2, "---->#return true , FIRST_APPLICATION_UID"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1989
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_4

    .line 1991
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 1992
    const-string v1, "OnePlusProcessManager"

    const-string v2, "---->#return true,in system app"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1995
    :cond_4
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v1, :cond_5

    .line 1996
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 1997
    const-string v1, "OnePlusProcessManager"

    const-string v2, "---->#return true,persistent app"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2000
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2001
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 2002
    const-string v1, "OnePlusProcessManager"

    const-string v2, "---->#return true,home app"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2013
    :cond_6
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2014
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 2015
    const-string v1, "OnePlusProcessManager"

    const-string v2, "---->#return true,white app "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2018
    :cond_7
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->checkPackageForceStop(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2020
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package for alarm uid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2023
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2989
    if-nez p1, :cond_1

    .line 3012
    :cond_0
    :goto_0
    return v2

    .line 2992
    :cond_1
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_3

    .line 2993
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 2994
    const-string v2, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " firstApp ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v2, v3

    .line 2996
    goto :goto_0

    .line 2998
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 2999
    goto :goto_0

    .line 3001
    :cond_4
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3002
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_5

    .line 3003
    const-string v2, "OnePlusProcessManager"

    const-string v4, "---->#return true,white app "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v3

    .line 3004
    goto :goto_0

    .line 3007
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3008
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/OnePlusProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v2, v3

    .line 3009
    goto :goto_0
.end method

.method static final checkProcessWhileBroadcastTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    .line 3278
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 3298
    :cond_0
    :goto_0
    return v3

    .line 3281
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v0, :cond_0

    .line 3284
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 3287
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2

    .line 3288
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkProcessWhileBroadcastTimeout(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v2, "checkProcessWhileBroadcastTimeout "

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3291
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 3292
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkProcessWhileBroadcastTimeout(): and resumeUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final checkProcessWhileTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    .line 3251
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 3271
    :cond_0
    :goto_0
    return v3

    .line 3254
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v0, :cond_0

    .line 3257
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 3260
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2

    .line 3261
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkProcessWhileTimeout(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v2, "checkProcessWhileTimeout"

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3263
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 3264
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkProcessWhileTimeout(): and resumeUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkSuspendUid(I)D
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 2274
    const/16 v4, 0x2710

    if-ge p1, v4, :cond_0

    .line 2275
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    .line 2350
    :goto_0
    return-wide v4

    .line 2277
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2278
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2279
    .local v1, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 2280
    :cond_1
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    monitor-exit v6

    goto :goto_0

    .line 2282
    .end local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2283
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2284
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFontActivityUids fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    goto :goto_0

    .line 2287
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v5, p1, -0x2710

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2288
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasMessage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    goto :goto_0

    .line 2291
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2292
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkWhiteUid fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    goto/16 :goto_0

    .line 2295
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkWhitePackageUid(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2296
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkWhitePackageUid fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    goto/16 :goto_0

    .line 2299
    :cond_6
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v5, 0x10

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_7

    .line 2300
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkWhiteUid import top "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    goto/16 :goto_0

    .line 2303
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2304
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFontWindowTouchUids fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    goto/16 :goto_0

    .line 2308
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkActiveAudioUids(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2309
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkActiveAudioUids fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    goto/16 :goto_0

    .line 2312
    :cond_9
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2313
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTrafficUid fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    goto/16 :goto_0

    .line 2316
    :cond_a
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mSensorUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2317
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkActiveSensor(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2318
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkActiveSensor fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    goto/16 :goto_0

    .line 2322
    :cond_b
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2323
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAdjustUids fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    goto/16 :goto_0

    .line 2326
    :cond_c
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mImportUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2327
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mImportUids fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    goto/16 :goto_0

    .line 2330
    :cond_d
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2331
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGpsReceiverUids fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2333
    .local v0, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 2334
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    goto/16 :goto_0

    .line 2336
    :cond_e
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGpsReceiverUids for frozen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_f
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2339
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addLocationFailCount(I)Z

    move-result v4

    if-nez v4, :cond_10

    .line 2340
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    goto/16 :goto_0

    .line 2343
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkUidforPidSleep(I)D

    move-result-wide v2

    .line 2344
    .local v2, "sleepTime":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_12

    .line 2345
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_11

    .line 2346
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUidforPidSleep "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sleepTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    :cond_11
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_SLEEP:D

    add-double/2addr v4, v2

    goto/16 :goto_0

    .line 2350
    :cond_12
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    goto/16 :goto_0
.end method

.method private checkUidforPidSleep(I)D
    .locals 15
    .param p1, "uid"    # I

    .prologue
    .line 2354
    const/4 v5, 0x0

    .line 2355
    .local v5, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-wide/16 v8, 0x0

    .line 2356
    .local v8, "sleepTime":D
    iget-object v13, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2357
    :try_start_0
    iget-object v12, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2358
    .local v6, "pidStateClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_0

    .line 2359
    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/util/ArrayList;

    move-object v5, v0

    .line 2361
    :cond_0
    monitor-exit v13

    .line 2362
    if-nez v5, :cond_1

    .line 2363
    const-wide/16 v12, 0x0

    .line 2387
    :goto_0
    return-wide v12

    .line 2361
    .end local v6    # "pidStateClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 2365
    .restart local v6    # "pidStateClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_5

    .line 2366
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/proc/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/sleeptime"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2367
    .local v7, "sleepPatch":Ljava/lang/String;
    const-string v11, ""

    .line 2369
    .local v11, "value":Ljava/lang/String;
    :try_start_1
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 2374
    :goto_2
    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2375
    .local v10, "sleepTimes":[Ljava/lang/String;
    if-eqz v10, :cond_4

    array-length v12, v10

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    const/4 v12, 0x0

    aget-object v12, v10, v12

    if-eqz v12, :cond_4

    .line 2376
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2377
    const-wide/16 v12, 0x0

    goto :goto_0

    .line 2370
    .end local v10    # "sleepTimes":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2371
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkUidSleep sleepPatch= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    const-string v11, ""

    goto :goto_2

    .line 2379
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v10    # "sleepTimes":[Ljava/lang/String;
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2380
    .local v2, "doubleString":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 2381
    sget-boolean v12, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_3

    .line 2382
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkUidSleep doubleString ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " sleepTime = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-wide v12, v8

    .line 2384
    goto/16 :goto_0

    .line 2365
    .end local v2    # "doubleString":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2387
    .end local v7    # "sleepPatch":Ljava/lang/String;
    .end local v10    # "sleepTimes":[Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_5
    const-wide/16 v12, 0x0

    goto/16 :goto_0
.end method

.method private checkVersion()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 2208
    const-string v7, "/data/data_bpm/version.xml"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2209
    .local v0, "dataCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "/system/bpm/version.xml"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 2214
    .local v4, "sysCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2215
    .local v3, "sv":I
    const/4 v2, 0x0

    .line 2216
    .local v2, "dv":I
    if-nez v4, :cond_1

    .line 2217
    const/4 v3, 0x0

    .line 2233
    :cond_0
    :goto_0
    return v6

    .line 2220
    :cond_1
    const-string v7, "version"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2221
    .local v5, "sysVersion":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2223
    if-nez v0, :cond_2

    .line 2224
    const/4 v2, 0x0

    .line 2229
    :goto_1
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkVersion  sv="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dv ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    if-le v3, v2, :cond_0

    .line 2231
    const/4 v6, 0x1

    goto :goto_0

    .line 2226
    :cond_2
    const-string v7, "version"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2227
    .local v1, "dataVersion":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1
.end method

.method private checkWhitePackageUid(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    .line 2103
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2104
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2110
    :cond_0
    :goto_0
    return v1

    .line 2107
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "com.cttl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2110
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkWhiteUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 2088
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2089
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 2090
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2091
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 2092
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 2093
    const-string v1, "OnePlusProcessManager"

    const-string v3, "---->#return true,white app "

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    :cond_0
    const/4 v1, 0x1

    monitor-exit v2

    .line 2098
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 2090
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2098
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 2099
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private computeUidTraffic(I)I
    .locals 13
    .param p1, "uid"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1661
    const/4 v8, 0x1

    .line 1662
    .local v8, "checkAgain":Z
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1663
    .local v9, "count":Ljava/lang/Integer;
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1664
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkTrafficUid(I)Z

    move-result v8

    .line 1665
    if-eqz v8, :cond_4

    .line 1666
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1667
    .local v2, "now":J
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OnePlusProcessManager$Traffic;-><init>(Lcom/android/server/am/OnePlusProcessManager;JJJ)V

    .line 1669
    .local v0, "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1672
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1673
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v1, :cond_0

    .line 1674
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addTempWhiteList(I)V

    .line 1676
    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1677
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    .line 1681
    const-string v1, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeUidTraffic uid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    .end local v0    # "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    .end local v2    # "now":J
    :cond_2
    :goto_0
    if-nez v9, :cond_3

    .line 1707
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1709
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1683
    :cond_4
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1685
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1688
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    .line 1689
    .local v10, "packageName":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/am/OnePlusProcessManager;->removeDozeWhiteList(Ljava/lang/String;)V

    .line 1690
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1692
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_5
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_6

    .line 1693
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-direct {v1, p1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    .line 1695
    :cond_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 1698
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1699
    .restart local v2    # "now":J
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OnePlusProcessManager$Traffic;-><init>(Lcom/android/server/am/OnePlusProcessManager;JJJ)V

    .line 1701
    .restart local v0    # "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1704
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static continueSuspendUid(I)V
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 1889
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 1910
    :cond_0
    :goto_0
    return-void

    .line 1892
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v0, :cond_0

    .line 1895
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 1898
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 1901
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1902
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1903
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continueSuspendUid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_2
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    if-eq v0, p0, :cond_0

    .line 1905
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v1, p0, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1907
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "fromFile"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/lang/String;
    .param p3, "isForceUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3664
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3665
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    .line 3671
    :goto_0
    return-void

    .line 3668
    :cond_0
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile():fromFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3670
    .local v0, "sourceFile":Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private getActiveAudioUids()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 2125
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 2126
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 2129
    :cond_0
    const-string v0, ""

    .line 2130
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    .line 2132
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2136
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 2137
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveAudioPids():pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2134
    :cond_2
    const-string v0, ":0"

    goto :goto_0
.end method

.method public static getBPMEnable_out()Z
    .locals 2

    .prologue
    .line 2601
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 2602
    const-string v0, "OnePlusProcessManager"

    const-string v1, "Fatal: mOnePlusProcessManager = null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    const/4 v0, 0x0

    .line 2605
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusProcessManager;->getBPMEnable()Z

    move-result v0

    goto :goto_0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusProcessManager;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 1882
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 1883
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 1885
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 8
    .param p1, "uid"    # I

    .prologue
    .line 1736
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1737
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1755
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1740
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_2

    .line 1741
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1742
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1743
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 1745
    :try_start_0
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v6, v4, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1746
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 1747
    aget-object v3, v4, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1749
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1750
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, ""

    goto :goto_0

    .line 1743
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1755
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i":I
    .end local v4    # "packages":[Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto :goto_0
.end method

.method private static getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 5
    .param p0, "pid"    # Ljava/lang/String;

    .prologue
    .line 3102
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3103
    const/4 v1, 0x0

    .line 3104
    .local v1, "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3105
    :try_start_1
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 3106
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3107
    if-eqz v1, :cond_0

    .line 3108
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3109
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3111
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_0
    return-object v0

    .line 3106
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 3112
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 3111
    :cond_0
    const/4 v0, 0x0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method private getProcessForUid(I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3116
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mLockProcess:Ljava/lang/Object;

    monitor-enter v9

    .line 3117
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3120
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v5

    .line 3121
    .local v5, "mUidPidClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3122
    .local v2, "mPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 3123
    :cond_0
    monitor-exit v9

    .line 3137
    :goto_0
    return-object v7

    .line 3125
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3126
    .local v3, "mPidListClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 3127
    .local v4, "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v8, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3128
    :try_start_1
    sget-object v8, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v4

    .line 3129
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 3131
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3132
    .local v6, "pid":Ljava/lang/Integer;
    if-nez v6, :cond_2

    .line 3130
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3129
    .end local v1    # "i":I
    .end local v6    # "pid":Ljava/lang/Integer;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8

    .line 3138
    .end local v2    # "mPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "mPidListClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v5    # "mUidPidClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 3134
    .restart local v1    # "i":I
    .restart local v2    # "mPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "mPidListClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v5    # "mUidPidClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v6    # "pid":Ljava/lang/Integer;
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3135
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3137
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "pid":Ljava/lang/Integer;
    :cond_3
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public static getScreenState()Z
    .locals 2

    .prologue
    .line 2789
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2790
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    monitor-exit v1

    return v0

    .line 2791
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSilent_AudioUids()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 2142
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 2143
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 2146
    :cond_0
    const-string v0, ""

    .line 2147
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    .line 2149
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_silent_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2153
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 2154
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSilent_AudioUids():pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2151
    :cond_2
    const-string v0, ":0"

    goto :goto_0
.end method

.method private handleAudioUid()V
    .locals 13

    .prologue
    .line 1441
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getSilent_AudioUids()[Ljava/lang/String;

    move-result-object v8

    .line 1442
    .local v8, "silentUids":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v1

    .line 1444
    .local v1, "activeUids":[Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_0

    .line 1445
    const-string v9, "OnePlusProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getMode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_0
    if-eqz v8, :cond_3

    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->getMode()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->getMode()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    .line 1449
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v8

    if-ge v2, v9, :cond_3

    .line 1450
    aget-object v9, v8, v2

    if-eqz v9, :cond_1

    aget-object v9, v8, v2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1449
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1453
    :cond_2
    aget-object v9, v8, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1454
    .local v7, "silentUid":I
    const/16 v9, 0x2710

    if-lt v7, v9, :cond_1

    invoke-direct {p0, v7}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-direct {p0, v7}, Lcom/android/server/am/OnePlusProcessManager;->checkWhitePackageUid(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1456
    invoke-direct {p0, v7}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 1457
    .local v6, "packageName":Ljava/lang/String;
    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 1458
    :try_start_0
    const-string v9, "OnePlusProcessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "forceStopPackage: silentPackage="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 1460
    monitor-exit v10

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 1464
    .end local v2    # "i":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "silentUid":I
    :cond_3
    if-eqz v1, :cond_9

    .line 1465
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v9, v1

    if-ge v3, v9, :cond_9

    .line 1466
    aget-object v9, v1, v3

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1465
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1469
    :cond_5
    aget-object v9, v1, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1470
    .local v0, "activeUid":I
    const/4 v5, 0x0

    .line 1471
    .local v5, "mFind":Z
    if-eqz v8, :cond_8

    .line 1472
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4
    array-length v9, v8

    if-ge v4, v9, :cond_8

    .line 1473
    aget-object v9, v8, v4

    if-eqz v9, :cond_6

    aget-object v9, v8, v4

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1472
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1476
    :cond_7
    aget-object v9, v8, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1477
    .restart local v7    # "silentUid":I
    if-ne v7, v0, :cond_6

    .line 1478
    const/4 v5, 0x1

    .line 1483
    .end local v4    # "k":I
    .end local v7    # "silentUid":I
    :cond_8
    if-nez v5, :cond_4

    .line 1484
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->addTempWhiteList(I)V

    .line 1485
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1489
    .end local v0    # "activeUid":I
    .end local v3    # "j":I
    .end local v5    # "mFind":Z
    :cond_9
    return-void
.end method

.method private handlePackageChange(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1172
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .local v2, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    .local v3, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1176
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1177
    .local v4, "pkg":Ljava/lang/Integer;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1178
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1181
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1182
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1183
    .restart local v4    # "pkg":Ljava/lang/Integer;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1184
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1187
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 1188
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1189
    .restart local v4    # "pkg":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "handlePackageChange"

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1187
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1191
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 1192
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1193
    .restart local v4    # "pkg":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-wide v6, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    .line 1191
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1195
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_5
    return-void
.end method

.method private handlePackageForPackageChange(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1199
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    .local v3, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    .local v4, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 1203
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1204
    .local v5, "pkg":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1205
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1208
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1209
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1210
    .restart local v5    # "pkg":Ljava/lang/String;
    invoke-interface {p2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1211
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1214
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 1215
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1218
    .restart local v5    # "pkg":Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1220
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v7, "handlePackageChange"

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1214
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1224
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 1225
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1227
    .restart local v5    # "pkg":Ljava/lang/String;
    :try_start_1
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1229
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/16 v8, 0x2

    sget-wide v10, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long/2addr v8, v10

    invoke-direct {p0, v6, v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1224
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1233
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_5
    return-void

    .line 1230
    .restart local v5    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_5

    .line 1221
    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method private handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 10
    .param p1, "oldList"    # Ljava/util/HashSet;
    .param p2, "newList"    # Ljava/util/HashSet;

    .prologue
    .line 1236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v2, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1239
    .local v3, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1241
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1243
    .local v4, "mUid":Ljava/lang/Integer;
    invoke-virtual {p1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1244
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1247
    .end local v4    # "mUid":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1248
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1250
    .restart local v4    # "mUid":Ljava/lang/Integer;
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1251
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1254
    .end local v4    # "mUid":Ljava/lang/Integer;
    :cond_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1255
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1256
    .local v5, "pkg":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "handleUidChange"

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1254
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1258
    .end local v5    # "pkg":Ljava/lang/Integer;
    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 1259
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1262
    .restart local v5    # "pkg":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-wide v8, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v6, v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    .line 1258
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1264
    .end local v5    # "pkg":Ljava/lang/Integer;
    :cond_5
    return-void
.end method

.method private initialOnlineConfig()V
    .locals 5

    .prologue
    .line 3787
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessFreezerConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 3789
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessFreezerConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 3792
    return-void
.end method

.method public static isDeliverDisplayChange(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x1

    .line 2663
    const/16 v1, 0x2710

    if-ge p0, v1, :cond_1

    .line 2669
    :cond_0
    :goto_0
    return v0

    .line 2666
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_0

    .line 2667
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->isDeliverDisplayChangeLock(I)Z

    move-result v0

    goto :goto_0
.end method

.method private isDeliverDisplayChangeLock(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 2673
    const/4 v1, 0x0

    .line 2674
    .local v1, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2675
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 2676
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2677
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ltz v2, :cond_2

    .line 2678
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 2688
    :goto_0
    return v2

    .line 2676
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2681
    :cond_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v4, 0x10

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    move v2, v3

    .line 2682
    goto :goto_0

    .line 2684
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move v2, v3

    .line 2688
    goto :goto_0
.end method

.method private isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2929
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInclude(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3425
    if-eqz p2, :cond_0

    array-length v5, p2

    if-lez v5, :cond_0

    if-nez p1, :cond_1

    .line 3434
    :cond_0
    :goto_0
    return v4

    .line 3429
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 3430
    .local v3, "v":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3431
    const/4 v4, 0x1

    goto :goto_0

    .line 3429
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isSupportFrozenApp()Z
    .locals 1

    .prologue
    .line 488
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    return v0
.end method

.method public static isSuspendUid(I)Z
    .locals 6
    .param p0, "uid"    # I

    .prologue
    const-wide/16 v2, 0x8

    .line 2648
    const-string v1, "isSuspendUid"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2649
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2650
    const/4 v0, 0x0

    .line 2651
    .local v0, "resturn":Z
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2652
    :cond_0
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2653
    const/4 v1, 0x0

    monitor-exit v2

    .line 2658
    :goto_0
    return v1

    .line 2656
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2657
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2658
    monitor-exit v2

    move v1, v0

    goto :goto_0

    .line 2659
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static loadStateLocked(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3539
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3540
    .local v1, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3541
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 3542
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadStateLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " file don\'t exist!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    .end local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 3545
    .restart local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3546
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 3547
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 3549
    .local v7, "success":Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3550
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 3551
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v3, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3554
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 3555
    .local v9, "type":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    .line 3556
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3557
    .local v8, "tag":Ljava/lang/String;
    const-string v11, "p"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3558
    const/4 v11, 0x0

    const-string v12, "att"

    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3559
    .local v10, "value":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 3560
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3564
    .end local v8    # "tag":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    .line 3565
    const/4 v7, 0x1

    .line 3570
    if-eqz v6, :cond_8

    .line 3571
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3572
    const/4 v5, 0x0

    .line 3578
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "type":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :cond_4
    :goto_1
    sget-boolean v11, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v11, :cond_5

    .line 3579
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadStateLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " date size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    :cond_5
    if-eqz v7, :cond_7

    move-object v1, v4

    .line 3581
    goto :goto_0

    .line 3574
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "type":I
    :catch_0
    move-exception v0

    .line 3575
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 3577
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 3566
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_1
    move-exception v0

    .line 3567
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadStateLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  --> failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3570
    if-eqz v5, :cond_4

    .line 3571
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3572
    const/4 v5, 0x0

    goto :goto_1

    .line 3574
    :catch_2
    move-exception v0

    .line 3575
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3569
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 3570
    :goto_3
    if-eqz v5, :cond_6

    .line 3571
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3572
    const/4 v5, 0x0

    .line 3576
    :cond_6
    :goto_4
    throw v11

    .line 3574
    :catch_3
    move-exception v0

    .line 3575
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3583
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    sget-boolean v11, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v11, :cond_0

    .line 3584
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadStateLocked(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " file failed parsing!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3569
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 3566
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "type":I
    :cond_8
    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public static loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 14
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 3440
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadXmlLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3441
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3442
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 3443
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadXmlLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " file don\'t exist!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    move-object v4, v11

    .line 3490
    :cond_0
    :goto_0
    return-object v4

    .line 3446
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3447
    .local v4, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 3448
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 3450
    .local v7, "success":Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3451
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 3452
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v3, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3455
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 3456
    .local v9, "type":I
    const/4 v12, 0x2

    if-ne v9, v12, :cond_3

    .line 3457
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3458
    .local v8, "tag":Ljava/lang/String;
    const-string v12, "item"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3459
    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v3, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3462
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 3463
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 3466
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v4, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3470
    .end local v2    # "name":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x1

    if-ne v9, v12, :cond_2

    .line 3471
    const/4 v7, 0x1

    .line 3476
    if-eqz v6, :cond_4

    .line 3477
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v5, v6

    .line 3484
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "type":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :cond_5
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadXmlLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " data size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3485
    if-nez v7, :cond_0

    .line 3489
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadXmlLocked(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " file failed parsing!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    move-object v4, v11

    .line 3490
    goto/16 :goto_0

    .line 3479
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "type":I
    :catch_0
    move-exception v0

    .line 3480
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 3482
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 3472
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_1
    move-exception v0

    .line 3473
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadXmlLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  --> failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3476
    if-eqz v5, :cond_5

    .line 3477
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 3479
    :catch_2
    move-exception v0

    .line 3480
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3475
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 3476
    :goto_3
    if-eqz v5, :cond_6

    .line 3477
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3481
    :cond_6
    :goto_4
    throw v11

    .line 3479
    :catch_3
    move-exception v0

    .line 3480
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3475
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 3472
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 3782
    const-string v0, "OnePlusProcessManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    return-void
.end method

.method private parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "uids"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2159
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 2160
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseActiveAudioPidsStr():pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 2170
    :cond_1
    :goto_0
    return-object v0

    .line 2165
    :cond_2
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2169
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2170
    .local v0, "uid":[Ljava/lang/String;
    goto :goto_0
.end method

.method private printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 4
    .param p1, "preceding"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3687
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3688
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3689
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3691
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static removeDozeWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1773
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_1

    .line 1775
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 1776
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDozeWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p0}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    :goto_0
    return-void

    .line 1778
    :catch_0
    move-exception v0

    .line 1779
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusProcessManager"

    const-string v2, "Falied to add package to doze whitelist"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1782
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "OnePlusProcessManager"

    const-string v2, "Cannot get DeviceIdleController"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeTempWhiteList()V
    .locals 3

    .prologue
    .line 1492
    const-string v1, ""

    .line 1493
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1494
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "packageName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1495
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->removeDozeWhiteList(Ljava/lang/String;)V

    .line 1493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1497
    :cond_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1498
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 18
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 3802
    if-nez p1, :cond_1

    .line 3911
    :cond_0
    :goto_0
    return-void

    .line 3806
    :cond_1
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v8, v14, :cond_0

    .line 3807
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 3808
    .local v10, "json":Lorg/json/JSONObject;
    const-string v14, "name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "black_alarm"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 3809
    const-string v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3810
    .local v2, "blackbrdArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    monitor-enter v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3811
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 3812
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v7, v14, :cond_2

    .line 3813
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3814
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3812
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3816
    :cond_2
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3817
    :try_start_2
    const-string v14, "OnePlusProcessManager"

    const-string v15, "[OnlineConfig] update blackbrdlist success"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    const-string v15, "/data/data_bpm/black_alarm.xml"

    invoke-static {v14, v15}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z

    .line 3820
    .end local v2    # "blackbrdArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :cond_3
    const-string v14, "name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "black_gps"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 3821
    const-string v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 3822
    .local v1, "blackGpsArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 3823
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    monitor-enter v15
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3824
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v7, v14, :cond_4

    .line 3825
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3826
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3824
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3816
    .end local v1    # "blackGpsArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .restart local v2    # "blackbrdArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v14

    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v14
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3908
    .end local v2    # "blackbrdArray":Lorg/json/JSONArray;
    .end local v10    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 3909
    .local v6, "e":Lorg/json/JSONException;
    const-string v14, "OnePlusProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3828
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v1    # "blackGpsArray":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    .restart local v10    # "json":Lorg/json/JSONObject;
    :cond_4
    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3829
    :try_start_7
    const-string v14, "OnePlusProcessManager"

    const-string v15, "[OnlineConfig] update blackgpslist success"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    const-string v15, "/data/data_bpm/black_gps.xml"

    invoke-static {v14, v15}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z

    .line 3832
    .end local v1    # "blackGpsArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :cond_5
    const-string v14, "name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "cfg"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 3833
    const-string v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 3834
    .local v4, "cfgArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 3835
    const-string v13, ""

    .line 3836
    .local v13, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    monitor-enter v15
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    .line 3837
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v7, v14, :cond_9

    .line 3838
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v16, "itemname"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v16, "forceSwitch"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3840
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v16, "itemvalue"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3841
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    const-string v16, "forceSwitch"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3842
    const-string v14, "OnePlusProcessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "forceSwitch = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    const-string v14, "off"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3844
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 3845
    const-string v14, "/data/data_bpm/bpm_sts.xml"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 3848
    :cond_6
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v16, "itemname"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v16, "version"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3849
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v16, "itemvalue"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3850
    .local v9, "itemvalue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    const-string v16, "version"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3851
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 3852
    .local v5, "cfgVersion":Ljava/lang/Integer;
    const-string v14, "OnePlusProcessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cfgVersion = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget v16, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    move/from16 v0, v16

    if-le v14, v0, :cond_7

    .line 3854
    const-string v14, "off"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 3855
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 3856
    const-string v14, "/data/data_bpm/bpm_sts.xml"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3837
    .end local v5    # "cfgVersion":Ljava/lang/Integer;
    .end local v9    # "itemvalue":Ljava/lang/String;
    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 3828
    .end local v4    # "cfgArray":Lorg/json/JSONArray;
    .end local v13    # "value":Ljava/lang/String;
    .restart local v1    # "blackGpsArray":Lorg/json/JSONArray;
    :catchall_1
    move-exception v14

    :try_start_9
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v14
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    .line 3857
    .end local v1    # "blackGpsArray":Lorg/json/JSONArray;
    .restart local v4    # "cfgArray":Lorg/json/JSONArray;
    .restart local v5    # "cfgVersion":Ljava/lang/Integer;
    .restart local v9    # "itemvalue":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :cond_8
    :try_start_b
    const-string v14, "on"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3858
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 3859
    const-string v14, "/data/data_bpm/bpm_sts.xml"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_5

    .line 3865
    .end local v5    # "cfgVersion":Ljava/lang/Integer;
    .end local v9    # "itemvalue":Ljava/lang/String;
    :catchall_2
    move-exception v14

    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v14
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    .line 3864
    :cond_9
    :try_start_d
    const-string v14, "/data/data_bpm/cfg.xml"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveXmlLocked(Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 3865
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 3866
    :try_start_e
    const-string v14, "OnePlusProcessManager"

    const-string v15, "[OnlineConfig] update cfg success"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    .end local v4    # "cfgArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v13    # "value":Ljava/lang/String;
    :cond_a
    const-string v14, "name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "black_brd"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 3869
    const-string v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 3870
    .local v3, "brdArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 3871
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    monitor-enter v15
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0

    .line 3872
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_6
    :try_start_f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v7, v14, :cond_b

    .line 3873
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3874
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3872
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 3876
    :cond_b
    monitor-exit v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 3877
    :try_start_10
    const-string v14, "OnePlusProcessManager"

    const-string v15, "[OnlineConfig] update brdlist success"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    const-string v15, "/data/data_bpm/black_brd.xml"

    invoke-static {v14, v15}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z

    .line 3880
    .end local v3    # "brdArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :cond_c
    const-string v14, "name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "brd"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 3881
    const-string v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 3882
    .restart local v3    # "brdArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 3883
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    monitor-enter v15
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0

    .line 3884
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_7
    :try_start_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v7, v14, :cond_d

    .line 3885
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3886
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 3884
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 3876
    :catchall_3
    move-exception v14

    :try_start_12
    monitor-exit v15
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    throw v14
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_0

    .line 3888
    :cond_d
    :try_start_14
    monitor-exit v15
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 3889
    :try_start_15
    const-string v14, "OnePlusProcessManager"

    const-string v15, "[OnlineConfig] update mBrdList success"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    const-string v15, "/data/data_bpm/brd.xml"

    invoke-static {v14, v15}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z

    .line 3892
    .end local v3    # "brdArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :cond_e
    const-string v14, "name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "pkg"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 3893
    const-string v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 3894
    .local v12, "pkgArray":Lorg/json/JSONArray;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3895
    .local v11, "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v11, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3896
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 3897
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    monitor-enter v15
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_0

    .line 3898
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_8
    :try_start_16
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v7, v14, :cond_f

    .line 3899
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3900
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 3898
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 3888
    .end local v11    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "pkgArray":Lorg/json/JSONArray;
    .restart local v3    # "brdArray":Lorg/json/JSONArray;
    :catchall_4
    move-exception v14

    :try_start_17
    monitor-exit v15
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    throw v14
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_0

    .line 3902
    .end local v3    # "brdArray":Lorg/json/JSONArray;
    .restart local v11    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "pkgArray":Lorg/json/JSONArray;
    :cond_f
    :try_start_19
    monitor-exit v15
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 3903
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/android/server/am/OnePlusProcessManager;->handlePackageForPackageChange(Ljava/util/List;Ljava/util/List;)V

    .line 3904
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    const-string v15, "/data/data_bpm/pkg.xml"

    invoke-static {v14, v15}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z

    .line 3905
    const-string v14, "OnePlusProcessManager"

    const-string v15, "[OnlineConfig] update pkglist success"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_0

    .line 3806
    .end local v7    # "i":I
    .end local v11    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "pkgArray":Lorg/json/JSONArray;
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 3902
    .restart local v7    # "i":I
    .restart local v11    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "pkgArray":Lorg/json/JSONArray;
    :catchall_5
    move-exception v14

    :try_start_1b
    monitor-exit v15
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :try_start_1c
    throw v14
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_0
.end method

.method private resumeAdjTargetFromAdjSource(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2802
    if-nez p1, :cond_1

    .line 2834
    :cond_0
    :goto_0
    return-void

    .line 2805
    :cond_1
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 2808
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v5, v5, Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    .line 2809
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    .line 2810
    .local v2, "name":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 2813
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2814
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2818
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2823
    :try_start_0
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2824
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2825
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 2826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resumeAdjTargetFromAdjSource(): app="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", target ai="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 2828
    :cond_2
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v6, "resume adjTarget"

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2829
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 2830
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: resumeAdjTargetFromAdjSource : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 2831
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static resumeAllProcess(Ljava/lang/String;)V
    .locals 1
    .param p0, "why"    # Ljava/lang/String;

    .prologue
    .line 2766
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 2778
    :cond_0
    :goto_0
    return-void

    .line 2769
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v0, :cond_0

    .line 2772
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 2775
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 2776
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcessLock(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final resumeProcessByUID_out(ILjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;

    .prologue
    .line 3174
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 3181
    :cond_0
    :goto_0
    return-void

    .line 3177
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v0, :cond_0

    .line 3180
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public static final resumeProcessByUID_out(ILjava/lang/String;Z)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;
    .param p2, "isResumeTop"    # Z

    .prologue
    .line 3184
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 3205
    :cond_0
    :goto_0
    return-void

    .line 3187
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v0, :cond_0

    .line 3190
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 3193
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 3200
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto :goto_0
.end method

.method public static final resumeProcessByUID_out_Delay(ILjava/lang/String;I)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;
    .param p2, "suspendDelayTime"    # I

    .prologue
    .line 3225
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 3245
    :cond_0
    :goto_0
    return-void

    .line 3228
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v0, :cond_0

    .line 3231
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 3234
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 3241
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;I)Z

    goto :goto_0
.end method

.method private resumeRelateProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2837
    if-nez p1, :cond_1

    .line 2894
    :cond_0
    :goto_0
    return-void

    .line 2840
    :cond_1
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_0

    .line 2843
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 2844
    const/4 v3, 0x0

    .line 2845
    .local v3, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2846
    const/4 v3, 0x0

    .line 2848
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cr":Lcom/android/server/am/ConnectionRecord;
    check-cast v3, Lcom/android/server/am/ConnectionRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2852
    .restart local v3    # "cr":Lcom/android/server/am/ConnectionRecord;
    if-eqz v3, :cond_2

    .line 2855
    iget-object v6, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_2

    .line 2857
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v6, v7, :cond_2

    .line 2858
    iget-object v6, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v7, "resumeRelateProcess connection"

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto :goto_1

    .line 2849
    .end local v3    # "cr":Lcom/android/server/am/ConnectionRecord;
    :catch_0
    move-exception v4

    .line 2863
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_3
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 2864
    const/4 v1, 0x0

    .line 2865
    .local v1, "cc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2867
    .local v2, "contentClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderConnection;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "it":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2868
    const/4 v1, 0x0

    .line 2870
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cc":Lcom/android/server/am/ContentProviderConnection;
    check-cast v1, Lcom/android/server/am/ContentProviderConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2874
    .restart local v1    # "cc":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v1, :cond_4

    .line 2877
    iget-object v6, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_4

    .line 2878
    iget-object v6, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v6, v7, :cond_4

    .line 2879
    iget-object v6, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v7, "resumeRelateProcess conProviders"

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto :goto_2

    .line 2871
    .end local v1    # "cc":Lcom/android/server/am/ContentProviderConnection;
    :catch_1
    move-exception v4

    .line 2886
    .end local v2    # "contentClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderConnection;>;"
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_5
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 2887
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_0

    .line 2888
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 2889
    .local v0, "adjustApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v6, v7, :cond_0

    .line 2890
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v7, "resumeRelateProcess adjSource"

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private resumeRelateUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 1001
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mProcess:Ljava/lang/Object;

    monitor-enter v3

    .line 1002
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v2, p1}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1003
    .local v1, "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1004
    :cond_0
    monitor-exit v3

    .line 1010
    :goto_0
    return-void

    .line 1006
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1007
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-direct {v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->resumeRelateProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1009
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static saveBpmStsLocked(Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "sts"    # Z

    .prologue
    const/4 v5, 0x1

    .line 3589
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveBpmStsLocked():path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3590
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3591
    .local v1, "endLine":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3593
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3595
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 3596
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3597
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3598
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3599
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3600
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3602
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3603
    const/4 v7, 0x0

    const-string v8, "att"

    if-eqz p1, :cond_2

    const-string v6, "true"

    :goto_0
    invoke-interface {v2, v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3604
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3605
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3607
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3608
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3609
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3616
    if-eqz v4, :cond_0

    .line 3617
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    move-object v3, v4

    .line 3621
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    return v5

    .line 3603
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    const-string v6, "false"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 3619
    :catch_0
    move-exception v0

    .line 3620
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3611
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 3612
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3613
    const/4 v5, 0x0

    .line 3616
    if-eqz v3, :cond_1

    .line 3617
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 3619
    :catch_2
    move-exception v0

    .line 3620
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3615
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 3616
    :goto_4
    if-eqz v3, :cond_3

    .line 3617
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3621
    :cond_3
    :goto_5
    throw v5

    .line 3619
    :catch_3
    move-exception v0

    .line 3620
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 3615
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 3611
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method private static saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    .locals 11
    .param p1, "patch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "config":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 3626
    const/4 v5, 0x0

    .line 3627
    .local v5, "stream":Ljava/io/FileOutputStream;
    const-string v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3629
    .local v1, "endLine":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3631
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 3632
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3633
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3634
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3635
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3636
    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3637
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3638
    .local v4, "pkg":Ljava/lang/String;
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saved pkg is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    if-eqz v4, :cond_0

    .line 3640
    const/4 v7, 0x0

    const-string v8, "p"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3641
    const/4 v7, 0x0

    const-string v8, "att"

    invoke-interface {v3, v7, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3642
    const/4 v7, 0x0

    const-string v8, "p"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3643
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 3648
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 3649
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3653
    if-eqz v5, :cond_1

    .line 3654
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3660
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return v10

    .line 3646
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "iterator":Ljava/util/Iterator;
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3647
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3653
    if-eqz v6, :cond_3

    .line 3654
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_3
    move-object v5, v6

    .line 3660
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 3656
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 3657
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3656
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 3657
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3652
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 3653
    :goto_4
    if-eqz v5, :cond_4

    .line 3654
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3658
    :cond_4
    :goto_5
    throw v7

    .line 3656
    :catch_3
    move-exception v0

    .line 3657
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 3652
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 3648
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private static saveXmlLocked(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "confMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3494
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveXmlLocked():path="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3495
    if-nez p1, :cond_0

    move v7, v8

    .line 3534
    :goto_0
    return v7

    .line 3499
    :cond_0
    const-string v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3500
    .local v1, "endLine":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3502
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3504
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 3505
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3506
    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3507
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3508
    const/4 v7, 0x0

    const-string v10, "cfg"

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3509
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3511
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3512
    .local v4, "ss":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    const-string v10, "item"

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3513
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v10, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3515
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3516
    const/4 v7, 0x0

    const-string v10, "item"

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3517
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 3524
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "ss":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 3525
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to write state: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3529
    if-eqz v5, :cond_1

    .line 3530
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_3
    move v7, v8

    .line 3534
    goto/16 :goto_0

    .line 3520
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :cond_2
    const/4 v7, 0x0

    :try_start_4
    const-string v10, "cfg"

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3521
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3522
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3529
    if-eqz v6, :cond_3

    .line 3530
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_4
    move v7, v9

    .line 3534
    goto/16 :goto_0

    .line 3532
    :catch_1
    move-exception v0

    .line 3533
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3532
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 3533
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3528
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 3529
    :goto_5
    if-eqz v5, :cond_4

    .line 3530
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3534
    :cond_4
    :goto_6
    throw v7

    .line 3532
    :catch_3
    move-exception v0

    .line 3533
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 3528
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 3524
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private sendForegroundChangeMessage(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1611
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1612
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x77

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1613
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1614
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1615
    return-void
.end method

.method private sendResumeMessage(IJLjava/lang/String;I)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "delay"    # J
    .param p4, "why"    # Ljava/lang/String;
    .param p5, "suspendTime"    # I

    .prologue
    .line 1930
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v2

    .line 1931
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1932
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1933
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1934
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, -0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1935
    iput p5, v0, Landroid/os/Message;->arg1:I

    .line 1936
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1937
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1938
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1939
    return-void

    .line 1932
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendResumeUid(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;

    .prologue
    .line 2693
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private sendResumeUid(ILjava/lang/String;I)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;
    .param p3, "suspendDelayTime"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2697
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_1

    .line 2723
    :cond_0
    :goto_0
    return v0

    .line 2703
    :cond_1
    const/16 v1, 0x2710

    if-lt p1, v1, :cond_0

    .line 2706
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    if-ne v1, p1, :cond_6

    .line 2707
    :cond_2
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mMessageLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2708
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v1, p1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2709
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    add-int/lit16 v1, p1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2710
    monitor-exit v7

    move v0, v6

    goto :goto_0

    .line 2712
    :cond_3
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 2713
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 2714
    const-string v0, "OnePlusProcessManager"

    const-string v1, "setBlockUid end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    :cond_4
    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeMessage(IJLjava/lang/String;I)V

    .line 2716
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2717
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    .line 2718
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResumeUid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " why = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v6

    .line 2719
    goto :goto_0

    .line 2716
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2721
    :cond_6
    sget-wide v2, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->adjustSuspendMessage(ILjava/lang/String;J)V

    goto :goto_0
.end method

.method public static sendSignal(II)V
    .locals 0
    .param p0, "pid"    # I
    .param p1, "sigNo"    # I

    .prologue
    .line 748
    invoke-static {p0, p1}, Landroid/os/Process;->sendSignal(II)V

    .line 749
    return-void
.end method

.method private sendSuspendUid(IJ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .prologue
    .line 1913
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    monitor-enter v2

    .line 1914
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1915
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1916
    const-string v1, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSuspendUid no Suspend Uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1918
    monitor-exit v2

    .line 1927
    :goto_0
    return-void

    .line 1920
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1923
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1924
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, -0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1925
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1926
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1920
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setCGroupStateLocked(IZ)Z
    .locals 16
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .prologue
    .line 492
    const/16 v12, 0x2710

    move/from16 v0, p1

    if-lt v0, v12, :cond_8

    .line 493
    const/4 v1, 0x0

    .line 495
    .local v1, "cgroupout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/sys/fs/cgroup/freezer/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/freezer.state"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 496
    .local v8, "mCgroupFreezerstate":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 498
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 499
    .local v9, "pf":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 500
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 502
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 503
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 504
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception : file not exists : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 505
    const/4 v12, 0x0

    .line 577
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13

    .line 578
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 579
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 581
    :cond_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    if-eqz v1, :cond_2

    .line 584
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 585
    const/4 v1, 0x0

    .line 593
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "f":Ljava/io/File;
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .end local v9    # "pf":Ljava/io/File;
    :cond_2
    :goto_0
    return v12

    .line 581
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v9    # "pf":Ljava/io/File;
    :catchall_0
    move-exception v12

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v12

    .line 587
    :catch_0
    move-exception v3

    .line 588
    .local v3, "e":Ljava/io/IOException;
    const-string v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 508
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "pf":Ljava/io/File;
    :cond_3
    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    .line 509
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .local v2, "cgroupout":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_12

    .line 510
    const/4 v7, 0x0

    .line 511
    .local v7, "index":I
    :try_start_5
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 512
    :try_start_6
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 513
    if-gez v7, :cond_4

    .line 514
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    const/4 v12, 0x1

    move/from16 v0, p1

    invoke-static {v0, v12}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 517
    :cond_4
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 518
    :try_start_7
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v13
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 519
    :try_start_8
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 520
    sget-object v14, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 521
    :try_start_9
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 522
    if-ltz v7, :cond_5

    .line 523
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 524
    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-static {v0, v12}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 526
    :cond_5
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 527
    const/4 v12, 0x0

    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 577
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13

    .line 578
    :try_start_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 579
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 581
    :cond_6
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 583
    if-eqz v2, :cond_b

    .line 584
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 585
    const/4 v1, 0x0

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 517
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    :try_start_d
    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v12
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 573
    :catch_1
    move-exception v4

    move-object v1, v2

    .line 574
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "index":I
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .local v4, "ex":Ljava/io/IOException;
    :goto_1
    :try_start_f
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException -->  setCGroupStateLocked():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    .line 577
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13

    .line 578
    :try_start_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 579
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 581
    :cond_7
    monitor-exit v13
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 583
    if-eqz v1, :cond_8

    .line 584
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    .line 585
    const/4 v1, 0x0

    .line 593
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_8
    :goto_2
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 526
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "index":I
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    :catchall_2
    move-exception v12

    :try_start_12
    monitor-exit v14
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v12

    .line 529
    :catchall_3
    move-exception v12

    monitor-exit v13
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw v12
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 577
    :catchall_4
    move-exception v12

    move-object v1, v2

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "index":I
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    :goto_3
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13

    .line 578
    :try_start_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 579
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 581
    :cond_9
    monitor-exit v13
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    .line 583
    if-eqz v1, :cond_a

    .line 584
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5

    .line 585
    const/4 v1, 0x0

    .line 590
    :cond_a
    :goto_4
    throw v12

    .line 581
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "index":I
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    :catchall_5
    move-exception v12

    :try_start_17
    monitor-exit v13
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    throw v12

    .line 587
    :catch_2
    move-exception v3

    .line 588
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    :cond_b
    :goto_5
    move-object v1, v2

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 529
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    :cond_c
    :try_start_18
    monitor-exit v13
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 530
    if-gtz v7, :cond_10

    .line 531
    :try_start_19
    sget-boolean v12, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_d

    .line 532
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setCGroupStateLocked "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " FROZEN"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_d
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 534
    :try_start_1a
    sget-boolean v12, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-nez v12, :cond_e

    .line 535
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 537
    :cond_e
    monitor-exit v13
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 538
    :try_start_1b
    const-string v6, "FROZEN"

    .line 539
    .local v6, "freeze":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 540
    .local v10, "statebuffer":[B
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 541
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 542
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 543
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 545
    :cond_f
    monitor-exit v13
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 572
    .end local v6    # "freeze":Ljava/lang/String;
    .end local v10    # "statebuffer":[B
    :cond_10
    :goto_6
    const/4 v12, 0x1

    .line 577
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13

    .line 578
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 579
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 581
    :cond_11
    monitor-exit v13
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    .line 583
    if-eqz v2, :cond_b

    .line 584
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_3

    .line 585
    const/4 v1, 0x0

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 537
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    :catchall_6
    move-exception v12

    :try_start_1f
    monitor-exit v13
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    :try_start_20
    throw v12
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    .line 545
    .restart local v6    # "freeze":Ljava/lang/String;
    .restart local v10    # "statebuffer":[B
    :catchall_7
    move-exception v12

    :try_start_21
    monitor-exit v13
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    :try_start_22
    throw v12

    .line 548
    .end local v6    # "freeze":Ljava/lang/String;
    .end local v7    # "index":I
    .end local v10    # "statebuffer":[B
    :cond_12
    const/4 v7, 0x0

    .line 549
    .restart local v7    # "index":I
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    .line 550
    :try_start_23
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 551
    if-ltz v7, :cond_13

    .line 552
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 553
    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-static {v0, v12}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 555
    :cond_13
    monitor-exit v13
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 556
    :try_start_24
    sget-boolean v12, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_14

    .line 557
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setCGroupStateLocked "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " THAWED"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_14
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    .line 559
    :try_start_25
    sget-boolean v12, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-nez v12, :cond_15

    .line 560
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 562
    :cond_15
    monitor-exit v13
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    .line 563
    :try_start_26
    const-string v11, "THAWED"

    .line 564
    .local v11, "thawed":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 565
    .restart local v10    # "statebuffer":[B
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 566
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    .line 567
    :try_start_27
    sget-boolean v12, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 568
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 570
    :cond_16
    monitor-exit v13

    goto/16 :goto_6

    :catchall_8
    move-exception v12

    monitor-exit v13
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    :try_start_28
    throw v12
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1
    .catchall {:try_start_28 .. :try_end_28} :catchall_4

    .line 555
    .end local v10    # "statebuffer":[B
    .end local v11    # "thawed":Ljava/lang/String;
    :catchall_9
    move-exception v12

    :try_start_29
    monitor-exit v13
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_9

    :try_start_2a
    throw v12
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_1
    .catchall {:try_start_2a .. :try_end_2a} :catchall_4

    .line 562
    :catchall_a
    move-exception v12

    :try_start_2b
    monitor-exit v13
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    :try_start_2c
    throw v12
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_1
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4

    .line 581
    :catchall_b
    move-exception v12

    :try_start_2d
    monitor-exit v13
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    throw v12

    .line 587
    :catch_3
    move-exception v3

    .line 588
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 581
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "index":I
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v4    # "ex":Ljava/io/IOException;
    :catchall_c
    move-exception v12

    :try_start_2e
    monitor-exit v13
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_c

    throw v12

    .line 587
    :catch_4
    move-exception v3

    .line 588
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 581
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_d
    move-exception v12

    :try_start_2f
    monitor-exit v13
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_d

    throw v12

    .line 587
    :catch_5
    move-exception v3

    .line 588
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 577
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_e
    move-exception v12

    goto/16 :goto_3

    .line 573
    :catch_6
    move-exception v4

    goto/16 :goto_1
.end method

.method public static setScreenState(Z)Z
    .locals 2
    .param p0, "screenState"    # Z

    .prologue
    .line 2795
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2796
    :try_start_0
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    .line 2797
    monitor-exit v1

    .line 2798
    const/4 v0, 0x1

    return v0

    .line 2797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private skipBlackBroadcastForProcess(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "ordered"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3073
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBroadcastList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBroadcastList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 3098
    :cond_0
    :goto_0
    return v1

    .line 3076
    :cond_1
    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v4, v5, :cond_0

    .line 3079
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3080
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBroadcastList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3081
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3084
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    const/4 v5, 0x4

    if-gt v4, v5, :cond_2

    .line 3085
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3086
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipBlackBroadcastForProcess  mUidState app = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3089
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3090
    .local v2, "now":J
    iget-wide v4, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 3091
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3092
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipBlackBroadcastForProcess  lastActivityTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  now = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3096
    :cond_3
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method static final skipBroadcast(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 6
    .param p0, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "ordered"    # Z

    .prologue
    const-wide/16 v4, 0x8

    const/4 v0, 0x0

    .line 3331
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v1, :cond_1

    .line 3352
    :cond_0
    :goto_0
    return v0

    .line 3334
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v1, :cond_0

    .line 3337
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_0

    .line 3340
    const-string v1, "skipBroadcast"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3341
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3342
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2

    .line 3343
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BPM Denial: receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to sender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is ordered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;  ordered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3349
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3351
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0
.end method

.method private skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "ordered"    # Z

    .prologue
    const/16 v6, 0x2710

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3018
    if-nez p1, :cond_1

    .line 3068
    :cond_0
    :goto_0
    return v3

    .line 3021
    :cond_1
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-lt v5, v6, :cond_0

    .line 3024
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 3027
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-nez v5, :cond_0

    .line 3030
    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3031
    .local v1, "broadcastAction":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 3032
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3033
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3034
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3037
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v7, 0x10

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_4

    .line 3038
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3040
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3041
    const-string v3, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not skip  mBlackBrdList broadcast: r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; app="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v4

    .line 3043
    goto/16 :goto_0

    .line 3046
    :cond_4
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipBroadcast mBlackBrdList action ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 3051
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    iget v5, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-lt v5, v6, :cond_a

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-lt v5, v6, :cond_a

    iget v5, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v5, v6, :cond_a

    if-eqz v1, :cond_a

    .line 3054
    const-string v5, "AlarmTaskSchedule"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "com.igexin.sdk.action"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "AlarmTaskScheduleBak"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3057
    :cond_6
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 3058
    const-string v3, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not skip  mBlackAlarmList broadcast: r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; app="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v3, v4

    .line 3059
    goto/16 :goto_0

    .line 3061
    :cond_8
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3062
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_9

    .line 3063
    const-string v3, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not skip  mBlackAlarmList broadcast: r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; app="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v3, v4

    .line 3064
    goto/16 :goto_0

    .line 3067
    :cond_a
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipBroadcast action ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private startComputeUidTraffic(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1640
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1641
    .local v0, "msg2":Landroid/os/Message;
    const/16 v1, 0x74

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1642
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1643
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1644
    return-void
.end method

.method private startResumeUid(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 2455
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)Z

    .line 2456
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2458
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IPowerManager;->updateBlockedUids(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2462
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2463
    const-string v1, "OnePlusProcessManager"

    const-string v2, "startResumeUid ---------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    :cond_0
    return-void

    .line 2459
    :catch_0
    move-exception v0

    .line 2460
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBlockedUids "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startSuspendUids(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v6, 0x1

    .line 2415
    invoke-virtual {p0, p1, v6}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)Z

    move-result v1

    .line 2416
    .local v1, "isSuspend":Z
    if-eqz v1, :cond_4

    .line 2417
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v4}, Landroid/os/IPowerManager;->updateBlockedUids(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2423
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2424
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-static {p1, v6}, Lcom/android/server/LocationManagerService;->updateUidBlock(IZ)V

    .line 2426
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2427
    :cond_1
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-virtual {v3, p1, v6}, Lcom/android/server/LocationManagerService;->updateReceiverBlockRequest(IZ)V

    .line 2429
    :cond_2
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    if-eqz v3, :cond_3

    .line 2430
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2431
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2432
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 2433
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 2435
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v3, v2, v4, v5}, Landroid/app/IAlarmManager;->setBlockAlarmUid(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2441
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_1
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 2442
    :try_start_2
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2444
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mSensorUids:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2445
    :try_start_3
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSensorUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2446
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2447
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->cancelNotificationsForUid(I)V

    .line 2449
    :cond_4
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 2450
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSuspendUids isSuspend ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :cond_5
    return v1

    .line 2420
    :catch_0
    move-exception v0

    .line 2421
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBlockedUids "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2443
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 2446
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 2436
    .restart local v2    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private suspendRelateUid(I)Ljava/util/ArrayList;
    .locals 20
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2468
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 2469
    .local v11, "mSuspendProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2471
    .local v13, "mUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_2

    .line 2472
    :cond_0
    const/4 v13, 0x0

    .line 2544
    .end local v13    # "mUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    return-object v13

    .line 2474
    .restart local v13    # "mUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v10, v15, :cond_1

    .line 2475
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2476
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v2, :cond_4

    .line 2474
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2479
    :cond_4
    iget v15, v2, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    if-lez v15, :cond_6

    .line 2480
    sget-boolean v15, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v15, :cond_5

    .line 2481
    const-string v15, "OnePlusProcessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "suspendRelateUid permRequestCount "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " uid ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    :cond_5
    const/4 v13, 0x0

    goto :goto_0

    .line 2485
    :cond_6
    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    if-eqz v15, :cond_9

    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v15

    if-lez v15, :cond_9

    .line 2486
    const/4 v14, 0x0

    .line 2487
    .local v14, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "it":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 2488
    const/4 v14, 0x0

    .line 2490
    :try_start_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "sr":Lcom/android/server/am/ServiceRecord;
    check-cast v14, Lcom/android/server/am/ServiceRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2494
    .restart local v14    # "sr":Lcom/android/server/am/ServiceRecord;
    if-eqz v14, :cond_7

    iget-object v15, v14, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    if-eqz v15, :cond_7

    .line 2495
    const/4 v5, 0x0

    .local v5, "conni":I
    :goto_2
    iget-object v15, v14, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v5, v15, :cond_7

    .line 2496
    iget-object v15, v14, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v15, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2497
    .local v4, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v8, v15, :cond_d

    .line 2498
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 2499
    .local v6, "crd":Lcom/android/server/am/ConnectionRecord;
    if-eqz v6, :cond_8

    iget-object v15, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v15, :cond_8

    iget v15, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 2501
    iget-object v15, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v12, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2502
    .local v12, "mUid":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 2497
    .end local v12    # "mUid":I
    :cond_8
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2491
    .end local v4    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "conni":I
    .end local v6    # "crd":Lcom/android/server/am/ConnectionRecord;
    .end local v8    # "i":I
    .end local v14    # "sr":Lcom/android/server/am/ServiceRecord;
    :catch_0
    move-exception v7

    .line 2518
    .end local v9    # "it":Ljava/util/Iterator;
    :cond_9
    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    if-eqz v15, :cond_3

    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 2519
    const/4 v5, 0x0

    .restart local v5    # "conni":I
    :goto_5
    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v5, v15, :cond_3

    .line 2520
    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v15, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 2521
    .local v3, "c":Lcom/android/server/am/ContentProviderRecord;
    const/4 v14, 0x0

    .line 2522
    .local v14, "sr":Lcom/android/server/am/ContentProviderConnection;
    iget-object v15, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "it":Ljava/util/Iterator;
    :cond_a
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 2524
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "sr":Lcom/android/server/am/ContentProviderConnection;
    check-cast v14, Lcom/android/server/am/ContentProviderConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2528
    .restart local v14    # "sr":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v14, :cond_a

    iget v15, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, v14, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    .line 2529
    iget-object v15, v14, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v12, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2530
    .restart local v12    # "mUid":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v15

    if-nez v15, :cond_a

    .line 2533
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/OnePlusProcessManager;->checkSuspendUid(I)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    move-wide/from16 v18, v0

    cmpl-double v15, v16, v18

    if-nez v15, :cond_f

    .line 2534
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2535
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2505
    .end local v3    # "c":Lcom/android/server/am/ContentProviderRecord;
    .restart local v4    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v6    # "crd":Lcom/android/server/am/ConnectionRecord;
    .restart local v8    # "i":I
    .local v14, "sr":Lcom/android/server/am/ServiceRecord;
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/OnePlusProcessManager;->checkSuspendUid(I)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    move-wide/from16 v18, v0

    cmpl-double v15, v16, v18

    if-nez v15, :cond_c

    .line 2506
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2507
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2509
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2495
    .end local v6    # "crd":Lcom/android/server/am/ConnectionRecord;
    .end local v12    # "mUid":I
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 2525
    .end local v4    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v8    # "i":I
    .end local v14    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "c":Lcom/android/server/am/ContentProviderRecord;
    :catch_1
    move-exception v7

    .line 2519
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 2537
    .restart local v12    # "mUid":I
    .local v14, "sr":Lcom/android/server/am/ContentProviderConnection;
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private tryAddScreenOffTrafficUids()V
    .locals 4

    .prologue
    .line 1647
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1650
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1651
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1652
    .local v1, "mUid":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1653
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1654
    .local v2, "uid":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->addTempWhiteList(I)V

    goto :goto_0

    .line 1657
    .end local v1    # "mUid":Ljava/lang/Integer;
    .end local v2    # "uid":I
    :cond_1
    return-void
.end method

.method private updateBPMEnableState(Z)V
    .locals 7
    .param p1, "flag"    # Z

    .prologue
    const/4 v6, 0x1

    .line 2571
    if-nez p1, :cond_1

    .line 2572
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2573
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2575
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2576
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2577
    .local v1, "uid":I
    const-string v2, "updateBPMEnableState"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    .line 2575
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2580
    .end local v1    # "uid":I
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2582
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->computeThreeAppState()V

    .line 2583
    if-ne p1, v6, :cond_3

    .line 2584
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2586
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2587
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2588
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2589
    .local v1, "uid":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2587
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2580
    .end local v1    # "uid":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2591
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2593
    .end local v0    # "i":I
    :cond_3
    if-eqz p1, :cond_4

    .line 2594
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string v3, "doze_mode_policy"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2598
    :goto_2
    return-void

    .line 2591
    .restart local v0    # "i":I
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 2596
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string v3, "doze_mode_policy"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method private updateConfigureStateForChanged(Z)V
    .locals 6
    .param p1, "inUsing"    # Z

    .prologue
    .line 2900
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2901
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateProcessStateForChanged():inUsing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2904
    if-eqz p1, :cond_2

    .line 2905
    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2906
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2907
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_1

    .line 2908
    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessCanSuspend(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2909
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2910
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x73

    iput v3, v1, Landroid/os/Message;->what:I

    .line 2911
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 2912
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 2913
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2905
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2918
    .end local v0    # "i":I
    .end local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_2
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 2919
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2920
    .restart local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_3

    .line 2921
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "updateProcessStateForChanged"

    invoke-direct {p0, v3, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    .line 2918
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2925
    .end local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_4
    monitor-exit v4

    .line 2926
    return-void

    .line 2925
    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateForegroundActivityChange(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1618
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1619
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-static {p1, v3}, Lcom/android/server/LocationManagerService;->updateUidBlock(IZ)V

    .line 1621
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1622
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1, p1, v3}, Lcom/android/server/LocationManagerService;->updateReceiverBlockRequest(IZ)V

    .line 1624
    :cond_2
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    if-eqz v1, :cond_3

    .line 1625
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1626
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1627
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1628
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1630
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/app/IAlarmManager;->setBlockAlarmUid(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1636
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 1631
    .restart local v0    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static updateImportantUidChange(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1280
    .local p0, "mNewImportUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 1284
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mImportUids:Ljava/util/HashSet;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/OnePlusProcessManager;->handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1286
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 1287
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImportantUidChange change ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mImportUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1289
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mImportUids:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static updateLocationReceiverUidsChange(IZZ)V
    .locals 1
    .param p0, "mUid"    # I
    .param p1, "isAdd"    # Z
    .param p2, "isReceiver"    # Z

    .prologue
    .line 1315
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusProcessManager;->updateLocationReceiverUidsChange(IZZZ)V

    .line 1316
    return-void
.end method

.method public static updateLocationReceiverUidsChange(IZZZ)V
    .locals 6
    .param p0, "mUid"    # I
    .param p1, "isAdd"    # Z
    .param p2, "isReceiver"    # Z
    .param p3, "isGps"    # Z

    .prologue
    const-wide/16 v4, 0x2

    .line 1320
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 1324
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 1325
    if-eqz p2, :cond_5

    .line 1326
    if-eqz p1, :cond_3

    .line 1328
    if-eqz p3, :cond_2

    .line 1329
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1331
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1334
    :cond_3
    if-eqz p3, :cond_4

    .line 1335
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1339
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v2, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    div-long/2addr v2, v4

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    goto :goto_0

    .line 1343
    :cond_4
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1347
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v2, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    div-long/2addr v2, v4

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    goto :goto_0

    .line 1353
    :cond_5
    if-eqz p1, :cond_6

    .line 1355
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1357
    :cond_6
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static updateScreenState(Z)V
    .locals 2
    .param p0, "screenState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2727
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 2763
    :cond_0
    :goto_0
    return-void

    .line 2730
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_2

    .line 2731
    if-eqz p0, :cond_0

    .line 2732
    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 2733
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    goto :goto_0

    .line 2737
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 2744
    if-eqz p0, :cond_3

    .line 2745
    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCount:I

    .line 2746
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 2760
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    .line 2762
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateTouchWindowUidChange(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1294
    .local p0, "fontWindowTouchUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1297
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 1298
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/OnePlusProcessManager;->handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1300
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 1301
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTouchWindowUidChange change ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1303
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private static writePidToTasksFile(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 650
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V

    .line 651
    return-void
.end method

.method private static writePidToTasksFile(IIZ)V
    .locals 23
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "retry"    # Z

    .prologue
    .line 654
    const/16 v19, 0x2710

    move/from16 v0, p0

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    const/4 v12, -0x1

    .line 658
    .local v12, "pidState":I
    const/4 v3, 0x0

    .line 659
    .local v3, "cgroupout":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 661
    .local v7, "f":Ljava/io/File;
    :try_start_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/sys/fs/cgroup/freezer/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/freezer.state"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 662
    .local v10, "mCgroupFreezerstate":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 663
    .end local v7    # "f":Ljava/io/File;
    .local v8, "f":Ljava/io/File;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_3

    .line 664
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 665
    .local v11, "pf":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_2

    .line 666
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 668
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 669
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_3

    .line 670
    const-string v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception : file not exists : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 724
    if-eqz v3, :cond_0

    .line 725
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 726
    const/4 v3, 0x0

    goto :goto_0

    .line 728
    :catch_0
    move-exception v5

    .line 729
    .local v5, "ec":Ljava/io/IOException;
    const-string v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : close Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 674
    .end local v5    # "ec":Ljava/io/IOException;
    .end local v11    # "pf":Ljava/io/File;
    :cond_3
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 675
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .local v4, "cgroupout":Ljava/io/FileOutputStream;
    :try_start_4
    sget-object v20, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v20
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 676
    :try_start_5
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v19, :cond_4

    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 678
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 680
    :cond_4
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 681
    :try_start_6
    const-string v18, "THAWED"

    .line 682
    .local v18, "thawed":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    .line 683
    .local v17, "statebuffer":[B
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 684
    sget-object v20, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v20
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 685
    :try_start_7
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v19, :cond_5

    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 687
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 689
    :cond_5
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 691
    :try_start_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/sys/fs/cgroup/freezer/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/tasks"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 692
    .local v9, "mCgroupFreezerPathbytasks":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 693
    .end local v8    # "f":Ljava/io/File;
    .restart local v7    # "f":Ljava/io/File;
    :try_start_9
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_a

    .line 694
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_6

    .line 695
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 696
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 699
    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_a

    .line 700
    const-string v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not exist ------- Exception"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 724
    if-eqz v4, :cond_9

    .line 725
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 726
    const/4 v3, 0x0

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 680
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v7    # "f":Ljava/io/File;
    .end local v9    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .end local v17    # "statebuffer":[B
    .end local v18    # "thawed":Ljava/lang/String;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v8    # "f":Ljava/io/File;
    :catchall_0
    move-exception v19

    :try_start_b
    monitor-exit v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v19
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 714
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8    # "f":Ljava/io/File;
    .restart local v7    # "f":Ljava/io/File;
    move-object v3, v4

    .line 715
    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .local v6, "ex":Ljava/io/IOException;
    :goto_1
    :try_start_d
    const-string v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", retry = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", pidState="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    if-eqz p2, :cond_7

    .line 720
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v0, v19

    move/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFileDelayed(II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 724
    :cond_7
    if-eqz v3, :cond_0

    .line 725
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 726
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 689
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v6    # "ex":Ljava/io/IOException;
    .end local v7    # "f":Ljava/io/File;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v8    # "f":Ljava/io/File;
    .restart local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v17    # "statebuffer":[B
    .restart local v18    # "thawed":Ljava/lang/String;
    :catchall_1
    move-exception v19

    :try_start_f
    monitor-exit v20
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v19
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 723
    .end local v17    # "statebuffer":[B
    .end local v18    # "thawed":Ljava/lang/String;
    :catchall_2
    move-exception v19

    move-object v7, v8

    .end local v8    # "f":Ljava/io/File;
    .restart local v7    # "f":Ljava/io/File;
    move-object v3, v4

    .line 724
    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v3, :cond_8

    .line 725
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 726
    const/4 v3, 0x0

    .line 731
    :cond_8
    :goto_3
    throw v19

    .line 728
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v9    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .restart local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v17    # "statebuffer":[B
    .restart local v18    # "thawed":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 729
    .restart local v5    # "ec":Ljava/io/IOException;
    const-string v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : close Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "ec":Ljava/io/IOException;
    :cond_9
    move-object v3, v4

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 704
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    :cond_a
    :try_start_12
    const-string v14, ""

    .line 705
    .local v14, "pidsStr":Ljava/lang/String;
    const-string v15, ""

    .line 706
    .local v15, "pidsStr_debug":Ljava/lang/String;
    const-string v16, ""

    .line 707
    .local v16, "processName":Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 708
    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    :try_start_13
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 709
    .local v13, "pidbuffer":[B
    invoke-virtual {v3, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 711
    sget-boolean v19, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v19, :cond_b

    .line 712
    const-string v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "writePidToTasksFile():uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", retry="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " --> ok"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 724
    :cond_b
    if-eqz v3, :cond_0

    .line 725
    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3

    .line 726
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 728
    :catch_3
    move-exception v5

    .line 729
    .restart local v5    # "ec":Ljava/io/IOException;
    const-string v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : close Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 728
    .end local v5    # "ec":Ljava/io/IOException;
    .end local v9    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .end local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    .end local v13    # "pidbuffer":[B
    .end local v14    # "pidsStr":Ljava/lang/String;
    .end local v15    # "pidsStr_debug":Ljava/lang/String;
    .end local v16    # "processName":Ljava/lang/String;
    .end local v17    # "statebuffer":[B
    .end local v18    # "thawed":Ljava/lang/String;
    .restart local v6    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 729
    .restart local v5    # "ec":Ljava/io/IOException;
    const-string v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : close Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 728
    .end local v5    # "ec":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 729
    .restart local v5    # "ec":Ljava/io/IOException;
    const-string v20, "OnePlusProcessManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", pid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " : close Exception : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 723
    .end local v5    # "ec":Ljava/io/IOException;
    :catchall_3
    move-exception v19

    goto/16 :goto_2

    .end local v7    # "f":Ljava/io/File;
    .restart local v8    # "f":Ljava/io/File;
    .restart local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    :catchall_4
    move-exception v19

    move-object v7, v8

    .end local v8    # "f":Ljava/io/File;
    .restart local v7    # "f":Ljava/io/File;
    goto/16 :goto_2

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v9    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .restart local v17    # "statebuffer":[B
    .restart local v18    # "thawed":Ljava/lang/String;
    :catchall_5
    move-exception v19

    move-object v3, v4

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 714
    .end local v9    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .end local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    .end local v17    # "statebuffer":[B
    .end local v18    # "thawed":Ljava/lang/String;
    :catch_6
    move-exception v6

    goto/16 :goto_1

    .end local v7    # "f":Ljava/io/File;
    .restart local v8    # "f":Ljava/io/File;
    .restart local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    :catch_7
    move-exception v6

    move-object v7, v8

    .end local v8    # "f":Ljava/io/File;
    .restart local v7    # "f":Ljava/io/File;
    goto/16 :goto_1

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v9    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .restart local v17    # "statebuffer":[B
    .restart local v18    # "thawed":Ljava/lang/String;
    :catch_8
    move-exception v6

    move-object v3, v4

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method


# virtual methods
.method public checkPackage(Landroid/content/pm/ApplicationInfo;)Z
    .locals 6
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2059
    if-nez p1, :cond_1

    .line 2060
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exits!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    :cond_0
    :goto_0
    return v2

    .line 2070
    :cond_1
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2071
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v3, :cond_0

    .line 2072
    const-string v3, "OnePlusProcessManager"

    const-string v4, "---->#return true,white app "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2075
    :cond_2
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_4

    .line 2076
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2077
    .local v1, "pkg":Ljava/lang/String;
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 2078
    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 2084
    goto :goto_0
.end method

.method checkTrafficUid(I)Z
    .locals 14
    .param p1, "uid"    # I

    .prologue
    .line 1713
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1714
    .local v0, "now":J
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    .line 1715
    .local v2, "obj":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    if-nez v2, :cond_0

    .line 1716
    const/4 v3, 0x0

    .line 1732
    :goto_0
    return v3

    .line 1718
    :cond_0
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v8

    .line 1719
    .local v8, "txBytes":J
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    .line 1720
    .local v4, "rxBytes":J
    const-wide/16 v6, 0x1

    .line 1721
    .local v6, "timeDuring":J
    sget-wide v10, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_1

    .line 1722
    iget-wide v10, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->startTime:J

    sub-long v10, v0, v10

    sget-wide v12, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    div-long v6, v10, v12

    .line 1724
    :cond_1
    const-wide/16 v10, 0x1

    cmp-long v3, v6, v10

    if-gtz v3, :cond_2

    .line 1725
    const-wide/16 v6, 0x1

    .line 1727
    :cond_2
    const-wide/32 v10, 0x19000

    iget-wide v12, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->rxBytes:J

    sub-long v12, v4, v12

    div-long/2addr v12, v6

    cmp-long v3, v10, v12

    if-gez v3, :cond_3

    .line 1728
    const/4 v3, 0x1

    goto :goto_0

    .line 1729
    :cond_3
    const-wide/32 v10, 0x19000

    iget-wide v12, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->txBytes:J

    sub-long v12, v8, v12

    div-long/2addr v12, v6

    cmp-long v3, v10, v12

    if-gez v3, :cond_4

    .line 1730
    const/4 v3, 0x1

    goto :goto_0

    .line 1732
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public computeThreeAppState()V
    .locals 7

    .prologue
    .line 2610
    const/4 v3, 0x0

    .line 2611
    .local v3, "mProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 2612
    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    .line 2613
    monitor-exit v5

    .line 2614
    if-nez v3, :cond_1

    .line 2631
    :cond_0
    return-void

    .line 2613
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2618
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 2619
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2620
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_2

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_3

    .line 2618
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2623
    :cond_3
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-nez v4, :cond_2

    .line 2625
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->add3rdAppProcessState(II)V

    .line 2626
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2627
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3694
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@The BPM status is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3695
    const-string v9, "@The BPM list : "

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 3696
    const-string v9, "@The PKG list : "

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 3697
    const-string v9, "@The BRD list : "

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 3698
    const-string v9, "@The BAD list : "

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mBadList:Ljava/util/List;

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 3699
    const-string v9, "@The AppWidget list : "

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 3701
    const-string v9, "UidPidState list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3702
    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3703
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 3704
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t mUidPidState uid : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3705
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3706
    .local v6, "mPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 3707
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t \t  mUidPidState pid : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3706
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3703
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3710
    .end local v3    # "j":I
    .end local v6    # "mPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3711
    const-string v9, "Suspend list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3712
    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3713
    const/4 v1, 0x0

    :goto_2
    :try_start_1
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 3714
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t suspend uid : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3713
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3710
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 3716
    :cond_2
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3717
    const-string v9, "mGpsReceiverLocationUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3719
    const/4 v1, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 3720
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t mGpsReceiverLocationUids uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3719
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3716
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 3722
    :cond_3
    const-string v9, "mOtherReceiverLocationUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3724
    const/4 v1, 0x0

    :goto_4
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 3725
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t mOtherReceiverLocationUids uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3724
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3729
    :cond_4
    const-string v9, "mStatusLocationUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3731
    const/4 v1, 0x0

    :goto_5
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_5

    .line 3732
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t mStatusLocationUids uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3731
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3734
    :cond_5
    const-string v9, "mFontWindowTouchUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3736
    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3737
    :try_start_5
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3738
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3739
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 3740
    .local v7, "mUid":Ljava/lang/Integer;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t mFontWindowTouchUids uid : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 3742
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7    # "mUid":Ljava/lang/Integer;
    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3743
    const-string v9, "UnFrozenReasonUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3744
    const/4 v1, 0x0

    :goto_7
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v1, v9, :cond_7

    .line 3745
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t mUnFrozenUids uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " reseason = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3744
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3748
    :cond_7
    const-string v9, "ResumeBroadcastUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3752
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    if-eqz v9, :cond_9

    .line 3753
    const/4 v1, 0x0

    :goto_8
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_9

    .line 3754
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 3755
    .local v4, "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 3756
    .local v8, "uid":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t resumeBroadcastUids uid = : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3757
    if-eqz v4, :cond_8

    .line 3758
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_9
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v3, v9, :cond_8

    .line 3759
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3760
    .local v0, "broadcasts":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3761
    .local v5, "mCount":Ljava/lang/Integer;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t resumeBroadcastUids uid = : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " broadcast ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3758
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 3753
    .end local v0    # "broadcasts":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "mCount":Ljava/lang/Integer;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3768
    .end local v4    # "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "uid":I
    :cond_9
    const-string v9, "SuspendProcessHander list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3769
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    if-eqz v9, :cond_a

    .line 3770
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    new-instance v10, Landroid/util/PrintWriterPrinter;

    invoke-direct {v10, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v11, "\t message list"

    invoke-virtual {v9, v10, v11}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3773
    :cond_a
    const-string v9, "ResumeProcessHander list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3774
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    if-eqz v9, :cond_b

    .line 3775
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    new-instance v10, Landroid/util/PrintWriterPrinter;

    invoke-direct {v10, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v11, "\t message list"

    invoke-virtual {v9, v10, v11}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3779
    :cond_b
    return-void
.end method

.method public getBPMEnable()Z
    .locals 3

    .prologue
    .line 2548
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 2549
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBPMEnable():mBPMStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method loadNPMConfigFiles()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1843
    const-string v2, "/data/data_bpm/brd.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 1844
    const-string v2, "/data/data_bpm/pkg.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 1845
    const-string v2, "/data/data_bpm/black_broadcast.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBroadcastList:Ljava/util/List;

    .line 1846
    const-string v2, "/data/data_bpm/black_gps.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    .line 1847
    const-string v2, "/data/data_bpm/black_brd.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    .line 1848
    const-string v2, "/data/data_bpm/black_alarm.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    .line 1850
    const-string v2, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadNPMConfigFiles: mPkgList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    const-string v2, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadNPMConfigFiles: mBrdList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    const-string v2, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadNPMConfigFiles: mBlackBroadcastList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBroadcastList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    const-string v2, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadNPMConfigFiles mBlackBrdList= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    const-string v2, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadNPMConfigFiles mBlackGpsList= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    const-string v2, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadNPMConfigFiles mBlackAlarmList= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1859
    .local v0, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1860
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 1861
    .local v1, "temp":Z
    :goto_0
    const-string v2, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FO]UPDATE_STS: before: temp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareConfigStatus()V

    .line 1863
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    if-ne v2, v3, :cond_2

    .line 1864
    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 1865
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 1873
    .end local v1    # "temp":Z
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    .line 1875
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]UPDATE_STS: before: mBPMStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    return-void

    :cond_1
    move v1, v4

    .line 1860
    goto :goto_0

    .line 1866
    .restart local v1    # "temp":Z
    :cond_2
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1867
    invoke-virtual {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 1868
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 1870
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    goto :goto_1
.end method

.method public openDebug(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 3682
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 3683
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 3684
    return-void
.end method

.method prepareBPMConfigFiles()V
    .locals 6

    .prologue
    .line 2237
    const-string v3, "OnePlusProcessManager"

    const-string v4, "[FO]prepareBPMConfigFiles()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data_bpm/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2240
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2241
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2243
    :cond_0
    const/4 v2, 0x0

    .line 2244
    .local v2, "isForceUpdate":Z
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->checkVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2245
    const/4 v2, 0x1

    .line 2247
    :cond_1
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FO]prepareBPMConfigFiles() isForceUpdate ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    const-string v3, "/system/bpm/pkg.xml"

    const-string v4, "/data/data_bpm/pkg.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2249
    const-string v3, "/system/bpm/brd.xml"

    const-string v4, "/data/data_bpm/brd.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2250
    const-string v3, "/system/bpm/bpm_sts.xml"

    const-string v4, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2251
    const-string v3, "/system/bpm/black_broadcast.xml"

    const-string v4, "/data/data_bpm/black_broadcast.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2252
    const-string v3, "/system/bpm/black_gps.xml"

    const-string v4, "/data/data_bpm/black_gps.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2253
    const-string v3, "/system/bpm/black_brd.xml"

    const-string v4, "/data/data_bpm/black_brd.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2254
    const-string v3, "/system/bpm/black_alarm.xml"

    const-string v4, "/data/data_bpm/black_alarm.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2255
    const-string v3, "/system/bpm/version.xml"

    const-string v4, "/data/data_bpm/version.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2261
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "isForceUpdate":Z
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "chmod 0770 /data/data_bpm/"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2262
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "chmod 0770 /data/data_bpm/pkg.xml"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2263
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "chmod 0770 /data/data_bpm/brd.xml"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2264
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "chmod 0770 /data/data_bpm/bpm_sts.xml"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2265
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "chmod 0770 /data/data_bpm/black_gps.xml"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2266
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "chmod 0770 /data/data_bpm/black_brd.xml"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2271
    :goto_1
    return-void

    .line 2256
    :catch_0
    move-exception v0

    .line 2257
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FO]initBPMConfigFiles(): failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2267
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2268
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FO]prepareBPMConfigFiles(): failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method prepareConfigStatus()V
    .locals 8

    .prologue
    .line 1796
    const-string v7, "prepareConfigStatus()"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 1797
    const-string v7, "/data/data_bpm/cfg.xml"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1798
    .local v0, "dataCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "/system/bpm/cfg.xml"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 1805
    .local v5, "sysCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1806
    .local v4, "sv":I
    const/4 v2, 0x0

    .line 1807
    .local v2, "dv":I
    if-nez v5, :cond_1

    .line 1808
    const/4 v4, 0x0

    .line 1839
    :cond_0
    :goto_0
    return-void

    .line 1811
    :cond_1
    const-string v7, "version"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1812
    .local v6, "sysVersion":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1813
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1817
    :cond_2
    if-nez v0, :cond_5

    .line 1818
    const/4 v2, 0x0

    .line 1825
    :cond_3
    :goto_1
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    .line 1826
    if-le v4, v2, :cond_0

    .line 1827
    sput v4, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    .line 1828
    const-string v7, "forceSwitch"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1829
    .local v3, "forceSwitch":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 1830
    const-string v7, "on"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1831
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    .line 1837
    :cond_4
    :goto_2
    const-string v7, "/data/data_bpm/cfg.xml"

    invoke-static {v7, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveXmlLocked(Ljava/lang/String;Ljava/util/HashMap;)Z

    goto :goto_0

    .line 1820
    .end local v3    # "forceSwitch":Ljava/lang/String;
    :cond_5
    const-string v7, "version"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1821
    .local v1, "dataVersion":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1822
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 1832
    .end local v1    # "dataVersion":Ljava/lang/String;
    .restart local v3    # "forceSwitch":Ljava/lang/String;
    :cond_6
    const-string v7, "off"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1833
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    goto :goto_2
.end method

.method removeUidStateLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1367
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 1368
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1369
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 1370
    .local v1, "oldUidState":I
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1372
    .end local v1    # "oldUidState":I
    :cond_0
    return-void
.end method

.method public resumeAllProcessLock(Ljava/lang/String;)V
    .locals 5
    .param p1, "why"    # Ljava/lang/String;

    .prologue
    .line 2781
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2782
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2783
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    invoke-direct {v3, v1, p1, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;I)Z

    .line 2782
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2785
    :cond_0
    monitor-exit v2

    .line 2786
    return-void

    .line 2785
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBPMEnable(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 2554
    if-eqz p1, :cond_2

    .line 2555
    const-string v0, "sys.cgroup.active"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2559
    :goto_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    if-ne v0, v1, :cond_0

    .line 2560
    const/4 p1, 0x0

    .line 2562
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eq p1, v0, :cond_1

    .line 2563
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    .line 2564
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateBPMEnableState(Z)V

    .line 2565
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 2568
    :cond_1
    return-void

    .line 2557
    :cond_2
    const-string v0, "sys.cgroup.active"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCGroupState(IZ)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .prologue
    .line 744
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupStateLocked(IZ)Z

    move-result v0

    return v0
.end method

.method updatePowerSaveWhitelistLocked()V
    .locals 6

    .prologue
    .line 1148
    const/4 v4, 0x0

    :try_start_0
    new-array v1, v4, [I

    .line 1149
    .local v1, "mWhiteUid":[I
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v4, :cond_0

    .line 1150
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v1

    .line 1152
    :cond_0
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :try_start_1
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->changeIntToList([I)Ljava/util/List;

    move-result-object v3

    .line 1154
    .local v3, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->changeIntToList([I)Ljava/util/List;

    move-result-object v2

    .line 1155
    .local v2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v3, v2}, Lcom/android/server/am/OnePlusProcessManager;->handlePackageChange(Ljava/util/List;Ljava/util/List;)V

    .line 1156
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    .line 1157
    monitor-exit v5

    .line 1161
    .end local v1    # "mWhiteUid":[I
    .end local v2    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 1157
    .restart local v1    # "mWhiteUid":[I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1158
    .end local v1    # "mWhiteUid":[I
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    sput-object v4, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    goto :goto_0
.end method

.method updateProperties()V
    .locals 0

    .prologue
    .line 1879
    return-void
.end method

.method updateUidStateLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    .line 1272
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1273
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_0

    .line 1275
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1277
    :cond_0
    return-void
.end method

.method writePidToTasksFileDelayed(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 736
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 737
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x72

    iput v1, v0, Landroid/os/Message;->what:I

    .line 738
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 739
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 740
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 741
    return-void
.end method

.method public writePidsToTasksFile(I)V
    .locals 18
    .param p1, "uid"    # I

    .prologue
    .line 597
    const/4 v1, 0x0

    .line 599
    .local v1, "cgroupout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/sys/fs/cgroup/freezer/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/tasks"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 601
    .local v7, "mCgroupFreezerPathbytasks":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 603
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 604
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 605
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 608
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 609
    const-string v14, "OnePlusProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not exist ------- Exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 638
    if-eqz v1, :cond_1

    .line 639
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 640
    const/4 v1, 0x0

    .line 647
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 642
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 643
    .local v3, "e":Ljava/io/IOException;
    const-string v14, "OnePlusProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 613
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    const-string v9, ""

    .line 614
    .local v9, "pidsStr":Ljava/lang/String;
    const-string v10, ""

    .line 615
    .local v10, "pidsStr_debug":Ljava/lang/String;
    const-string v11, ""

    .line 616
    .local v11, "processName":Ljava/lang/String;
    sget-object v15, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 617
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 618
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .local v2, "cgroupout":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v13, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v14, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_4

    .line 620
    sget-object v14, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 621
    .local v12, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v12, :cond_3

    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v14, :cond_3

    iget v14, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_3

    .line 622
    iget-object v11, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 623
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 624
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ";"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 625
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 626
    .local v8, "pidbuffer":[B
    invoke-virtual {v2, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 619
    .end local v8    # "pidbuffer":[B
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 629
    .end local v12    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 630
    :try_start_5
    sget-boolean v14, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v14, :cond_5

    .line 631
    const-string v14, "OnePlusProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "writePidsToTasksFile(): pidsStr_debug="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",  uid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",  processName="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 638
    :cond_5
    if-eqz v2, :cond_7

    .line 639
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 640
    const/4 v1, 0x0

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 629
    .end local v6    # "i":I
    .end local v13    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v14

    :goto_2
    :try_start_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v14
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 633
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .end local v9    # "pidsStr":Ljava/lang/String;
    .end local v10    # "pidsStr_debug":Ljava/lang/String;
    .end local v11    # "processName":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 634
    .local v4, "ex":Ljava/io/IOException;
    :goto_3
    :try_start_9
    const-string v14, "OnePlusProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException --> writePidsToTasksFile() : uid=:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 638
    if-eqz v1, :cond_1

    .line 639
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 640
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 642
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v6    # "i":I
    .restart local v7    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .restart local v9    # "pidsStr":Ljava/lang/String;
    .restart local v10    # "pidsStr_debug":Ljava/lang/String;
    .restart local v11    # "processName":Ljava/lang/String;
    .restart local v13    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catch_2
    move-exception v3

    .line 643
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v14, "OnePlusProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 646
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 642
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "i":I
    .end local v7    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .end local v9    # "pidsStr":Ljava/lang/String;
    .end local v10    # "pidsStr_debug":Ljava/lang/String;
    .end local v11    # "processName":Ljava/lang/String;
    .end local v13    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v4    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 643
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v14, "OnePlusProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 637
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v14

    .line 638
    :goto_4
    if-eqz v1, :cond_6

    .line 639
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 640
    const/4 v1, 0x0

    .line 645
    :cond_6
    :goto_5
    throw v14

    .line 642
    :catch_4
    move-exception v3

    .line 643
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v15, "OnePlusProcessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 637
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v6    # "i":I
    .restart local v7    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .restart local v9    # "pidsStr":Ljava/lang/String;
    .restart local v10    # "pidsStr_debug":Ljava/lang/String;
    .restart local v11    # "processName":Ljava/lang/String;
    .restart local v13    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_2
    move-exception v14

    move-object v1, v2

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 633
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    move-object v1, v2

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 629
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v6    # "i":I
    .end local v13    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v14

    move-object v1, v2

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v6    # "i":I
    .restart local v13    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_7
    move-object v1, v2

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method
