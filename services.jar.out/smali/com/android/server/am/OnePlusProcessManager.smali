.class public Lcom/android/server/am/OnePlusProcessManager;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field public static DEBUG:Z = false

.field public static DEBUG_DETAIL:Z = false

.field private static final DEVICE_IDLE_SERVICE:Ljava/lang/String; = "deviceidle"

.field private static final FORCE_SWITCH_IGNORE:I = 0x0

.field private static final FORCE_SWITCH_OFF:I = 0x2

.field private static final FORCE_SWITCH_ON:I = 0x1

.field private static final INIT_CONFIG_DATA:I = 0x70

.field private static final MESSAGE_CLEAR_BROADCAST_HISTORY:I = 0x75

.field private static final MESSAGE_COMPLUTE_TRAFFIC:I = 0x74

.field private static final MESSAGE_SUSPEND_DELAY:I = 0x71

.field private static final MESSAGE_SUSPEND_UID_ADDPID:I = 0x73

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

.field private static final SYS_BLACK_BRD_FILE:Ljava/lang/String; = "/system/bpm/black_brd.xml"

.field private static final SYS_BLACK_BRODCAST_FILE:Ljava/lang/String; = "/system/bpm/black_broadcast.xml"

.field private static final SYS_BLACK_GPS_FILE:Ljava/lang/String; = "/system/bpm/black_gps.xml"

.field private static final SYS_BRD_FILE:Ljava/lang/String; = "/system/bpm/brd.xml"

.field private static final SYS_CFG_FILE:Ljava/lang/String; = "/system/bpm/cfg.xml"

.field private static final SYS_PKG_FILE:Ljava/lang/String; = "/system/bpm/pkg.xml"

.field public static final SYS_STATUS_FILE:Ljava/lang/String; = "/system/bpm/bpm_sts.xml"

.field public static final TAG:Ljava/lang/String; = "OnePlusProcessManager"

.field private static final TRAFFIC_THRESHOLD:J = 0x19000L

.field private static final UPDATE_APPWIDGET:I = 0x69

.field private static final UPDATE_BAD:I = 0x68

.field private static final UPDATE_BPM:I = 0x65

.field private static final UPDATE_BRD:I = 0x66

.field private static final UPDATE_PKG:I = 0x67

.field private static final UPDATE_STS:I = 0x64

.field public static final VERSION:I = 0xe69999

.field static broadcastHistoryTime:J = 0x0L

.field static computeTrafficTime:J = 0x0L

.field static isFozenDelay:Z = false

.field static isSuppoerted:Z = false

.field private static isUsing:Z = false

.field private static lm:Lcom/android/server/LocationManagerService; = null

.field public static mActivityManager:Lcom/android/server/am/ActivityManagerService; = null

.field private static mAlarmManager:Landroid/app/AlarmManager; = null

.field private static mBPMStatus:Z = false

.field static final mCgroupFreezerPath:Ljava/lang/String; = "/sys/fs/cgroup/freezer/"

.field private static mDeviceIdleService:Landroid/os/IDeviceIdleController;

.field static mDoThawedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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

.field public static mScreenLock:Ljava/lang/Object;

.field private static mScreenOffCheckIntent:Landroid/app/PendingIntent;

.field static mScreenOffCount:I

.field private static mScreenOffForzenCheck:Landroid/content/Intent;

.field private static mScreenOffFozenCheckIntent:Landroid/app/PendingIntent;

.field private static mScreenOffIntent:Landroid/content/Intent;

.field static mScreen_ON:Z

.field static mScreen_ON_ING:Z

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

.field static mTrafficUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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

.field static mUnFrozenUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
.field private SUSPEND_FAIL_DEFAULT:I

.field private SUSPEND_FAIL_LONG:I

.field private SUSPEND_FAIL_NOTRY:I

.field private SUSPEND_OK:I

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

.field final mUidState:Landroid/util/SparseIntArray;

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
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 120
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 121
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 129
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    .line 131
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 134
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 142
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 214
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 216
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspentRecents:Ljava/util/Vector;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    .line 221
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    .line 224
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 228
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLockProcess:Ljava/lang/Object;

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    .line 232
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mProcess:Ljava/lang/Object;

    .line 238
    const-string v0, "com.oneplus.android.screenOffCheckProcessState"

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    .line 239
    const-string v0, "com.oneplus.android.assertCheck"

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->ASSERTCHECK:Ljava/lang/String;

    .line 240
    const-string v0, "com.oneplus.android.screenoffcheckforzen"

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_CHECKFORZEN:Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    .line 243
    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->screen_on_forzen_enable:Z

    .line 247
    new-array v0, v2, [I

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    .line 249
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 250
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    .line 251
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mMessageLock:Ljava/lang/Object;

    .line 257
    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    .line 259
    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 260
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCount:I

    .line 261
    const-wide/32 v0, 0x2bf20

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->screenOffCheckDelayTime:J

    .line 262
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->screenOffFozenDelayTime:J

    .line 263
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    .line 264
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    .line 265
    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->broadcastHistoryTime:J

    .line 266
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isFozenDelay:Z

    .line 267
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->mFozenCount:I

    .line 268
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->screenOffTime:J

    .line 270
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    .line 281
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_SKIP:I

    .line 282
    sput v3, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_SUCESS:I

    .line 283
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_GPS:I

    .line 284
    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_WAKELOCK:I

    .line 285
    const/4 v0, 0x4

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_FOREPACKAGE:I

    .line 286
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_SHOW:I

    .line 287
    const/4 v0, 0x6

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_OTHER:I

    .line 288
    const/4 v0, 0x7

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_FORCESTOP_AUDIO:I

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenUids:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/ArrayList;

    .line 298
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    .line 300
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 302
    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    .line 309
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 12
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 136
    iput-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 137
    iput-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 143
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    .line 144
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 145
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    .line 147
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    .line 148
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBroadcastList:Ljava/util/List;

    .line 149
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v6, v5, v10

    const-string v6, "com.android.server.action.NETWORK_STATS_UPDATED"

    aput-object v6, v5, v11

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v6, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mWhiteBroadcastList:Ljava/util/List;

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBadList:Ljava/util/List;

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mAppWidgetList:Ljava/util/List;

    .line 225
    iput-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    .line 226
    iput-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    .line 227
    iput-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    .line 246
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    .line 252
    iput-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    .line 253
    iput-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    .line 254
    iput-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    .line 272
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mImportUids:Ljava/util/HashSet;

    .line 273
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    .line 274
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    .line 275
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    .line 276
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    .line 277
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    .line 279
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    .line 280
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    .line 293
    iput v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    .line 299
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    .line 303
    iput-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    .line 304
    iput-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 310
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    .line 383
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/OnePlusProcessManager$1;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidObserver:Landroid/app/IUidObserver;

    .line 706
    iput v10, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:I

    .line 707
    iput v11, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:I

    .line 708
    iput v8, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:I

    .line 709
    iput v9, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:I

    .line 1009
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$2;

    invoke-direct {v5, p0}, Lcom/android/server/am/OnePlusProcessManager$2;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 1209
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$3;

    invoke-direct {v5, p0}, Lcom/android/server/am/OnePlusProcessManager$3;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1297
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$4;

    invoke-direct {v5, p0}, Lcom/android/server/am/OnePlusProcessManager$4;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 313
    iget-object v5, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oem.background.control"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 314
    const-string v5, "persist.sys.cgroup.using"

    invoke-static {v5, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    .line 315
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    if-nez v5, :cond_0

    .line 316
    sput-boolean v10, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 318
    :cond_0
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v5, :cond_1

    .line 319
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

    .line 381
    :goto_0
    return-void

    .line 322
    :cond_1
    const-string v5, "OnePlusProcessManager"

    const-string v6, "OnePlusProcessManager VERSION = v15112601"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v5, "sys.cgroup.version"

    const-string v6, "v15112601"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v5, "persist.sys.cgroup.debug"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 325
    const-string v5, "persist.sys.cgroup.debugdetail"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 326
    new-instance v1, Landroid/os/HandlerThread;

    const-string v5, "OneplusProcessThread"

    invoke-direct {v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, "mOneplusThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 328
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    .line 329
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    const/16 v6, 0x6f

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 330
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    const/16 v6, 0x70

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 333
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "SuspenPorcessThread"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 334
    .local v3, "mSuspendThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 336
    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "ResumeProcessThread"

    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 337
    .local v2, "mResumeThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 338
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    .line 339
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    .line 340
    sput-object p1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 342
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareBPMConfigFiles()V

    .line 343
    const-string v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 345
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 347
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 348
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffIntent:Landroid/content/Intent;

    .line 349
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_CHECKFORZEN:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffForzenCheck:Landroid/content/Intent;

    .line 350
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->ASSERTCHECK:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_CHECKFORZEN:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffIntent:Landroid/content/Intent;

    invoke-static {v5, v10, v6, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;

    .line 357
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffForzenCheck:Landroid/content/Intent;

    invoke-static {v5, v10, v6, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffFozenCheckIntent:Landroid/app/PendingIntent;

    .line 359
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 360
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    .line 361
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    const-string v6, "frozenApp"

    invoke-virtual {v5, v11, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    .line 364
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidObserver:Landroid/app/IUidObserver;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;)V

    .line 365
    const-string v5, "deviceidle"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 368
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 370
    .local v4, "whitelistFilter":Landroid/content/IntentFilter;
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->updatePowerSaveWhitelistLocked()V

    .line 372
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 373
    const-string v5, "location"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService;

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    .line 374
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    .line 376
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 378
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    .line 379
    new-instance v5, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 380
    const-string v5, "alarm"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 114
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusProcessManager;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startResumeUid(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->resumeRelateUid(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(IIZ)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 114
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V

    return-void
.end method

.method static synthetic access$1600(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(II)V

    return-void
.end method

.method static synthetic access$1700()Lcom/android/server/am/OnePlusProcessManager;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/OnePlusProcessManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->computeUidTraffic(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->removeTrafficWhiteList()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->tryAddScreenOffTrafficUids()V

    return-void
.end method

.method static synthetic access$2100()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/app/AlarmManager;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffFozenCheckIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->ASSERTCHECK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_CHECKFORZEN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/am/OnePlusProcessManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startComputeUidTraffic(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusProcessManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkSuspendUid(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusProcessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->suspendRelateUid(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusProcessManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startSuspendUids(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusProcessManager;I)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addSuspendDelayCount(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusProcessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusProcessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:I

    return v0
.end method

.method private add3rdAppProcessState(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 2167
    const/16 v1, 0x2710

    if-lt p1, v1, :cond_1

    .line 2168
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2170
    .local v0, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 2171
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2172
    .restart local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2174
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2175
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2176
    monitor-exit v2

    .line 2178
    .end local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    return-void

    .line 2176
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
    .line 1472
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_0

    .line 1474
    :try_start_0
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

    .line 1475
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p0}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    :goto_0
    return-void

    .line 1476
    :catch_0
    move-exception v0

    .line 1477
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusProcessManager"

    const-string v2, "Falied to add package to doze whitelist"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1480
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
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

    .line 784
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 785
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 786
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 795
    :goto_1
    return v1

    .line 789
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 790
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 795
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static final addPidToCgroupTasksWithJudge(Lcom/android/server/am/ProcessRecord;I)V
    .locals 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "childPid"    # I

    .prologue
    .line 2746
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v1, :cond_1

    .line 2772
    :cond_0
    :goto_0
    return-void

    .line 2749
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

    .line 2753
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_0

    .line 2754
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2755
    if-lez p1, :cond_2

    .line 2756
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v1, v2, p1}, Lcom/android/server/am/OnePlusProcessManager;->add3rdAppProcessState(II)V

    .line 2758
    :cond_2
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2759
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v3, "addPidToCgroupTasksWithJudge"

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    .line 2761
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2762
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x73

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2763
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2764
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2765
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2766
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2767
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

    .line 799
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 800
    .local v0, "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 801
    new-instance v0, Landroid/util/ArrayMap;

    .end local v0    # "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 802
    .restart local v0    # "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 804
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 805
    .local v1, "mCount":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    .line 806
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 812
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 813
    .local v2, "msg2":Landroid/os/Message;
    const/16 v4, 0x75

    iput v4, v2, Landroid/os/Message;->what:I

    .line 814
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 815
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    sget-wide v6, Lcom/android/server/am/OnePlusProcessManager;->broadcastHistoryTime:J

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 817
    .end local v2    # "msg2":Landroid/os/Message;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    .line 818
    const/4 v3, 0x0

    .line 820
    :cond_2
    return v3

    .line 809
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
    const/4 v3, 0x1

    .line 772
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 773
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long/2addr v2, v4

    return-wide v2

    .line 777
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 778
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addTrafficeWhiteList(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1272
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1274
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

    .line 1277
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->addDozeWhiteList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "OnePlusProcessManager"

    const-string v3, "Falied to add package to doze whitelist"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private adjustSuspendMessage(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;

    .prologue
    .line 2811
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v1, p1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2813
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v1, p1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2814
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2815
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeProcessByUID_out adjust message"

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

    .line 2816
    :cond_0
    sget-wide v0, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    .line 2818
    :cond_1
    return-void
.end method

.method private cancelNotificationsForUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1828
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/OnePlusProcessManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/OnePlusProcessManager$5;-><init>(Lcom/android/server/am/OnePlusProcessManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1835
    return-void
.end method

.method public static cancelNotificationsWithPkg(Ljava/lang/String;I)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 1838
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1839
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

    .line 1841
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    if-nez v1, :cond_1

    .line 1850
    :goto_0
    return-void

    .line 1844
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    invoke-interface {v1, p0, p1}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1846
    :catch_0
    move-exception v0

    .line 1847
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

    .line 1848
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
    .line 1035
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    .local v1, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1037
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    :cond_0
    return-object v1
.end method

.method private checkActiveAudioUids(I)Z
    .locals 7
    .param p1, "mUid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1701
    const/4 v1, 0x0

    .line 1702
    .local v1, "mTrackUids":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v1

    .line 1703
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1704
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

    .line 1706
    :cond_0
    if-eqz v1, :cond_3

    .line 1707
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 1708
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1707
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1711
    :cond_2
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1716
    .local v2, "uid":I
    if-nez v2, :cond_4

    .line 1727
    .end local v0    # "i":I
    .end local v2    # "uid":I
    :cond_3
    :goto_1
    return v3

    .line 1719
    .restart local v0    # "i":I
    .restart local v2    # "uid":I
    :cond_4
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 1720
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

    .line 1722
    :cond_5
    if-ne v2, p1, :cond_1

    .line 1723
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private checkActiveSensor(I)Z
    .locals 8
    .param p1, "mUid"    # I

    .prologue
    const/4 v4, 0x0

    .line 1944
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5}, Landroid/hardware/SensorManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    .line 1945
    .local v0, "activeSensor":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1946
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

    .line 1948
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1949
    .local v2, "mTrackUids":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1950
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_3

    .line 1951
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1950
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1954
    :cond_2
    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1955
    .local v3, "uid":I
    if-nez v3, :cond_4

    .line 1963
    .end local v1    # "i":I
    .end local v3    # "uid":I
    :cond_3
    :goto_1
    return v4

    .line 1958
    .restart local v1    # "i":I
    .restart local v3    # "uid":I
    :cond_4
    if-ne v3, p1, :cond_1

    .line 1959
    const/4 v4, 0x1

    goto :goto_1
.end method

.method static final checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V
    .locals 9
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2495
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

    .line 2497
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2498
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2499
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2500
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 2501
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p0, v1, v7}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 2502
    iput-object v8, v1, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 2503
    iput-object v8, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    goto :goto_0

    .line 2505
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 2508
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_1
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2509
    .local v0, "NL":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 2510
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 2511
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p0, :cond_2

    .line 2512
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p0, v1, v7}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 2513
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2509
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2516
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_3
    return-void
.end method

.method static final checkBroadcast(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
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

    .line 2901
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v1, :cond_1

    .line 2920
    :cond_0
    :goto_0
    return v0

    .line 2907
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_0

    .line 2910
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_2

    .line 2911
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkBroadcast(): app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-boolean v2, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2915
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_3

    .line 2916
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

    .line 2919
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2920
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static final checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 7
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2954
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v1, :cond_0

    move v6, v0

    .line 2983
    :goto_0
    return v6

    .line 2960
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v1, :cond_1

    move v6, v0

    .line 2961
    goto :goto_0

    .line 2963
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_3

    :cond_2
    move v6, v0

    .line 2964
    goto :goto_0

    .line 2966
    :cond_3
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_4

    move v6, v0

    .line 2967
    goto :goto_0

    .line 2969
    :cond_4
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-nez v1, :cond_5

    move v6, v0

    .line 2970
    goto :goto_0

    .line 2972
    :cond_5
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/OnePlusProcessManager;->checkPackageCanStart(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2973
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_6

    .line 2974
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

    .line 2978
    :cond_6
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p2, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 2980
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto/16 :goto_0

    :cond_7
    move v6, v0

    .line 2983
    goto/16 :goto_0
.end method

.method private checkBroadcastNeedSkip(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "broadcast"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 824
    const/16 v3, 0x2710

    if-ge p1, v3, :cond_1

    .line 834
    :cond_0
    :goto_0
    return v2

    .line 827
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 828
    .local v0, "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 830
    .local v1, "mCount":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 831
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkIsSuspenProcessRelateTop(Lcom/android/server/am/ProcessRecord;)Z
    .locals 8
    .param p1, "suspendProcess"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1616
    const/4 v0, 0x0

    .line 1617
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 1618
    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1619
    monitor-exit v7

    .line 1620
    if-nez v0, :cond_0

    move v4, v5

    .line 1647
    :goto_0
    return v4

    .line 1619
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1623
    :cond_0
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1624
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

    .line 1625
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_1

    .line 1626
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v7, :cond_1

    move v4, v6

    .line 1627
    goto :goto_0

    .line 1633
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1634
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

    .line 1635
    .local v1, "cc":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_3

    .line 1636
    iget-object v4, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v7, :cond_3

    move v4, v6

    .line 1637
    goto :goto_0

    .line 1642
    .end local v1    # "cc":Lcom/android/server/am/ContentProviderConnection;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_5

    .line 1643
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v7, :cond_5

    move v4, v6

    .line 1644
    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 1647
    goto/16 :goto_0
.end method

.method private checkPackageForceStop(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1498
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

    .line 1500
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

    .line 1501
    const/4 v0, 0x0

    .line 1503
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
    .line 1778
    const/4 v0, 0x0

    .line 1779
    .local v0, "ret":Z
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-eqz v1, :cond_0

    .line 1780
    const/4 v0, 0x1

    .line 1782
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 1783
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

    .line 1784
    :cond_1
    return v0
.end method

.method static final checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x1

    .line 2469
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v1, :cond_1

    .line 2475
    :cond_0
    :goto_0
    return v0

    .line 2472
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_0

    .line 2473
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

    .line 2482
    if-nez p1, :cond_1

    .line 2488
    :cond_0
    :goto_0
    return v0

    .line 2485
    :cond_1
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 2488
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method private checkProcessCanSuspend(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x1

    .line 1651
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 1652
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

    .line 1654
    :cond_0
    if-nez p1, :cond_2

    .line 1697
    :cond_1
    :goto_0
    return v0

    .line 1658
    :cond_2
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_3

    .line 1659
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 1660
    const-string v1, "OnePlusProcessManager"

    const-string v2, "---->#return true , FIRST_APPLICATION_UID"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1663
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_4

    .line 1665
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 1666
    const-string v1, "OnePlusProcessManager"

    const-string v2, "---->#return true,in system app"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1669
    :cond_4
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v1, :cond_5

    .line 1670
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 1671
    const-string v1, "OnePlusProcessManager"

    const-string v2, "---->#return true,persistent app"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1674
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1675
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 1676
    const-string v1, "OnePlusProcessManager"

    const-string v2, "---->#return true,home app"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1687
    :cond_6
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1688
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 1689
    const-string v1, "OnePlusProcessManager"

    const-string v2, "---->#return true,white app "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1692
    :cond_7
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->checkPackageForceStop(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1694
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

    .line 1697
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

    .line 2519
    if-nez p1, :cond_1

    .line 2564
    :cond_0
    :goto_0
    return v2

    .line 2523
    :cond_1
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_3

    .line 2524
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 2525
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

    .line 2527
    goto :goto_0

    .line 2531
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 2532
    goto :goto_0

    .line 2540
    :cond_4
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2541
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_5

    .line 2542
    const-string v2, "OnePlusProcessManager"

    const-string v4, "---->#return true,white app "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v3

    .line 2543
    goto :goto_0

    .line 2545
    :cond_6
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v5, "cn.ledongli.ldl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v2, v3

    .line 2546
    goto :goto_0

    .line 2549
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2550
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/OnePlusProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v2, v3

    .line 2551
    goto :goto_0

    .line 2554
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_9
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 2556
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2557
    .restart local v1    # "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/OnePlusProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_0

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_b
    move v2, v3

    .line 2561
    goto/16 :goto_0
.end method

.method static final checkProcessWhileBroadcastTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x0

    .line 2874
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v1, :cond_1

    .line 2893
    :cond_0
    :goto_0
    return v0

    .line 2877
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v1, :cond_0

    .line 2880
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_0

    .line 2883
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_2

    .line 2884
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessWhileBroadcastTimeout(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v3, "checkProcessWhileBroadcastTimeout "

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2887
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

    .line 2890
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static final checkProcessWhileTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x0

    .line 2848
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v1, :cond_1

    .line 2867
    :cond_0
    :goto_0
    return v0

    .line 2851
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v1, :cond_0

    .line 2854
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_0

    .line 2857
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_2

    .line 2858
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessWhileTimeout(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v3, "checkProcessWhileTimeout"

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2860
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

    .line 2863
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkSuspendUid(I)I
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 1884
    const/16 v2, 0x2710

    if-ge p1, v2, :cond_0

    .line 1885
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:I

    .line 1940
    :goto_0
    return v2

    .line 1887
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1888
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1889
    .local v1, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1890
    :cond_1
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:I

    monitor-exit v3

    goto :goto_0

    .line 1892
    .end local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1893
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1894
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFontActivityUids fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:I

    goto :goto_0

    .line 1897
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1898
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkWhiteUid fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:I

    goto :goto_0

    .line 1901
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v3, 0x10

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_5

    .line 1902
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkWhiteUid import top "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:I

    goto/16 :goto_0

    .line 1905
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1906
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFontWindowTouchUids fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:I

    goto/16 :goto_0

    .line 1910
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkActiveAudioUids(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1911
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkActiveAudioUids fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:I

    goto/16 :goto_0

    .line 1914
    :cond_7
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1915
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkTrafficUid fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:I

    goto/16 :goto_0

    .line 1918
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkActiveSensor(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1919
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkActiveSensor fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:I

    goto/16 :goto_0

    .line 1922
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mImportUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1923
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mImportUids fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:I

    goto/16 :goto_0

    .line 1926
    :cond_a
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1927
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGpsReceiverUids fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1929
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1930
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:I

    goto/16 :goto_0

    .line 1932
    :cond_b
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGpsReceiverUids for frozen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_c
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1935
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addLocationFailCount(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1936
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:I

    goto/16 :goto_0

    .line 1940
    :cond_d
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:I

    goto/16 :goto_0
.end method

.method private checkWhiteUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1762
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1763
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 1764
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1765
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 1766
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 1767
    const-string v1, "OnePlusProcessManager"

    const-string v3, "---->#return true,white app "

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_0
    const/4 v1, 0x1

    monitor-exit v2

    .line 1772
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 1764
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1772
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 1773
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private computeUidTraffic(I)I
    .locals 12
    .param p1, "uid"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1385
    const/4 v8, 0x1

    .line 1386
    .local v8, "checkAgain":Z
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1387
    .local v9, "count":Ljava/lang/Integer;
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1388
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkTrafficUid(I)Z

    move-result v8

    .line 1389
    if-eqz v8, :cond_2

    .line 1390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1391
    .local v2, "now":J
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OnePlusProcessManager$Traffic;-><init>(Lcom/android/server/am/OnePlusProcessManager;JJJ)V

    .line 1393
    .local v0, "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1396
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1397
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1398
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    :cond_0
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

    .line 1420
    .end local v0    # "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    .end local v2    # "now":J
    :goto_0
    if-nez v9, :cond_1

    .line 1421
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1423
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1403
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1405
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_3

    .line 1407
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-direct {v1, p1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    .line 1409
    :cond_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 1412
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1413
    .restart local v2    # "now":J
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OnePlusProcessManager$Traffic;-><init>(Lcom/android/server/am/OnePlusProcessManager;JJJ)V

    .line 1415
    .restart local v0    # "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1418
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fromFile"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3188
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3189
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3195
    :goto_0
    return-void

    .line 3192
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

    .line 3193
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3194
    .local v0, "sourceFile":Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private getActiveAudioUids()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1788
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1789
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1792
    :cond_0
    const-string v0, ""

    .line 1793
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    .line 1795
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1799
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 1800
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

    .line 1801
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1797
    :cond_2
    const-string v0, ":0"

    goto :goto_0
.end method

.method public static getBPMEnable_out()Z
    .locals 2

    .prologue
    .line 2134
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 2135
    const-string v0, "OnePlusProcessManager"

    const-string v1, "Fatal: mOnePlusProcessManager = null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    const/4 v0, 0x0

    .line 2138
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
    .line 1584
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 1585
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 1587
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 1450
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1451
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1468
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1454
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_2

    .line 1455
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 1456
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1459
    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v5, v3, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1460
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 1461
    aget-object v2, v3, v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1463
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    .line 1457
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1468
    .end local v1    # "i":I
    .end local v3    # "packages":[Ljava/lang/String;
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method private static getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 5
    .param p0, "pid"    # Ljava/lang/String;

    .prologue
    .line 2707
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2708
    const/4 v1, 0x0

    .line 2709
    .local v1, "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2710
    :try_start_1
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 2711
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2712
    if-eqz v1, :cond_0

    .line 2713
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 2714
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2716
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_0
    return-object v0

    .line 2711
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 2717
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 2716
    :cond_0
    const/4 v0, 0x0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method private getProcessForUid(I)Ljava/util/ArrayList;
    .locals 10
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
    .line 2721
    sget-object v8, Lcom/android/server/am/OnePlusProcessManager;->mLockProcess:Ljava/lang/Object;

    monitor-enter v8

    .line 2722
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2725
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v4

    .line 2726
    .local v4, "mUidPidChone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2727
    .local v2, "mPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2728
    :cond_0
    monitor-exit v8

    .line 2741
    :goto_0
    return-object v6

    .line 2730
    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2731
    .local v3, "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2732
    :try_start_1
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 2733
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2734
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 2735
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2736
    .local v5, "pid":Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 2734
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2733
    .end local v1    # "i":I
    .end local v5    # "pid":Ljava/lang/Integer;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7

    .line 2742
    .end local v2    # "mPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "mUidPidChone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v6    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 2738
    .restart local v1    # "i":I
    .restart local v2    # "mPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v4    # "mUidPidChone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v5    # "pid":Ljava/lang/Integer;
    .restart local v6    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 2739
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2741
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "pid":Ljava/lang/Integer;
    :cond_3
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public static getScreenState()Z
    .locals 2

    .prologue
    .line 2287
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2288
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    monitor-exit v1

    return v0

    .line 2289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getWakeLockedPids()[I
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_0

    .line 1822
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1824
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getWakeLockedPids()[I

    move-result-object v0

    return-object v0
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
    .line 1043
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    .local v2, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    .local v3, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1047
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1048
    .local v4, "pkg":Ljava/lang/Integer;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1049
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1052
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1053
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1054
    .restart local v4    # "pkg":Ljava/lang/Integer;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1055
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1058
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 1059
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1060
    .restart local v4    # "pkg":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "handlePackageChange"

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1058
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1062
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 1063
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1064
    .restart local v4    # "pkg":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-wide v6, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    .line 1062
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1066
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_5
    return-void
.end method

.method private handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 10
    .param p1, "oldList"    # Ljava/util/HashSet;
    .param p2, "newList"    # Ljava/util/HashSet;

    .prologue
    .line 1070
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    .local v2, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    .local v3, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1075
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1076
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1077
    .local v4, "mUid":Ljava/lang/Integer;
    invoke-virtual {p1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1078
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1081
    .end local v4    # "mUid":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1082
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1083
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1084
    .restart local v4    # "mUid":Ljava/lang/Integer;
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1085
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1088
    .end local v4    # "mUid":Ljava/lang/Integer;
    :cond_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1089
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1090
    .local v5, "pkg":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "handleUidChange"

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1088
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1092
    .end local v5    # "pkg":Ljava/lang/Integer;
    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 1093
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1094
    .restart local v5    # "pkg":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit16 v7, v7, -0x2710

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1095
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-wide v8, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v6, v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    .line 1092
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1097
    .end local v5    # "pkg":Ljava/lang/Integer;
    :cond_5
    return-void
.end method

.method private isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2420
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

    .line 2987
    if-eqz p2, :cond_0

    array-length v5, p2

    if-lez v5, :cond_0

    if-nez p1, :cond_1

    .line 2996
    :cond_0
    :goto_0
    return v4

    .line 2991
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

    .line 2992
    .local v3, "v":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2993
    const/4 v4, 0x1

    goto :goto_0

    .line 2991
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isSupportFrozenApp()Z
    .locals 1

    .prologue
    .line 445
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    return v0
.end method

.method public static isSuspendUid(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const-wide/16 v2, 0x8

    .line 2181
    const-string v0, "isSuspendUid"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2182
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2183
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2184
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 2188
    :goto_0
    return v0

    .line 2187
    :cond_1
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2188
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 2189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 3101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3102
    .local v1, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3103
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 3104
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

    .line 3147
    .end local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 3107
    .restart local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3108
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 3109
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 3111
    .local v7, "success":Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3112
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 3113
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v3, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3116
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 3117
    .local v9, "type":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    .line 3118
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3119
    .local v8, "tag":Ljava/lang/String;
    const-string v11, "p"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3120
    const/4 v11, 0x0

    const-string v12, "att"

    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3121
    .local v10, "value":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 3122
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3126
    .end local v8    # "tag":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    .line 3127
    const/4 v7, 0x1

    .line 3132
    if-eqz v6, :cond_8

    .line 3133
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3134
    const/4 v5, 0x0

    .line 3140
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "type":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :cond_4
    :goto_1
    sget-boolean v11, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v11, :cond_5

    .line 3141
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

    .line 3142
    :cond_5
    if-eqz v7, :cond_7

    move-object v1, v4

    .line 3143
    goto :goto_0

    .line 3136
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "type":I
    :catch_0
    move-exception v0

    .line 3137
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 3139
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 3128
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_1
    move-exception v0

    .line 3129
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

    .line 3132
    if-eqz v5, :cond_4

    .line 3133
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3134
    const/4 v5, 0x0

    goto :goto_1

    .line 3136
    :catch_2
    move-exception v0

    .line 3137
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3131
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 3132
    :goto_3
    if-eqz v5, :cond_6

    .line 3133
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3134
    const/4 v5, 0x0

    .line 3138
    :cond_6
    :goto_4
    throw v11

    .line 3136
    :catch_3
    move-exception v0

    .line 3137
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3145
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    sget-boolean v11, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v11, :cond_0

    .line 3146
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

    .line 3131
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 3128
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

    .line 3002
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

    .line 3003
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3004
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 3005
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

    .line 3052
    :cond_0
    :goto_0
    return-object v4

    .line 3008
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3009
    .local v4, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 3010
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 3012
    .local v7, "success":Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3013
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 3014
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v3, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3017
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 3018
    .local v9, "type":I
    const/4 v12, 0x2

    if-ne v9, v12, :cond_3

    .line 3019
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3020
    .local v8, "tag":Ljava/lang/String;
    const-string v12, "item"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3021
    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v3, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3024
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 3025
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 3028
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v4, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3032
    .end local v2    # "name":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x1

    if-ne v9, v12, :cond_2

    .line 3033
    const/4 v7, 0x1

    .line 3038
    if-eqz v6, :cond_4

    .line 3039
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v5, v6

    .line 3046
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

    .line 3047
    if-nez v7, :cond_0

    .line 3051
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

    .line 3052
    goto/16 :goto_0

    .line 3041
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "type":I
    :catch_0
    move-exception v0

    .line 3042
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 3044
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 3034
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_1
    move-exception v0

    .line 3035
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

    .line 3038
    if-eqz v5, :cond_5

    .line 3039
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 3041
    :catch_2
    move-exception v0

    .line 3042
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3037
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 3038
    :goto_3
    if-eqz v5, :cond_6

    .line 3039
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3043
    :cond_6
    :goto_4
    throw v11

    .line 3041
    :catch_3
    move-exception v0

    .line 3042
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3037
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 3034
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
    .line 3316
    const-string v0, "OnePlusProcessManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    return-void
.end method

.method private parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "uids"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1805
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 1806
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

    .line 1807
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1816
    :cond_1
    :goto_0
    return-object v0

    .line 1811
    :cond_2
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1815
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1816
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
    .line 3211
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

    .line 3212
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

    .line 3213
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

    .line 3215
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static removeDozeWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1485
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_0

    .line 1487
    :try_start_0
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

    .line 1488
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p0}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    :goto_0
    return-void

    .line 1489
    :catch_0
    move-exception v0

    .line 1490
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusProcessManager"

    const-string v2, "Falied to add package to doze whitelist"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1493
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "OnePlusProcessManager"

    const-string v2, "Cannot get DeviceIdleController"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeTrafficWhiteList()V
    .locals 3

    .prologue
    .line 1263
    const-string v1, ""

    .line 1264
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1265
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "packageName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1266
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->removeDozeWhiteList(Ljava/lang/String;)V

    .line 1264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1268
    :cond_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1269
    return-void
.end method

.method private resumeAdjTargetFromAdjSource(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2300
    if-nez p1, :cond_1

    .line 2332
    :cond_0
    :goto_0
    return-void

    .line 2303
    :cond_1
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 2306
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v5, v5, Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    .line 2307
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    .line 2308
    .local v2, "name":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 2311
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2312
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2316
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2321
    :try_start_0
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2322
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2323
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 2324
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

    .line 2326
    :cond_2
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v6, "resume adjTarget"

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2327
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 2328
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

    .line 2329
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static resumeAllProcess(Ljava/lang/String;)V
    .locals 1
    .param p0, "why"    # Ljava/lang/String;

    .prologue
    .line 2264
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 2276
    :cond_0
    :goto_0
    return-void

    .line 2267
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v0, :cond_0

    .line 2270
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 2273
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 2274
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcessLock(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final resumeProcessByUID_out(ILjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;

    .prologue
    .line 2778
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 2785
    :cond_0
    :goto_0
    return-void

    .line 2781
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v0, :cond_0

    .line 2784
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
    .line 2788
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 2808
    :cond_0
    :goto_0
    return-void

    .line 2791
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v0, :cond_0

    .line 2794
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 2797
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 2803
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2804
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto :goto_0

    .line 2806
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->adjustSuspendMessage(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static final resumeProcessByUID_out_Delay(ILjava/lang/String;I)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;
    .param p2, "suspendDelayTime"    # I

    .prologue
    .line 2822
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 2842
    :cond_0
    :goto_0
    return-void

    .line 2825
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v0, :cond_0

    .line 2828
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 2831
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 2837
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2838
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;I)Z

    goto :goto_0

    .line 2840
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->adjustSuspendMessage(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private resumeRelateProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2335
    if-nez p1, :cond_1

    .line 2385
    :cond_0
    :goto_0
    return-void

    .line 2338
    :cond_1
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_0

    .line 2341
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2342
    const/4 v2, 0x0

    .line 2343
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2344
    const/4 v2, 0x0

    .line 2346
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2349
    :goto_2
    if-eqz v2, :cond_2

    .line 2352
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    .line 2354
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, v5, :cond_2

    .line 2355
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "resumeRelateProcess connection"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto :goto_1

    .line 2360
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 2361
    const/4 v1, 0x0

    .line 2362
    .local v1, "cc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2363
    const/4 v1, 0x0

    .line 2365
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2368
    :goto_4
    if-eqz v1, :cond_4

    .line 2371
    iget-object v4, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_4

    .line 2372
    iget-object v4, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, v5, :cond_4

    .line 2373
    iget-object v4, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "resumeRelateProcess conProviders"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto :goto_3

    .line 2380
    .end local v1    # "cc":Lcom/android/server/am/ContentProviderConnection;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_5
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 2381
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_0

    .line 2382
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "resumeRelateProcess adjSource"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2366
    .restart local v1    # "cc":Lcom/android/server/am/ContentProviderConnection;
    .restart local v3    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    goto :goto_4

    .line 2347
    .end local v1    # "cc":Lcom/android/server/am/ContentProviderConnection;
    .restart local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    :catch_1
    move-exception v4

    goto/16 :goto_2
.end method

.method private resumeRelateUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 884
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mProcess:Ljava/lang/Object;

    monitor-enter v3

    .line 885
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v2, p1}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 886
    .local v1, "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 887
    :cond_0
    monitor-exit v3

    .line 893
    :goto_0
    return-void

    .line 889
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 890
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-direct {v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->resumeRelateProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 892
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

    .line 3151
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

    .line 3152
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3153
    .local v1, "endLine":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3155
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3157
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 3158
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3159
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3160
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3161
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3162
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3164
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3165
    const/4 v7, 0x0

    const-string v8, "att"

    if-eqz p1, :cond_2

    const-string v6, "true"

    :goto_0
    invoke-interface {v2, v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3166
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3167
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3169
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3170
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3171
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3178
    if-eqz v4, :cond_0

    .line 3179
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    move-object v3, v4

    .line 3183
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    return v5

    .line 3165
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

    .line 3181
    :catch_0
    move-exception v0

    .line 3182
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3173
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 3174
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

    .line 3175
    const/4 v5, 0x0

    .line 3178
    if-eqz v3, :cond_1

    .line 3179
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 3181
    :catch_2
    move-exception v0

    .line 3182
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3177
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 3178
    :goto_4
    if-eqz v3, :cond_3

    .line 3179
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3183
    :cond_3
    :goto_5
    throw v5

    .line 3181
    :catch_3
    move-exception v0

    .line 3182
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 3177
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 3173
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3
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

    .line 3056
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

    .line 3057
    if-nez p1, :cond_0

    move v7, v8

    .line 3096
    :goto_0
    return v7

    .line 3061
    :cond_0
    const-string v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3062
    .local v1, "endLine":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3064
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3066
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 3067
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3068
    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3069
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3070
    const/4 v7, 0x0

    const-string v10, "cfg"

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3071
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3073
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

    .line 3074
    .local v4, "ss":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    const-string v10, "item"

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3075
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v10, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3077
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3078
    const/4 v7, 0x0

    const-string v10, "item"

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3079
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 3086
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "ss":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 3087
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

    .line 3091
    if-eqz v5, :cond_1

    .line 3092
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_3
    move v7, v8

    .line 3096
    goto/16 :goto_0

    .line 3082
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

    .line 3083
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3084
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3091
    if-eqz v6, :cond_3

    .line 3092
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_4
    move v7, v9

    .line 3096
    goto/16 :goto_0

    .line 3094
    :catch_1
    move-exception v0

    .line 3095
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3094
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 3095
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3090
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 3091
    :goto_5
    if-eqz v5, :cond_4

    .line 3092
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3096
    :cond_4
    :goto_6
    throw v7

    .line 3094
    :catch_3
    move-exception v0

    .line 3095
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 3090
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 3086
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private sendResumeMessage(IJLjava/lang/String;I)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "delay"    # J
    .param p4, "why"    # Ljava/lang/String;
    .param p5, "suspendTime"    # I

    .prologue
    .line 1607
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1608
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, -0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1609
    iput p5, v0, Landroid/os/Message;->arg1:I

    .line 1610
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1611
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1612
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1613
    return-void
.end method

.method private sendResumeUid(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;

    .prologue
    .line 2194
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

    .line 2198
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_1

    .line 2224
    :cond_0
    :goto_0
    return v0

    .line 2204
    :cond_1
    const/16 v1, 0x2710

    if-lt p1, v1, :cond_0

    .line 2207
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2208
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResumeUid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " why = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2210
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mMessageLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v1, p1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2212
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    add-int/lit16 v1, p1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2213
    monitor-exit v7

    move v0, v6

    goto :goto_0

    .line 2215
    :cond_3
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 2216
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 2217
    const-string v0, "OnePlusProcessManager"

    const-string v1, "setBlockUid end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :cond_4
    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeMessage(IJLjava/lang/String;I)V

    .line 2219
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2221
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

    move v0, v6

    .line 2222
    goto/16 :goto_0

    .line 2219
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static sendSignal(II)V
    .locals 0
    .param p0, "pid"    # I
    .param p1, "sigNo"    # I

    .prologue
    .line 691
    invoke-static {p0, p1}, Landroid/os/Process;->sendSignal(II)V

    .line 692
    return-void
.end method

.method private sendSuspendUid(IJ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .prologue
    .line 1591
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1592
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1593
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSuspendUid no Suspend Uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_0
    :goto_0
    return-void

    .line 1598
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    add-int/lit16 v2, p1, -0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1599
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1600
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, -0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1601
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1602
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setCGroupStateLocked(IZ)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .prologue
    .line 449
    const/16 v12, 0x2710

    move/from16 v0, p1

    if-lt v0, v12, :cond_2

    .line 450
    const/4 v1, 0x0

    .line 452
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

    .line 453
    .local v8, "mCgroupFreezerstate":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 455
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 456
    .local v9, "pf":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 457
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 459
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 460
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 461
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
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 521
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13

    .line 522
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 523
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 525
    :cond_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    if-eqz v1, :cond_2

    .line 528
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 529
    const/4 v1, 0x0

    .line 537
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "f":Ljava/io/File;
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .end local v9    # "pf":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 525
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

    .line 531
    :catch_0
    move-exception v3

    .line 532
    .local v3, "e":Ljava/io/IOException;
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

    .line 533
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 465
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "pf":Ljava/io/File;
    :cond_3
    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    .line 466
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .local v2, "cgroupout":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_c

    .line 467
    const/4 v7, 0x0

    .line 468
    .local v7, "index":I
    :try_start_5
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 469
    :try_start_6
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 470
    if-gez v7, :cond_4

    .line 471
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    const/4 v12, 0x1

    move/from16 v0, p1

    invoke-static {v0, v12}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 474
    :cond_4
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 475
    if-gtz v7, :cond_7

    .line 477
    :try_start_7
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

    .line 478
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 479
    :try_start_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-nez v12, :cond_5

    .line 480
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 482
    :cond_5
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 483
    :try_start_9
    const-string v6, "FROZEN"

    .line 484
    .local v6, "freeze":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 485
    .local v10, "statebuffer":[B
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 486
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 487
    :try_start_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 488
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 490
    :cond_6
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 521
    .end local v6    # "freeze":Ljava/lang/String;
    .end local v10    # "statebuffer":[B
    :cond_7
    :goto_1
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13

    .line 522
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 523
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 525
    :cond_8
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 527
    if-eqz v2, :cond_10

    .line 528
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 529
    const/4 v1, 0x0

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 474
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
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 517
    :catch_1
    move-exception v4

    move-object v1, v2

    .line 518
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "index":I
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .local v4, "ex":Ljava/io/IOException;
    :goto_2
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

    .line 519
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .line 521
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13

    .line 522
    :try_start_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 523
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 525
    :cond_9
    monitor-exit v13
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 527
    if-eqz v1, :cond_2

    .line 528
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    .line 529
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 482
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "index":I
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    :catchall_2
    move-exception v12

    :try_start_12
    monitor-exit v13
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v12
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 521
    :catchall_3
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

    .line 522
    :try_start_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 523
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 525
    :cond_a
    monitor-exit v13
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 527
    if-eqz v1, :cond_b

    .line 528
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4

    .line 529
    const/4 v1, 0x0

    .line 534
    :cond_b
    :goto_4
    throw v12

    .line 490
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v6    # "freeze":Ljava/lang/String;
    .restart local v7    # "index":I
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v10    # "statebuffer":[B
    :catchall_4
    move-exception v12

    :try_start_16
    monitor-exit v13
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    throw v12

    .line 493
    .end local v6    # "freeze":Ljava/lang/String;
    .end local v7    # "index":I
    .end local v10    # "statebuffer":[B
    :cond_c
    const/4 v7, 0x0

    .line 494
    .restart local v7    # "index":I
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 495
    :try_start_18
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 496
    if-ltz v7, :cond_d

    .line 497
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 498
    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-static {v0, v12}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 500
    :cond_d
    monitor-exit v13
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 502
    :try_start_19
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

    .line 503
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 504
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-nez v12, :cond_e

    .line 505
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 507
    :cond_e
    monitor-exit v13
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 508
    :try_start_1b
    const-string v11, "THAWED"

    .line 509
    .local v11, "thawed":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 510
    .restart local v10    # "statebuffer":[B
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 511
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 512
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 513
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 515
    :cond_f
    monitor-exit v13

    goto/16 :goto_1

    :catchall_5
    move-exception v12

    monitor-exit v13
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    :try_start_1d
    throw v12
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 500
    .end local v10    # "statebuffer":[B
    .end local v11    # "thawed":Ljava/lang/String;
    :catchall_6
    move-exception v12

    :try_start_1e
    monitor-exit v13
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    :try_start_1f
    throw v12
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 507
    :catchall_7
    move-exception v12

    :try_start_20
    monitor-exit v13
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    :try_start_21
    throw v12
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    .line 525
    :catchall_8
    move-exception v12

    :try_start_22
    monitor-exit v13
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    throw v12

    .line 531
    :catch_2
    move-exception v3

    .line 532
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

    .line 533
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 525
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "index":I
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v4    # "ex":Ljava/io/IOException;
    :catchall_9
    move-exception v12

    :try_start_23
    monitor-exit v13
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    throw v12

    .line 531
    :catch_3
    move-exception v3

    .line 532
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

    .line 533
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 525
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_a
    move-exception v12

    :try_start_24
    monitor-exit v13
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    throw v12

    .line 531
    :catch_4
    move-exception v3

    .line 532
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

    .line 533
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 521
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_b
    move-exception v12

    goto/16 :goto_3

    .line 517
    :catch_5
    move-exception v4

    goto/16 :goto_2

    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "index":I
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    :cond_10
    move-object v1, v2

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public static setScreenState(Z)Z
    .locals 2
    .param p0, "screenState"    # Z

    .prologue
    .line 2293
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2294
    :try_start_0
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    .line 2295
    monitor-exit v1

    .line 2296
    const/4 v0, 0x1

    return v0

    .line 2295
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

    .line 2678
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBroadcastList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBroadcastList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2703
    :cond_0
    :goto_0
    return v1

    .line 2681
    :cond_1
    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v4, v5, :cond_0

    .line 2684
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2685
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBroadcastList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2686
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2689
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    const/4 v5, 0x4

    if-gt v4, v5, :cond_2

    .line 2690
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2691
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

    .line 2694
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2695
    .local v2, "now":J
    iget-wide v4, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 2696
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2697
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

    .line 2701
    :cond_3
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method static final skipBroadcast(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 3
    .param p0, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "ordered"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2928
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v1, :cond_1

    .line 2946
    :cond_0
    :goto_0
    return v0

    .line 2934
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_0

    .line 2937
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2938
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2

    .line 2939
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

    .line 2944
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "ordered"    # Z

    .prologue
    const/16 v6, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2581
    if-nez p1, :cond_1

    .line 2673
    :cond_0
    :goto_0
    return v2

    .line 2584
    :cond_1
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-lt v4, v6, :cond_0

    .line 2587
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 2590
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-nez v4, :cond_0

    .line 2593
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2594
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 2595
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Do not skip  FontActivityUids broadcast: r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_2
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipBroadcast mFontActivityUids action ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto :goto_0

    .line 2600
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2601
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 2602
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Do not skip  mFontWindowTouchUids broadcast: r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    :cond_4
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipBroadcast mFontWindowTouchUids action ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2607
    :cond_5
    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-nez v4, :cond_8

    .line 2608
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2609
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2610
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 2611
    const-string v2, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip black broadcast: r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v2, v3

    .line 2612
    goto/16 :goto_0

    .line 2616
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_8
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_9

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-nez v4, :cond_9

    .line 2618
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipBroadcast callerApp is not system  action ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2622
    :cond_9
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_a

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ge v4, v6, :cond_a

    .line 2623
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipBroadcast callerApp is system  action ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2627
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2628
    .restart local v0    # "action":Ljava/lang/String;
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2629
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_c

    .line 2630
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Do not skip mBrdList broadcast: r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    :cond_c
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipBroadcast mBrdList action ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2635
    .end local v0    # "action":Ljava/lang/String;
    :cond_d
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    const-string v4, "android.intent.action.SCREEN_OFF"

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "android.intent.action.SCREEN_ON"

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2638
    :cond_e
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_f

    .line 2639
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Do not skip  screen_on and screen_off broadcast: r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :cond_f
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipBroadcast ACTION_SCREEN action ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2644
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2645
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "skipBroadcast checkProcessRecord"

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2648
    :cond_11
    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v5, :cond_14

    .line 2649
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_12

    .line 2650
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not skip broadcast because uid is the same  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    :cond_12
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->checkBroadcastNeedSkip(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v2, v3

    .line 2652
    goto/16 :goto_0

    .line 2654
    :cond_13
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipBroadcast callingUid = uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2655
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->addResumeBroadcastUids(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2660
    :cond_14
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2662
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "skipBroadcast ACTION_BOOT_COMPLETED "

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2665
    :cond_15
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mWhiteBroadcastList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2666
    .restart local v0    # "action":Ljava/lang/String;
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2667
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_17

    .line 2668
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Do not skip mWhiteBroadcastList : r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :cond_17
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipBroadcast mWhiteBroadcastList action ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    goto/16 :goto_0

    .end local v0    # "action":Ljava/lang/String;
    :cond_18
    move v2, v3

    .line 2673
    goto/16 :goto_0
.end method

.method private startComputeUidTraffic(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1369
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1370
    .local v0, "msg2":Landroid/os/Message;
    const/16 v1, 0x74

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1371
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1372
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1373
    return-void
.end method

.method private startResumeUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 2003
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)V

    .line 2004
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IPowerManager;->updateBlockedUids(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2011
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-static {p1, v4}, Lcom/android/server/LocationManagerService;->updateUidBlock(IZ)V

    .line 2013
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

    .line 2014
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1, p1, v4}, Lcom/android/server/LocationManagerService;->updateReceiverBlockRequest(IZ)V

    .line 2016
    :cond_2
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 2017
    const-string v1, "OnePlusProcessManager"

    const-string v2, "startResumeUid ---------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_3
    return-void

    .line 2007
    :catch_0
    move-exception v0

    .line 2008
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
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x1

    .line 1968
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)V

    .line 1971
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 1972
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->skipCurrentActionForUid(I)V

    .line 1973
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1974
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/os/IPowerManager;->updateBlockedUids(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1980
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1981
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-static {p1, v4}, Lcom/android/server/LocationManagerService;->updateUidBlock(IZ)V

    .line 1983
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

    .line 1984
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1, p1, v4}, Lcom/android/server/LocationManagerService;->updateReceiverBlockRequest(IZ)V

    .line 1986
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1987
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1988
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    .line 1998
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->cancelNotificationsForUid(I)V

    .line 1999
    return v4

    .line 1973
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1977
    :catch_0
    move-exception v0

    .line 1978
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

.method private suspendRelateUid(I)Ljava/util/ArrayList;
    .locals 15
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
    .line 2022
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 2023
    .local v9, "mSuspendProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2025
    .local v11, "mUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_2

    .line 2026
    :cond_0
    const/4 v11, 0x0

    .line 2082
    .end local v11    # "mUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    return-object v11

    .line 2028
    .restart local v11    # "mUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_1

    .line 2029
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 2030
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_4

    .line 2028
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2033
    :cond_4
    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-lez v13, :cond_a

    .line 2034
    const/4 v12, 0x0

    .line 2035
    .local v12, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2036
    const/4 v12, 0x0

    .line 2037
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "sr":Lcom/android/server/am/ServiceRecord;
    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 2038
    .restart local v12    # "sr":Lcom/android/server/am/ServiceRecord;
    if-eqz v12, :cond_5

    iget-object v13, v12, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    if-eqz v13, :cond_5

    .line 2039
    const/4 v3, 0x0

    .local v3, "conni":I
    :goto_2
    iget-object v13, v12, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v3, v13, :cond_5

    .line 2040
    iget-object v13, v12, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v13, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2041
    .local v2, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_9

    .line 2042
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 2043
    .local v4, "crd":Lcom/android/server/am/ConnectionRecord;
    if-eqz v4, :cond_6

    iget-object v13, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v13, :cond_6

    iget v13, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v14, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v14, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v14, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v13, v14, :cond_6

    .line 2045
    iget-object v13, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v10, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2046
    .local v10, "mUid":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2041
    .end local v10    # "mUid":I
    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2049
    .restart local v10    # "mUid":I
    :cond_7
    invoke-direct {p0, v10}, Lcom/android/server/am/OnePlusProcessManager;->checkSuspendUid(I)I

    move-result v13

    iget v14, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:I

    if-ne v13, v14, :cond_8

    .line 2050
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2051
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2053
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2039
    .end local v4    # "crd":Lcom/android/server/am/ConnectionRecord;
    .end local v10    # "mUid":I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2062
    .end local v2    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "conni":I
    .end local v5    # "i":I
    .end local v7    # "it":Ljava/util/Iterator;
    .end local v12    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_a
    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    if-eqz v13, :cond_3

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 2063
    const/4 v3, 0x0

    .restart local v3    # "conni":I
    :goto_5
    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v3, v13, :cond_3

    .line 2064
    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v13, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 2065
    .local v1, "c":Lcom/android/server/am/ContentProviderRecord;
    iget-object v13, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ContentProviderConnection;

    .line 2066
    .local v12, "sr":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v12, :cond_b

    iget v13, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v14, v12, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v14, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v13, v14, :cond_b

    .line 2067
    iget-object v13, v12, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v10, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2068
    .restart local v10    # "mUid":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v13

    if-nez v13, :cond_b

    .line 2071
    invoke-direct {p0, v10}, Lcom/android/server/am/OnePlusProcessManager;->checkSuspendUid(I)I

    move-result v13

    iget v14, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:I

    if-ne v13, v14, :cond_c

    .line 2072
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2073
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2075
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2063
    .end local v10    # "mUid":I
    .end local v12    # "sr":Lcom/android/server/am/ContentProviderConnection;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method private tryAddScreenOffTrafficUids()V
    .locals 3

    .prologue
    .line 1377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1378
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1379
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->addTrafficeWhiteList(I)V

    .line 1377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1381
    .end local v1    # "uid":I
    :cond_0
    return-void
.end method

.method private updateBPMEnableState(Z)V
    .locals 6
    .param p1, "flag"    # Z

    .prologue
    .line 2105
    if-nez p1, :cond_1

    .line 2106
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2107
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2110
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2111
    .local v1, "uid":I
    const-string v2, "updateBPMEnableState"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    .line 2109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2113
    .end local v1    # "uid":I
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2115
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->computeThreeAppState()V

    .line 2116
    const/4 p1, 0x1

    if-eqz p1, :cond_3

    .line 2117
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2119
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2120
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2121
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2122
    .local v1, "uid":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2113
    .end local v1    # "uid":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2124
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2126
    .end local v0    # "i":I
    :cond_3
    if-eqz p1, :cond_4

    .line 2127
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string v3, "doze_mode_policy"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2131
    :goto_2
    return-void

    .line 2124
    .restart local v0    # "i":I
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 2129
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
    .line 2391
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2392
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

    .line 2393
    :cond_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2395
    if-eqz p1, :cond_2

    .line 2396
    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2397
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2398
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_1

    .line 2399
    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessCanSuspend(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2400
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2401
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x73

    iput v3, v1, Landroid/os/Message;->what:I

    .line 2402
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 2403
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 2404
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2396
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2409
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

    .line 2410
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2411
    .restart local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_3

    .line 2412
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "updateProcessStateForChanged"

    invoke-direct {p0, v3, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z

    .line 2409
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2416
    .end local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_4
    monitor-exit v4

    .line 2417
    return-void

    .line 2416
    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
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
    .line 1117
    .local p0, "mNewImportUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 1121
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mImportUids:Ljava/util/HashSet;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/OnePlusProcessManager;->handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1123
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

    .line 1124
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mImportUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1125
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
    .line 1150
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusProcessManager;->updateLocationReceiverUidsChange(IZZZ)V

    .line 1151
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

    .line 1155
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 1159
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 1160
    if-eqz p2, :cond_5

    .line 1161
    if-eqz p1, :cond_3

    .line 1163
    if-eqz p3, :cond_2

    .line 1164
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1166
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1169
    :cond_3
    if-eqz p3, :cond_4

    .line 1170
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1174
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v2, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    div-long/2addr v2, v4

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    goto :goto_0

    .line 1178
    :cond_4
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1182
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v2, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    div-long/2addr v2, v4

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V

    goto :goto_0

    .line 1188
    :cond_5
    if-eqz p1, :cond_6

    .line 1190
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1192
    :cond_6
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static updateScreenState(Z)V
    .locals 3
    .param p0, "screenState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2228
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 2261
    :cond_0
    :goto_0
    return-void

    .line 2231
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_2

    .line 2232
    if-eqz p0, :cond_0

    .line 2233
    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 2234
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    goto :goto_0

    .line 2238
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 2239
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_3

    .line 2240
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    const-string v2, "updateScreenState"

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcessLock(Ljava/lang/String;)V

    .line 2242
    :cond_3
    if-eqz p0, :cond_4

    .line 2243
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCount:I

    .line 2244
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 2258
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    .line 2260
    :cond_4
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
    .line 1130
    .local p0, "fontWindowTouchUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 1134
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/OnePlusProcessManager;->handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1136
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

    .line 1137
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1138
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
    .line 593
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V

    .line 594
    return-void
.end method

.method private static writePidToTasksFile(IIZ)V
    .locals 23
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "retry"    # Z

    .prologue
    .line 597
    const/16 v19, 0x2710

    move/from16 v0, p0

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    const/4 v12, -0x1

    .line 601
    .local v12, "pidState":I
    const/4 v3, 0x0

    .line 602
    .local v3, "cgroupout":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 604
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

    .line 605
    .local v10, "mCgroupFreezerstate":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 606
    .end local v7    # "f":Ljava/io/File;
    .local v8, "f":Ljava/io/File;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_3

    .line 607
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 608
    .local v11, "pf":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_2

    .line 609
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 611
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 612
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_3

    .line 613
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

    .line 667
    if-eqz v3, :cond_0

    .line 668
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 669
    const/4 v3, 0x0

    goto :goto_0

    .line 671
    :catch_0
    move-exception v5

    .line 672
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

    .line 617
    .end local v5    # "ec":Ljava/io/IOException;
    .end local v11    # "pf":Ljava/io/File;
    :cond_3
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 618
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .local v4, "cgroupout":Ljava/io/FileOutputStream;
    :try_start_4
    sget-object v20, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v20
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 619
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

    .line 621
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 623
    :cond_4
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 624
    :try_start_6
    const-string v18, "THAWED"

    .line 625
    .local v18, "thawed":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    .line 626
    .local v17, "statebuffer":[B
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 627
    sget-object v20, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v20
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 628
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

    .line 630
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 632
    :cond_5
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 634
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

    .line 635
    .local v9, "mCgroupFreezerPathbytasks":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 636
    .end local v8    # "f":Ljava/io/File;
    .restart local v7    # "f":Ljava/io/File;
    :try_start_9
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_a

    .line 637
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_6

    .line 638
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 639
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 642
    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_a

    .line 643
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

    .line 667
    if-eqz v4, :cond_9

    .line 668
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 669
    const/4 v3, 0x0

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 623
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

    .line 657
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8    # "f":Ljava/io/File;
    .restart local v7    # "f":Ljava/io/File;
    move-object v3, v4

    .line 658
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

    .line 662
    if-eqz p2, :cond_7

    .line 663
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v0, v19

    move/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFileDelayed(II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 667
    :cond_7
    if-eqz v3, :cond_0

    .line 668
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 669
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 632
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

    .line 666
    .end local v17    # "statebuffer":[B
    .end local v18    # "thawed":Ljava/lang/String;
    :catchall_2
    move-exception v19

    move-object v7, v8

    .end local v8    # "f":Ljava/io/File;
    .restart local v7    # "f":Ljava/io/File;
    move-object v3, v4

    .line 667
    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v3, :cond_8

    .line 668
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 669
    const/4 v3, 0x0

    .line 674
    :cond_8
    :goto_3
    throw v19

    .line 671
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v9    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .restart local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v17    # "statebuffer":[B
    .restart local v18    # "thawed":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 672
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

    .line 647
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    :cond_a
    :try_start_12
    const-string v14, ""

    .line 648
    .local v14, "pidsStr":Ljava/lang/String;
    const-string v15, ""

    .line 649
    .local v15, "pidsStr_debug":Ljava/lang/String;
    const-string v16, ""

    .line 650
    .local v16, "processName":Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 651
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

    .line 652
    .local v13, "pidbuffer":[B
    invoke-virtual {v3, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 654
    sget-boolean v19, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v19, :cond_b

    .line 655
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

    .line 667
    :cond_b
    if-eqz v3, :cond_0

    .line 668
    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3

    .line 669
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 671
    :catch_3
    move-exception v5

    .line 672
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

    .line 671
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

    .line 672
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

    .line 671
    .end local v5    # "ec":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 672
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

    .line 666
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

    .line 657
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
.method public checkBroadcast(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 2570
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2571
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2572
    const/4 v2, 0x1

    .line 2575
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPackage(Landroid/content/pm/ApplicationInfo;)Z
    .locals 6
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1733
    if-nez p1, :cond_1

    .line 1734
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

    .line 1758
    :cond_0
    :goto_0
    return v2

    .line 1744
    :cond_1
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1745
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v3, :cond_0

    .line 1746
    const-string v3, "OnePlusProcessManager"

    const-string v4, "---->#return true,white app "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1749
    :cond_2
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_4

    .line 1750
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

    .line 1751
    .local v1, "pkg":Ljava/lang/String;
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 1752
    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 1758
    goto :goto_0
.end method

.method public checkPackageCanStart(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v0, 0x0

    .line 2424
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_2

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-nez v1, :cond_2

    .line 2426
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2427
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPackageCanStart FIRST_APPLICATION_UID + applicationInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " BroadcastRecord= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    :cond_1
    :goto_0
    return v0

    .line 2433
    :cond_2
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_3

    .line 2434
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2435
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPackageCanStartSHELL_UID + applicationInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " BroadcastRecord= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2442
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusProcessManager;->checkBroadcast(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2443
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2444
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPackageCanStartcheckBroadcast+ applicationInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " BroadcastRecord= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2450
    :cond_4
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2455
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkPackage(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2456
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2457
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPackageCanStartcheckPackage + applicationInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " BroadcastRecord= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2462
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method checkTrafficUid(I)Z
    .locals 14
    .param p1, "uid"    # I

    .prologue
    .line 1427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1428
    .local v0, "now":J
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    .line 1429
    .local v2, "obj":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    if-nez v2, :cond_0

    .line 1430
    const/4 v3, 0x0

    .line 1446
    :goto_0
    return v3

    .line 1432
    :cond_0
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v8

    .line 1433
    .local v8, "txBytes":J
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    .line 1434
    .local v4, "rxBytes":J
    const-wide/16 v6, 0x1

    .line 1435
    .local v6, "timeDuring":J
    sget-wide v10, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_1

    .line 1436
    iget-wide v10, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->startTime:J

    sub-long v10, v0, v10

    sget-wide v12, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    div-long v6, v10, v12

    .line 1438
    :cond_1
    const-wide/16 v10, 0x1

    cmp-long v3, v6, v10

    if-gtz v3, :cond_2

    .line 1439
    const-wide/16 v6, 0x1

    .line 1441
    :cond_2
    const-wide/32 v10, 0x19000

    iget-wide v12, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->rxBytes:J

    sub-long v12, v4, v12

    div-long/2addr v12, v6

    cmp-long v3, v10, v12

    if-gez v3, :cond_3

    .line 1442
    const/4 v3, 0x1

    goto :goto_0

    .line 1443
    :cond_3
    const-wide/32 v10, 0x19000

    iget-wide v12, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->txBytes:J

    sub-long v12, v8, v12

    div-long/2addr v12, v6

    cmp-long v3, v10, v12

    if-gez v3, :cond_4

    .line 1444
    const/4 v3, 0x1

    goto :goto_0

    .line 1446
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public computeThreeAppState()V
    .locals 7

    .prologue
    .line 2143
    const/4 v3, 0x0

    .line 2144
    .local v3, "mProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 2145
    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    .line 2146
    monitor-exit v5

    .line 2147
    if-nez v3, :cond_1

    .line 2164
    :cond_0
    return-void

    .line 2146
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2151
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 2152
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2153
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_2

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_3

    .line 2151
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2156
    :cond_3
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-nez v4, :cond_2

    .line 2158
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->add3rdAppProcessState(II)V

    .line 2159
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
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
    .line 3218
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

    .line 3219
    const-string v9, "@The BPM list : "

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 3220
    const-string v9, "@The PKG list : "

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 3221
    const-string v9, "@The BRD list : "

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 3222
    const-string v9, "@The BAD list : "

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mBadList:Ljava/util/List;

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 3223
    const-string v9, "@The AppWidget list : "

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 3225
    const-string v9, "UidPidState list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3227
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 3228
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

    .line 3229
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3230
    .local v6, "mPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 3231
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

    .line 3230
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3227
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3234
    .end local v3    # "j":I
    .end local v6    # "mPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3235
    const-string v9, "Suspend list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3237
    const/4 v1, 0x0

    :goto_2
    :try_start_1
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 3238
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

    .line 3237
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3234
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 3240
    :cond_2
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3241
    const-string v9, "mGpsReceiverLocationUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3243
    const/4 v1, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 3244
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

    .line 3243
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3240
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 3246
    :cond_3
    const-string v9, "mOtherReceiverLocationUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3248
    const/4 v1, 0x0

    :goto_4
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 3249
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

    .line 3248
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3253
    :cond_4
    const-string v9, "mStatusLocationUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3255
    const/4 v1, 0x0

    :goto_5
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_5

    .line 3256
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

    .line 3255
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3259
    :cond_5
    const-string v9, "mTrafficUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3260
    const/4 v1, 0x0

    :goto_6
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_6

    .line 3261
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t mTrafficUids uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3260
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3263
    :cond_6
    const-string v9, "mFontWindowTouchUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3265
    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3266
    :try_start_5
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mFontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3267
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3268
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 3269
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

    goto :goto_7

    .line 3271
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7    # "mUid":Ljava/lang/Integer;
    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_7
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3273
    const-string v9, "UnFrozenUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3274
    const/4 v1, 0x0

    :goto_8
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_8

    .line 3275
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t mUnFrozenUids uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenUids:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3274
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3277
    :cond_8
    const-string v9, "UnFrozenReasonUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3278
    const/4 v1, 0x0

    :goto_9
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v1, v9, :cond_9

    .line 3279
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

    .line 3278
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3282
    :cond_9
    const-string v9, "ResumeBroadcastUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3286
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    if-eqz v9, :cond_b

    .line 3287
    const/4 v1, 0x0

    :goto_a
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_b

    .line 3288
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 3289
    .local v4, "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 3290
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

    .line 3291
    if-eqz v4, :cond_a

    .line 3292
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_b
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v3, v9, :cond_a

    .line 3293
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3294
    .local v0, "broadcasts":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3295
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

    .line 3292
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3287
    .end local v0    # "broadcasts":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "mCount":Ljava/lang/Integer;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3302
    .end local v4    # "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "uid":I
    :cond_b
    const-string v9, "SuspendProcessHander list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3303
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    if-eqz v9, :cond_c

    .line 3304
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    new-instance v10, Landroid/util/PrintWriterPrinter;

    invoke-direct {v10, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v11, "\t message list"

    invoke-virtual {v9, v10, v11}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3307
    :cond_c
    const-string v9, "ResumeProcessHander list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3308
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    if-eqz v9, :cond_d

    .line 3309
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    new-instance v10, Landroid/util/PrintWriterPrinter;

    invoke-direct {v10, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v11, "\t message list"

    invoke-virtual {v9, v10, v11}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3313
    :cond_d
    return-void
.end method

.method public getBPMEnable()Z
    .locals 3

    .prologue
    .line 2086
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 2087
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

    .line 2088
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method loadNPMConfigFiles()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1547
    const-string v2, "/data/data_bpm/brd.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 1548
    const-string v2, "/data/data_bpm/pkg.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 1549
    const-string v2, "/data/data_bpm/black_broadcast.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBroadcastList:Ljava/util/List;

    .line 1550
    const-string v2, "/data/data_bpm/black_gps.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    .line 1551
    const-string v2, "/data/data_bpm/black_brd.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    .line 1553
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

    .line 1554
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

    .line 1555
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

    .line 1556
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

    .line 1557
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

    .line 1560
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1561
    .local v0, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1562
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 1563
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

    .line 1564
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareConfigStatus()V

    .line 1565
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    if-ne v2, v3, :cond_2

    .line 1566
    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 1567
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 1575
    .end local v1    # "temp":Z
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    .line 1577
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

    .line 1578
    return-void

    :cond_1
    move v1, v4

    .line 1562
    goto :goto_0

    .line 1568
    .restart local v1    # "temp":Z
    :cond_2
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1569
    invoke-virtual {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 1570
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 1572
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    goto :goto_1
.end method

.method public openDebug(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 3206
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 3207
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 3208
    return-void
.end method

.method prepareBPMConfigFiles()V
    .locals 5

    .prologue
    .line 1853
    const-string v2, "OnePlusProcessManager"

    const-string v3, "[FO]prepareBPMConfigFiles()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data_bpm/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1856
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1857
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1860
    :cond_0
    const-string v2, "/system/bpm/pkg.xml"

    const-string v3, "/data/data_bpm/pkg.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    const-string v2, "/system/bpm/brd.xml"

    const-string v3, "/data/data_bpm/brd.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    const-string v2, "/system/bpm/bpm_sts.xml"

    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    const-string v2, "/system/bpm/black_broadcast.xml"

    const-string v3, "/data/data_bpm/black_broadcast.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    const-string v2, "/system/bpm/black_gps.xml"

    const-string v3, "/data/data_bpm/black_gps.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    const-string v2, "/system/bpm/black_brd.xml"

    const-string v3, "/data/data_bpm/black_brd.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1872
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/pkg.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1873
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/brd.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1874
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/bpm_sts.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1875
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/black_gps.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1876
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/black_brd.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1881
    :goto_1
    return-void

    .line 1866
    :catch_0
    move-exception v0

    .line 1867
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]initBPMConfigFiles(): failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1877
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1878
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]prepareBPMConfigFiles(): failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method prepareConfigStatus()V
    .locals 8

    .prologue
    .line 1507
    const-string v7, "prepareConfigStatus()"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 1508
    const-string v7, "/data/data_bpm/cfg.xml"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1509
    .local v0, "dataCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "/system/bpm/cfg.xml"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 1514
    .local v5, "sysCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1515
    .local v4, "sv":I
    const/4 v2, 0x0

    .line 1516
    .local v2, "dv":I
    if-nez v5, :cond_1

    .line 1517
    const/4 v4, 0x0

    .line 1543
    :cond_0
    :goto_0
    return-void

    .line 1520
    :cond_1
    const-string v7, "version"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1521
    .local v6, "sysVersion":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1524
    if-nez v0, :cond_3

    .line 1525
    const/4 v2, 0x0

    .line 1531
    :goto_1
    if-le v4, v2, :cond_0

    .line 1532
    const-string v7, "forceSwitch"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1533
    .local v3, "forceSwitch":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1534
    const-string v7, "on"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1535
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    .line 1541
    :cond_2
    :goto_2
    const-string v7, "/data/data_bpm/cfg.xml"

    invoke-static {v7, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveXmlLocked(Ljava/lang/String;Ljava/util/HashMap;)Z

    goto :goto_0

    .line 1527
    .end local v3    # "forceSwitch":Ljava/lang/String;
    :cond_3
    const-string v7, "version"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1528
    .local v1, "dataVersion":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 1536
    .end local v1    # "dataVersion":Ljava/lang/String;
    .restart local v3    # "forceSwitch":Ljava/lang/String;
    :cond_4
    const-string v7, "off"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1537
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    goto :goto_2
.end method

.method removeUidStateLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1202
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 1203
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1204
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 1205
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1207
    .end local v1    # "oldUidState":I
    :cond_0
    return-void
.end method

.method public resumeAllProcessLock(Ljava/lang/String;)V
    .locals 5
    .param p1, "why"    # Ljava/lang/String;

    .prologue
    .line 2279
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2281
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    invoke-direct {v3, v1, p1, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;I)Z

    .line 2280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2283
    :cond_0
    monitor-exit v2

    .line 2284
    return-void

    .line 2283
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
    .line 2092
    if-eqz p1, :cond_1

    .line 2093
    const-string v0, "sys.cgroup.active"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    :goto_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eq p1, v0, :cond_0

    .line 2098
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 2099
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateBPMEnableState(Z)V

    .line 2102
    :cond_0
    return-void

    .line 2095
    :cond_1
    const-string v0, "sys.cgroup.active"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCGroupState(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .prologue
    .line 687
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupStateLocked(IZ)V

    .line 688
    return-void
.end method

.method updatePowerSaveWhitelistLocked()V
    .locals 6

    .prologue
    .line 1019
    const/4 v4, 0x0

    :try_start_0
    new-array v1, v4, [I

    .line 1020
    .local v1, "mWhiteUid":[I
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v4, :cond_0

    .line 1021
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v1

    .line 1023
    :cond_0
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    :try_start_1
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->changeIntToList([I)Ljava/util/List;

    move-result-object v3

    .line 1025
    .local v3, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->changeIntToList([I)Ljava/util/List;

    move-result-object v2

    .line 1026
    .local v2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v3, v2}, Lcom/android/server/am/OnePlusProcessManager;->handlePackageChange(Ljava/util/List;Ljava/util/List;)V

    .line 1027
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    .line 1028
    monitor-exit v5

    .line 1032
    .end local v1    # "mWhiteUid":[I
    .end local v2    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 1028
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

    .line 1029
    .end local v1    # "mWhiteUid":[I
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    sput-object v4, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    goto :goto_0
.end method

.method updateProperties()V
    .locals 0

    .prologue
    .line 1581
    return-void
.end method

.method updateUidStateLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    .line 1105
    const/4 v1, 0x2

    if-le p2, v1, :cond_1

    .line 1106
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->removeUidStateLocked(I)V

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1110
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method writePidToTasksFileDelayed(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 679
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 680
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x72

    iput v1, v0, Landroid/os/Message;->what:I

    .line 681
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 682
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 683
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 684
    return-void
.end method

.method public writePidsToTasksFile(I)V
    .locals 18
    .param p1, "uid"    # I

    .prologue
    .line 540
    const/4 v1, 0x0

    .line 542
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

    .line 544
    .local v7, "mCgroupFreezerPathbytasks":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 546
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 547
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 548
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 551
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 552
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

    .line 581
    if-eqz v1, :cond_1

    .line 582
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 583
    const/4 v1, 0x0

    .line 590
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 585
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 586
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

    .line 587
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 556
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    const-string v9, ""

    .line 557
    .local v9, "pidsStr":Ljava/lang/String;
    const-string v10, ""

    .line 558
    .local v10, "pidsStr_debug":Ljava/lang/String;
    const-string v11, ""

    .line 559
    .local v11, "processName":Ljava/lang/String;
    sget-object v15, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 560
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 561
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .local v2, "cgroupout":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v13, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v14, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_4

    .line 563
    sget-object v14, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 564
    .local v12, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v12, :cond_3

    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v14, :cond_3

    iget v14, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_3

    .line 565
    iget-object v11, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 566
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

    .line 567
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

    .line 568
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

    .line 569
    .local v8, "pidbuffer":[B
    invoke-virtual {v2, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 562
    .end local v8    # "pidbuffer":[B
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 572
    .end local v12    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 573
    :try_start_5
    sget-boolean v14, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v14, :cond_5

    .line 574
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

    .line 581
    :cond_5
    if-eqz v2, :cond_7

    .line 582
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 583
    const/4 v1, 0x0

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 572
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

    .line 576
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .end local v9    # "pidsStr":Ljava/lang/String;
    .end local v10    # "pidsStr_debug":Ljava/lang/String;
    .end local v11    # "processName":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 577
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

    .line 578
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 581
    if-eqz v1, :cond_1

    .line 582
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 583
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 585
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

    .line 586
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

    .line 587
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 589
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 585
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

    .line 586
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

    .line 587
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 580
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v14

    .line 581
    :goto_4
    if-eqz v1, :cond_6

    .line 582
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 583
    const/4 v1, 0x0

    .line 588
    :cond_6
    :goto_5
    throw v14

    .line 585
    :catch_4
    move-exception v3

    .line 586
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

    .line 587
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 580
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

    .line 576
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    move-object v1, v2

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 572
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
