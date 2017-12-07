.class public Lcom/android/server/am/OnePlusProcessManager;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusProcessManager$1;,
        Lcom/android/server/am/OnePlusProcessManager$2;,
        Lcom/android/server/am/OnePlusProcessManager$3;,
        Lcom/android/server/am/OnePlusProcessManager$4;,
        Lcom/android/server/am/OnePlusProcessManager$5;,
        Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;,
        Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;,
        Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;,
        Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;,
        Lcom/android/server/am/OnePlusProcessManager$Traffic;,
        Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;,
        Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;,
        Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;
    }
.end annotation


# static fields
.field private static final APP_CFG_FILE:Ljava/lang/String; = "cfg.xml"

.field private static final APP_CFG_PATH:Ljava/lang/String; = "/data/data_bpm/cfg.xml"

.field private static final BLACK_ALARM_FILE:Ljava/lang/String; = "black_alarm.xml"

.field private static final BLACK_ALARM_PATH:Ljava/lang/String; = "/data/data_bpm/black_alarm.xml"

.field private static final BLACK_BRD_APP_FILE:Ljava/lang/String; = "black_brd.xml"

.field private static final BLACK_BRD_APP_PATH:Ljava/lang/String; = "/data/data_bpm/black_brd.xml"

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

.field public static final GLOBAL_FLAG_SETTED_SIM_COUNTRY:I = 0x1

.field private static final INIT_CONFIG_DATA:I = 0x70

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

.field private static final PROP_FLAGS:Ljava/lang/String; = "persist.sys.cgroup.flags"

.field private static final PROP_REGION:Ljava/lang/String; = "persist.sys.oem.region"

.field private static final PROP_SIM_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field private static final PROP_USING:Ljava/lang/String; = "persist.sys.cgroup.using"

.field static final ReceiverFailMax:I = 0x4

.field private static SCREEN_OFF_INTENT:Ljava/lang/String; = null

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final START_WATCHING:I = 0x6f

.field private static final SUSPEND_DELAY:J = 0xfde8L

.field static final SUSPEND_DELAY_DEFAULT:I = 0x1

.field static final SUSPEND_DELAY_LONG:I = 0x3

.field static final SUSPEND_DELAY_SHORT:I = 0x2

.field private static final SUSPEND_PRE_APP_DELAY:J = 0x30d40L

.field private static final SYS_BLACK_ALARM_FILE:Ljava/lang/String; = "/system/bpm/black_alarm.xml"

.field private static final SYS_BLACK_BRD_FILE:Ljava/lang/String; = "/system/bpm/black_brd.xml"

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

.field static computeTrafficTime:J = 0x0L

.field private static isAlarmAdjust:Z = false

.field private static isChargeringCloseForzen:Z = false

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

.field static mCanFrozenUids:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private static mGlobalFlags:I

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

.field static mNotAllowSensorUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mNotification:Landroid/app/INotificationManager;

.field private static mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field static mPendingUid:I

.field static mPhoneAppReady:Z

.field public static mProcess:Ljava/lang/Object;

.field private static mRegion:Ljava/lang/String;

.field private static mResumeFirst:Z

.field public static mScreenLock:Ljava/lang/Object;

.field private static mScreenOffCheckIntent:Landroid/app/PendingIntent;

.field static mScreenOffCount:I

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

.field static mSuspendUids:Ljava/util/ArrayList;
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

.field public static mWakeLock:Ljava/lang/Object;

.field public static mWhiteLock:Ljava/lang/Object;

.field static mWhiteUids:[I

.field public static sInputMethodUid:I

.field static screenOffCheckDelayTime:J

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

.field mForceStopSensorPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mForceSwitch:I

.field mFrontActivityUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mFrontWindowTouchUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field mImportantUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOneplusProcessHandler:Landroid/os/Handler;

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

.field mPowerAdjust:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
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

.field private mResumeProcessHandler:Landroid/os/Handler;

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

.field private mSettingsObserver:Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

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

.field private mSuspendProcessHandler:Landroid/os/Handler;

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

.field final mUidState:Landroid/util/SparseIntArray;

.field private mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field pm:Landroid/os/PowerManager;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/OnePlusProcessManager;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v0
.end method

.method static synthetic -get10(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get12()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object v0
.end method

.method static synthetic -get14()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    return v0
.end method

.method static synthetic -get15()Lcom/android/server/am/OnePlusProcessManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get17()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z

    return v0
.end method

.method static synthetic -get18()Landroid/app/PendingIntent;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/OnePlusProcessManager;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/am/OnePlusProcessManager;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_SLEEP:D

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/am/OnePlusProcessManager;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    return-wide v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z

    return v0
.end method

.method static synthetic -get7()Landroid/app/AlarmManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get8()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method static synthetic -get9()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object p1
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/OnePlusProcessManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->responseSIMStateChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/OnePlusProcessManager;ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->hanleBlackSensor()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->removeTempWhiteList()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/am/OnePlusProcessManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->resumeRelateUid(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->scheduleForegroundChangeMessage(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/am/OnePlusProcessManager;IJ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startComputeUidTraffic(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startResumeUid(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->tryAddScreenOffTrafficUids()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateForegroundActivityChange(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/OnePlusProcessManager;I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startSuspendUid(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(IIZ)V
    .locals 0
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "retry"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V

    return-void
.end method

.method static synthetic -wrap21(II)V
    .locals 0
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/OnePlusProcessManager;I)D
    .locals 2
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->canSuspendUid(I)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(Lcom/android/server/am/OnePlusProcessManager;I)I
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->computeUidTraffic(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getRelatedUids(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/am/OnePlusProcessManager;I)J
    .locals 2
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addSuspendDelayCount(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap8(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->handleAudioUid()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->handleSettingsChangedLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 130
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 131
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 132
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    .line 140
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    .line 142
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 145
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 150
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 151
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z

    .line 152
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z

    .line 153
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    .line 222
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    .line 230
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    .line 233
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    .line 239
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLockProcess:Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mProcess:Ljava/lang/Object;

    .line 245
    const-string/jumbo v0, "com.oneplus.android.screenOffCheckProcessState"

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    .line 248
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    .line 254
    new-array v0, v2, [I

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    .line 256
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 257
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    .line 258
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mMessageLock:Ljava/lang/Object;

    .line 264
    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    .line 266
    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 267
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCount:I

    .line 268
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->screenOffCheckDelayTime:J

    .line 269
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    .line 270
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    .line 271
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    .line 272
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    .line 273
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    .line 283
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    .line 292
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->sInputMethodUid:I

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    .line 296
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    .line 298
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mNotAllowSensorUids:Ljava/util/ArrayList;

    .line 302
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    .line 304
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 306
    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    .line 307
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    .line 311
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    .line 315
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    .line 323
    const-string/jumbo v0, "ProcessFreezer"

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->CONFIG_NAME:Ljava/lang/String;

    .line 330
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z

    .line 331
    sput v3, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    .line 4186
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 4187
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mRegion:Ljava/lang/String;

    .line 124
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 11
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 147
    iput-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 148
    iput-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 158
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 160
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    .line 162
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    .line 234
    iput-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    .line 235
    iput-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    .line 236
    iput-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    .line 252
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    .line 259
    iput-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    .line 260
    iput-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    .line 261
    iput-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    .line 275
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    .line 277
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    .line 279
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    .line 280
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    .line 281
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    .line 282
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    .line 285
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    .line 286
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    .line 291
    iput v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    .line 303
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    .line 308
    iput-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    .line 309
    iput-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 316
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    .line 318
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerAdjust:Ljava/util/HashSet;

    .line 329
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    .line 332
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    .line 444
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/OnePlusProcessManager$1;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidObserver:Landroid/app/IUidObserver;

    .line 840
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    .line 841
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    .line 842
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iput-wide v6, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    .line 843
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    iput-wide v6, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    .line 844
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    iput-wide v6, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_SLEEP:D

    .line 1228
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$2;

    invoke-direct {v5, p0}, Lcom/android/server/am/OnePlusProcessManager$2;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 1468
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$3;

    invoke-direct {v5, p0}, Lcom/android/server/am/OnePlusProcessManager$3;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1626
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$4;

    invoke-direct {v5, p0}, Lcom/android/server/am/OnePlusProcessManager$4;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 4192
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$5;

    invoke-direct {v5, p0}, Lcom/android/server/am/OnePlusProcessManager$5;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    iget-object v5, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "oem.background.control"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 336
    const-string/jumbo v5, "persist.sys.cgroup.using"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    .line 337
    const-string/jumbo v5, "persist.sys.alarmAdjust.using"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    .line 338
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    if-nez v5, :cond_0

    .line 339
    sput-boolean v9, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 341
    :cond_0
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v5, :cond_1

    .line 342
    const-string/jumbo v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OnePlusProcessManager isSuppoerted ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void

    .line 346
    :cond_1
    sput-object p1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 347
    iget-object v5, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    .line 349
    const-string/jumbo v5, "OnePlusProcessManager"

    const-string/jumbo v6, "OnePlusProcessManager VERSION = v15112601"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string/jumbo v5, "sys.cgroup.version"

    const-string/jumbo v6, "v15112601"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v5, "persist.sys.cgroup.debug"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 352
    const-string/jumbo v5, "persist.sys.cgroup.debugdetail"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 353
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    .line 354
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->registerSimReceiver()V

    .line 355
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v5, "OneplusProcessThread"

    invoke-direct {v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 356
    .local v1, "mOneplusThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 357
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    .line 359
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    const/16 v8, 0x6f

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 360
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xbb8

    const/16 v8, 0x70

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 363
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v5, "SuspenPorcessThread"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 364
    .local v3, "mSuspendThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 366
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v5, "ResumeProcessThread"

    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 367
    .local v2, "mResumeThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 368
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    .line 369
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    .line 371
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareBPMConfigFiles()V

    .line 373
    const-string/jumbo v5, "notification"

    .line 372
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 374
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 375
    const-string/jumbo v6, "alarm"

    .line 374
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 376
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffIntent:Landroid/content/Intent;

    .line 378
    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string/jumbo v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string/jumbo v5, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 384
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffIntent:Landroid/content/Intent;

    .line 383
    invoke-static {v5, v9, v6, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;

    .line 385
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 386
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    .line 387
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    const-string/jumbo v6, "frozenApp"

    invoke-virtual {v5, v10, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    .line 390
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;I)V

    .line 393
    const-string/jumbo v5, "deviceidle"

    .line 392
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 395
    new-instance v4, Landroid/content/IntentFilter;

    .line 396
    const-string/jumbo v5, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 395
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 397
    .local v4, "whitelistFilter":Landroid/content/IntentFilter;
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->updatePowerSaveWhitelistLocked()V

    .line 400
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 401
    const-string/jumbo v5, "location"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService;

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    .line 403
    const-string/jumbo v5, "power"

    .line 402
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    .line 404
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 405
    const-string/jumbo v6, "sensor"

    .line 404
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 406
    new-instance v5, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 407
    const-string/jumbo v5, "alarm"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    .line 408
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->initialOnlineConfig()V

    .line 409
    const-string/jumbo v5, "persist.sys.cgroup.charger"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z

    .line 411
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSettingsObserver:Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;

    .line 412
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    .line 413
    const-string/jumbo v6, "doze_mode_policy"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 414
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mSettingsObserver:Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;

    const/4 v8, -0x1

    .line 412
    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 415
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    const-string/jumbo v6, "com.rytong.airchina"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    const-string/jumbo v6, "com.htinns"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method private add3rdAppProcessState(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 2833
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2834
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2835
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2836
    .local v0, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 2837
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2838
    .restart local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2840
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2841
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2832
    .end local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    return-void

    .line 2834
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static addDozeWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1884
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_1

    .line 1886
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 1887
    const-string/jumbo v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addDozeWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p0}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1883
    :goto_0
    return-void

    .line 1889
    :catch_0
    move-exception v0

    .line 1890
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OnePlusProcessManager"

    const-string/jumbo v2, "Falied to add package to doze whitelist"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1893
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "OnePlusProcessManager"

    const-string/jumbo v2, "Cannot get DeviceIdleController"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addLocationFailCount(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 983
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 984
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 985
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 986
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    monitor-exit v2

    .line 993
    return v5

    .line 989
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 990
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 983
    .end local v0    # "count":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "count":Ljava/lang/Integer;
    :cond_1
    monitor-exit v2

    .line 996
    return v6
.end method

.method static final addPidToCgroupTasksWithJudge(Lcom/android/server/am/ProcessRecord;I)V
    .locals 5
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "childPid"    # I

    .prologue
    .line 3381
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v1, :cond_0

    .line 3382
    return-void

    .line 3384
    :cond_0
    if-eqz p0, :cond_1

    .line 3385
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    .line 3384
    if-eqz v1, :cond_1

    .line 3386
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 3387
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-nez v1, :cond_1

    .line 3388
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_1

    .line 3389
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 3390
    if-lez p1, :cond_1

    .line 3391
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v1, v2, p1}, Lcom/android/server/am/OnePlusProcessManager;->add3rdAppProcessState(II)V

    .line 3392
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v1, :cond_1

    .line 3393
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3394
    const-string/jumbo v3, "addPidToCgroupTasksWithJudge"

    .line 3393
    invoke-direct {v1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3395
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3396
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x73

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3397
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3398
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3399
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3400
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 3401
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3402
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 3404
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mNotAllowSensorUids:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3405
    :try_start_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotAllowSensorUids:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 3380
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 3400
    .restart local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3404
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private addSuspendDelayCount(I)J
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const/16 v5, 0x1e

    .line 965
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 966
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 967
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 968
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 975
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 977
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    sget-wide v6, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-long/2addr v4, v6

    monitor-exit v2

    return-wide v4

    .line 971
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 972
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 965
    .end local v0    # "count":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private addTempWhiteList(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1601
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1603
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1604
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v2, v1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1606
    :cond_1
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->addDozeWhiteList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1609
    :catch_0
    move-exception v0

    .line 1610
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "OnePlusProcessManager"

    const-string/jumbo v3, "Falied to add package to doze whitelist"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private adjustSuspendMessage(ILjava/lang/String;J)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;
    .param p3, "delayTime"    # J

    .prologue
    .line 3452
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    if-eq v0, p1, :cond_0

    .line 3453
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3452
    if-eqz v0, :cond_2

    .line 3454
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 3455
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adjustSuspendMessage message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " why = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 3457
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v1

    .line 3458
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3459
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3462
    :cond_2
    return-void

    .line 3457
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private canSuspendUid(I)D
    .locals 8
    .param p1, "uid"    # I

    .prologue
    .line 2418
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2419
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v4

    .line 2421
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2422
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2423
    .local v1, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 2424
    :cond_1
    iget-wide v6, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-wide v6

    :cond_2
    monitor-exit v4

    .line 2427
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2428
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check mFrontActivityUids fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v4

    .line 2421
    .end local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2431
    .restart local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2432
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkWhiteUid fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v4

    .line 2435
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkWhitePackageUid(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2436
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkWhitePackageUid fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v4

    .line 2439
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v4, 0x10

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_6

    .line 2440
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkWhiteUid import top "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v4

    .line 2443
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2444
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check mFrontWindowTouchUids fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v4

    .line 2447
    :cond_7
    sget v3, Lcom/android/server/am/OnePlusProcessManager;->sInputMethodUid:I

    if-ne v3, p1, :cond_8

    .line 2448
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v4

    .line 2450
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    add-int/lit16 v4, p1, -0x2710

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2451
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "suspend hanlder already hasMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v4

    .line 2454
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkActiveAudioUids(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2455
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkActiveAudioUids fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v4

    .line 2458
    :cond_a
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2459
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkTrafficUid fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v4

    .line 2462
    :cond_b
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mNotAllowSensorUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2463
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkActiveSensor(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2464
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkActiveSensor fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 2466
    .local v2, "sensorPackage":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2467
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2468
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x2

    invoke-virtual {v3, v2, v5}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    .line 2467
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2471
    :cond_c
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v4

    .line 2467
    :catchall_1
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 2474
    .end local v2    # "sensorPackage":Ljava/lang/String;
    :cond_d
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2475
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check mAdjustUids fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v4

    .line 2478
    :cond_e
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2479
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check mImportantUids fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v4

    .line 2482
    :cond_f
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2483
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2484
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 2485
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip suspend "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " due to mGpsReceiverLocationUids"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v4

    .line 2488
    :cond_10
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mGpsReceiverUids plan to suspend "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_11
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2491
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addLocationFailCount(I)Z

    move-result v3

    if-nez v3, :cond_12

    .line 2492
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v4

    .line 2502
    :cond_12
    iget-wide v4, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    return-wide v4
.end method

.method private cancelNotificationsForUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2321
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/OnePlusProcessManager$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/OnePlusProcessManager$6;-><init>(Lcom/android/server/am/OnePlusProcessManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2320
    return-void
.end method

.method public static cancelNotificationsWithPkg(Ljava/lang/String;I)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 2331
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2332
    const-string/jumbo v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelNotificationsWithPkg():pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    if-nez v1, :cond_1

    .line 2335
    return-void

    .line 2337
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    invoke-interface {v1, p0, p1}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2330
    :goto_0
    return-void

    .line 2339
    :catch_0
    move-exception v0

    .line 2340
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception---->cancelNotificationsWithPkg():pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
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
    .line 1254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    .local v1, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1256
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1258
    :cond_0
    return-object v1
.end method

.method private checkActiveAudioUids(I)Z
    .locals 7
    .param p1, "mUid"    # I

    .prologue
    const/4 v6, 0x0

    .line 2156
    const/4 v1, 0x0

    .line 2157
    .local v1, "mTrackUids":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v1

    .line 2158
    .local v1, "mTrackUids":[Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2159
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActiveAudioUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_0
    if-eqz v1, :cond_5

    .line 2162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_5

    .line 2163
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2162
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2166
    :cond_2
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2171
    .local v2, "uid":I
    if-nez v2, :cond_3

    .line 2172
    return v6

    .line 2174
    :cond_3
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 2175
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WakeLock owner uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    :cond_4
    if-ne v2, p1, :cond_1

    .line 2178
    const/4 v3, 0x1

    return v3

    .line 2182
    .end local v0    # "i":I
    .end local v2    # "uid":I
    :cond_5
    return v6
.end method

.method private checkActiveSensor(I)Z
    .locals 8
    .param p1, "mUid"    # I

    .prologue
    const/4 v7, 0x0

    .line 2543
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4}, Landroid/hardware/SensorManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    .line 2544
    .local v0, "activeSensor":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2545
    const-string/jumbo v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkActiveSensor activeSensor= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2548
    .local v2, "mTrackUids":[Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 2549
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 2550
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2549
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2553
    :cond_2
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2554
    .local v3, "uid":I
    if-nez v3, :cond_3

    .line 2555
    return v7

    .line 2557
    :cond_3
    if-ne v3, p1, :cond_1

    .line 2558
    const/4 v4, 0x1

    return v4

    .line 2562
    .end local v1    # "i":I
    .end local v3    # "uid":I
    :cond_4
    return v7
.end method

.method static final checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V
    .locals 9
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3184
    const-string/jumbo v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " died but not restart......"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3187
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3188
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3189
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 3190
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p0, v1, v7}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 3191
    iput-object v8, v1, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 3192
    iput-object v8, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    goto :goto_0

    .line 3194
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 3197
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_1
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3198
    .local v0, "NL":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 3199
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 3200
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p0, :cond_2

    .line 3201
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p0, v1, v7}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 3202
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3198
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3183
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
    const/4 v2, 0x1

    .line 3551
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3552
    return v2

    .line 3554
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3555
    return v2

    .line 3557
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3558
    return v2

    .line 3561
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-boolean v1, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3562
    return v2

    .line 3564
    :cond_3
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_4

    .line 3565
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BPM skip broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3566
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 3565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3566
    const-string/jumbo v2, " sender "

    .line 3565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3566
    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 3565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3566
    const-string/jumbo v2, " (uid "

    .line 3565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3566
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 3565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3567
    const-string/jumbo v2, ")"

    .line 3565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3567
    const-string/jumbo v2, " is ordered "

    .line 3565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3567
    iget-boolean v2, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 3565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3569
    const/4 v0, 0x0

    return v0
.end method

.method static final checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 8
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 3606
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3607
    return v1

    .line 3609
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3610
    return v1

    .line 3612
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3613
    return v1

    .line 3615
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_4

    .line 3616
    :cond_3
    return v1

    .line 3618
    :cond_4
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3619
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v7, :cond_5

    .line 3620
    return v1

    .line 3622
    :cond_5
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_6

    .line 3623
    return v1

    .line 3625
    :cond_6
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-nez v0, :cond_7

    .line 3626
    return v1

    .line 3628
    :cond_7
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, v7, p2}, Lcom/android/server/am/OnePlusProcessManager;->checkBroadcastIsPackageNotCanStartImpl(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3629
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_8

    .line 3630
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Do not want to launch app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3631
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3631
    const-string/jumbo v2, "/"

    .line 3630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3632
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3632
    const-string/jumbo v2, " for broadcast "

    .line 3630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3632
    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 3630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3633
    const-string/jumbo v2, " callUid:"

    .line 3630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3633
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 3630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3633
    const-string/jumbo v2, " callPid:"

    .line 3630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3633
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 3630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    :cond_8
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 3635
    iget-boolean v5, p2, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    move-object v1, p2

    .line 3634
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 3636
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 3637
    return v6

    .line 3639
    :cond_9
    return v1
.end method

.method private checkBroadcastIsPackageNotCanStartImpl(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 7
    .param p1, "appinfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v6, 0x0

    .line 3644
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 3645
    .local v2, "broadcastAction":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3646
    .local v3, "isCheckBroadcast":Z
    if-nez v2, :cond_0

    .line 3647
    return v6

    .line 3649
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "action$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3650
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3651
    const/4 v3, 0x1

    .line 3655
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_5

    .line 3656
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3657
    return v6

    .line 3659
    :cond_3
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->checkWhitePackageUid(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3660
    return v6

    .line 3662
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3663
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3667
    :cond_5
    return v6

    .line 3664
    :cond_6
    const/4 v4, 0x1

    return v4
.end method

.method static final checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x1

    .line 3151
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3152
    return v1

    .line 3154
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v0, :cond_1

    .line 3155
    return v1

    .line 3157
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_2

    .line 3158
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessCanRestartImpl(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    .line 3160
    :cond_2
    return v1
.end method

.method private checkProcessCanRestartImpl(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v2, 0x1

    .line 3164
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_0

    .line 3165
    return v2

    .line 3167
    :cond_0
    if-nez p1, :cond_1

    .line 3168
    return v2

    .line 3170
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_2

    .line 3171
    return v2

    .line 3173
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_3

    .line 3174
    return v2

    .line 3177
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method private checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3211
    if-nez p1, :cond_0

    .line 3212
    return v4

    .line 3214
    :cond_0
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_2

    .line 3215
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_1

    .line 3216
    const-string/jumbo v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " app.uid < Process.FIRST_APPLICATION_UID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    :cond_1
    return v5

    .line 3220
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3221
    return v5

    .line 3223
    :cond_3
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3224
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_4

    .line 3225
    const-string/jumbo v2, "OnePlusProcessManager"

    const-string/jumbo v3, "checkProcessRecord ->#return true, it\'s white app "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :cond_4
    return v5

    .line 3229
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    monitor-enter v3

    .line 3230
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pkg$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3231
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/OnePlusProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    monitor-exit v3

    .line 3232
    return v5

    .end local v0    # "pkg":Ljava/lang/String;
    :cond_7
    monitor-exit v3

    .line 3236
    return v4

    .line 3229
    .end local v1    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static final checkProcessWhileBroadcastTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    .line 3520
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3521
    return v3

    .line 3523
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3524
    return v3

    .line 3526
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3527
    return v3

    .line 3529
    :cond_2
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_3

    .line 3530
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkProcessWhileBroadcastTimeout(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v2, "checkProcessWhileBroadcastTimeout "

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3533
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    .line 3534
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkProcessWhileBroadcastTimeout(): and resumeUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    :cond_4
    return v3

    .line 3540
    :cond_5
    return v3
.end method

.method static final checkProcessWhileTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    .line 3492
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3493
    return v3

    .line 3495
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3496
    return v3

    .line 3498
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3499
    return v3

    .line 3501
    :cond_2
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_3

    .line 3502
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkProcessWhileTimeout(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v2, "checkProcessWhileTimeout"

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3505
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    .line 3506
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkProcessWhileTimeout(): and resumeUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    :cond_4
    return v3

    .line 3513
    :cond_5
    return v3
.end method

.method private checkVersion()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2346
    const-string/jumbo v6, "/data/data_bpm/version.xml"

    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2347
    .local v0, "dataCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "/system/bpm/version.xml"

    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 2352
    .local v4, "sysCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2353
    .local v3, "sv":I
    const/4 v2, 0x0

    .line 2354
    .local v2, "dv":I
    if-nez v4, :cond_0

    .line 2355
    const/4 v3, 0x0

    .line 2356
    return v9

    .line 2358
    :cond_0
    const-string/jumbo v6, "version"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2359
    .local v5, "sysVersion":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2361
    if-nez v0, :cond_1

    .line 2362
    const/4 v2, 0x0

    .line 2367
    :goto_0
    const-string/jumbo v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkVersion  sv="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " dv ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    if-le v3, v2, :cond_2

    .line 2369
    const/4 v6, 0x1

    return v6

    .line 2364
    :cond_1
    const-string/jumbo v6, "version"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2365
    .local v1, "dataVersion":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 2371
    .end local v1    # "dataVersion":Ljava/lang/String;
    :cond_2
    return v9
.end method

.method private checkWhitePackageUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 2234
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2235
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    monitor-enter v2

    .line 2236
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 2237
    return v3

    :cond_0
    monitor-exit v2

    .line 2240
    if-eqz v0, :cond_1

    const-string/jumbo v1, "com.cttl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2241
    return v3

    .line 2235
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2243
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private checkWhiteUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 2218
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2219
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 2220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2221
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 2222
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 2223
    const-string/jumbo v1, "OnePlusProcessManager"

    const-string/jumbo v3, "checkWhiteUid ->#return true, it\'s white app "

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2224
    :cond_0
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 2220
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    monitor-exit v2

    .line 2228
    return v3

    .line 2218
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private computeUidTraffic(I)I
    .locals 12
    .param p1, "uid"    # I

    .prologue
    .line 1776
    sget-object v11, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    monitor-enter v11

    .line 1777
    const/4 v8, 0x1

    .line 1778
    .local v8, "checkAgain":Z
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1779
    .local v9, "count":Ljava/lang/Integer;
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 1780
    const-string/jumbo v1, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "computeUidTraffic begin uid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1782
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkTrafficUid(I)Z

    move-result v8

    .line 1783
    .local v8, "checkAgain":Z
    if-eqz v8, :cond_5

    .line 1784
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1785
    .local v2, "now":J
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 1786
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    move-object v1, p0

    .line 1785
    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OnePlusProcessManager$Traffic;-><init>(Lcom/android/server/am/OnePlusProcessManager;JJJ)V

    .line 1787
    .local v0, "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1790
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1791
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v1, :cond_1

    .line 1792
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addTempWhiteList(I)V

    .line 1794
    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1795
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    :cond_2
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_3

    .line 1799
    const-string/jumbo v1, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "computeUidTraffic uid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    .end local v0    # "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    .end local v2    # "now":J
    .end local v8    # "checkAgain":Z
    :cond_3
    :goto_0
    if-nez v9, :cond_4

    .line 1828
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1830
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v11

    return v1

    .line 1801
    .restart local v8    # "checkAgain":Z
    :cond_5
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_6

    .line 1802
    const-string/jumbo v1, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "computeUidTraffic not check  uid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_6
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1805
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v1, :cond_7

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1813
    :cond_7
    :goto_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_8

    .line 1814
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-direct {v1, p1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 1816
    :cond_8
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 1807
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    .line 1808
    .local v10, "packageName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1809
    invoke-static {v10}, Lcom/android/server/am/OnePlusProcessManager;->removeDozeWhiteList(Ljava/lang/String;)V

    .line 1810
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1776
    .end local v8    # "checkAgain":Z
    .end local v9    # "count":Ljava/lang/Integer;
    .end local v10    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1

    .line 1819
    .local v8, "checkAgain":Z
    .restart local v9    # "count":Ljava/lang/Integer;
    :cond_a
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1820
    .restart local v2    # "now":J
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 1821
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    move-object v1, p0

    .line 1820
    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OnePlusProcessManager$Traffic;-><init>(Lcom/android/server/am/OnePlusProcessManager;JJJ)V

    .line 1822
    .restart local v0    # "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1825
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static continueSuspendUid(I)V
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 2015
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 2016
    return-void

    .line 2018
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 2019
    return-void

    .line 2021
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 2022
    return-void

    .line 2024
    :cond_2
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2025
    return-void

    .line 2027
    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2028
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 2029
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "continueSuspendUid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :cond_4
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    if-eq v0, p0, :cond_5

    .line 2031
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    add-int/lit16 v1, p0, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2033
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 2014
    :cond_5
    return-void
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
    .line 3911
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3912
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_1

    .line 3915
    :cond_0
    const-string/jumbo v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "copyFile():fromFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", toFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3917
    .local v0, "sourceFile":Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 3910
    return-void

    .line 3913
    .end local v0    # "sourceFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private getActiveAudioUids()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 2263
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 2264
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2265
    const-string/jumbo v2, "audio"

    .line 2264
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 2267
    :cond_0
    const-string/jumbo v0, ""

    .line 2268
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    .line 2270
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2274
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 2275
    const-string/jumbo v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getActiveAudioPids():pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2272
    :cond_2
    const-string/jumbo v0, ":0"

    goto :goto_0
.end method

.method public static getBPMEnable_out()Z
    .locals 2

    .prologue
    .line 2796
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 2797
    const-string/jumbo v0, "OnePlusProcessManager"

    const-string/jumbo v1, "Fatal: mOnePlusProcessManager = null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    const/4 v0, 0x0

    return v0

    .line 2800
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusProcessManager;->getBPMEnable()Z

    move-result v0

    return v0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusProcessManager;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 2007
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 2008
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 2010
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 8
    .param p1, "uid"    # I

    .prologue
    .line 1858
    const-string/jumbo v3, ""

    .line 1859
    .local v3, "packageName":Ljava/lang/String;
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 1860
    :try_start_0
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "packageName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v3    # "packageName":Ljava/lang/String;
    monitor-exit v6

    .line 1862
    if-eqz v3, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1865
    :cond_0
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_3

    .line 1866
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1867
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1868
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 1870
    :try_start_1
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v6, v4, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1871
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    .line 1872
    aget-object v5, v4, v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    .line 1859
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packages":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1863
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1
    return-object v3

    .line 1874
    .restart local v2    # "i":I
    .restart local v4    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1875
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, ""

    return-object v5

    .line 1868
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1880
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i":I
    .end local v4    # "packages":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, ""

    return-object v5
.end method

.method private getProcessForUid(I)Ljava/util/ArrayList;
    .locals 12
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
    .line 3350
    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mLockProcess:Ljava/lang/Object;

    monitor-enter v10

    .line 3351
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3354
    .local v8, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v6

    .line 3355
    .local v6, "mUidPidClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3356
    .local v3, "mPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v9

    if-gtz v9, :cond_1

    :cond_0
    monitor-exit v10

    .line 3357
    return-object v8

    .line 3359
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3360
    .local v4, "mPidListClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 3361
    .local v5, "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3362
    :try_start_2
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    :try_start_3
    monitor-exit v11

    .line 3364
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v9

    if-ge v2, v9, :cond_3

    .line 3366
    :try_start_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3370
    .local v7, "pid":Ljava/lang/Integer;
    if-nez v7, :cond_2

    .line 3364
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3361
    .end local v2    # "i":I
    .end local v7    # "pid":Ljava/lang/Integer;
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v11

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3350
    .end local v3    # "mPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "mPidListClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v6    # "mUidPidClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9

    .line 3372
    .restart local v2    # "i":I
    .restart local v3    # "mPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "mPidListClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v5    # "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v6    # "mUidPidClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v7    # "pid":Ljava/lang/Integer;
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_2
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3373
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 3367
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "pid":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    :cond_3
    monitor-exit v10

    .line 3375
    return-object v8
.end method

.method private getRelatedUids(I)Ljava/util/ArrayList;
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
    .line 2626
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 2627
    .local v11, "mSuspendProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2629
    .local v13, "mUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_1

    .line 2630
    :cond_0
    const/16 v16, 0x0

    return-object v16

    .line 2632
    :cond_1
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_f

    .line 2633
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2634
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v2, :cond_3

    .line 2632
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2638
    :cond_3
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    move/from16 v16, v0

    if-lez v16, :cond_5

    .line 2639
    sget-boolean v16, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v16, :cond_4

    .line 2640
    const-string/jumbo v16, "OnePlusProcessManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "skip suspend due to requesting perm uid ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_4
    const/16 v16, 0x0

    return-object v16

    .line 2644
    :cond_5
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArraySet;->size()I

    move-result v16

    if-lez v16, :cond_b

    .line 2645
    const/4 v15, 0x0

    .line 2646
    .local v15, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v15    # "sr":Lcom/android/server/am/ServiceRecord;
    .local v9, "it":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 2647
    const/4 v15, 0x0

    .line 2649
    .restart local v15    # "sr":Lcom/android/server/am/ServiceRecord;
    :try_start_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "sr":Lcom/android/server/am/ServiceRecord;
    check-cast v15, Lcom/android/server/am/ServiceRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2653
    .local v15, "sr":Lcom/android/server/am/ServiceRecord;
    if-eqz v15, :cond_6

    iget-object v0, v15, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    .line 2654
    const/4 v5, 0x0

    .local v5, "conni":I
    :goto_1
    iget-object v0, v15, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v5, v0, :cond_6

    .line 2655
    iget-object v0, v15, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2656
    .local v4, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_a

    .line 2657
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 2658
    .local v6, "crd":Lcom/android/server/am/ConnectionRecord;
    if-eqz v6, :cond_7

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    .line 2659
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v16, v0

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    .line 2660
    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2661
    .local v12, "mUid":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 2656
    .end local v12    # "mUid":I
    :cond_7
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2664
    .restart local v12    # "mUid":I
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/OnePlusProcessManager;->canSuspendUid(I)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_9

    .line 2665
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2666
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2668
    :cond_9
    const/16 v16, 0x0

    return-object v16

    .line 2654
    .end local v6    # "crd":Lcom/android/server/am/ConnectionRecord;
    .end local v12    # "mUid":I
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 2650
    .end local v4    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "conni":I
    .end local v8    # "i":I
    .end local v15    # "sr":Lcom/android/server/am/ServiceRecord;
    :catch_0
    move-exception v7

    .line 2677
    .end local v9    # "it":Ljava/util/Iterator;
    :cond_b
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v16

    if-lez v16, :cond_2

    .line 2678
    const/4 v5, 0x0

    .restart local v5    # "conni":I
    :goto_4
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v5, v0, :cond_2

    .line 2679
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 2680
    .local v3, "c":Lcom/android/server/am/ContentProviderRecord;
    const/4 v14, 0x0

    .line 2681
    .local v14, "sr":Lcom/android/server/am/ContentProviderConnection;
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v14    # "sr":Lcom/android/server/am/ContentProviderConnection;
    .restart local v9    # "it":Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 2683
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ContentProviderConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2687
    .local v14, "sr":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v14, :cond_c

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v16, v0

    iget-object v0, v14, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    .line 2688
    iget-object v0, v14, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2689
    .restart local v12    # "mUid":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v16

    if-nez v16, :cond_c

    .line 2692
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/OnePlusProcessManager;->canSuspendUid(I)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_d

    .line 2693
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2694
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2696
    :cond_d
    const/16 v16, 0x0

    return-object v16

    .line 2684
    .end local v12    # "mUid":I
    .end local v14    # "sr":Lcom/android/server/am/ContentProviderConnection;
    :catch_1
    move-exception v7

    .line 2678
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 2703
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "c":Lcom/android/server/am/ContentProviderRecord;
    .end local v5    # "conni":I
    .end local v9    # "it":Ljava/util/Iterator;
    :cond_f
    return-object v13
.end method

.method public static getScreenState()Z
    .locals 2

    .prologue
    .line 2999
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3000
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 2999
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSilent_AudioUids()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 2280
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 2281
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2282
    const-string/jumbo v2, "audio"

    .line 2281
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 2284
    :cond_0
    const-string/jumbo v0, ""

    .line 2285
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    .line 2287
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_silent_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2291
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 2292
    const-string/jumbo v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSilent_AudioUids():pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2289
    :cond_2
    const-string/jumbo v0, ":0"

    goto :goto_0
.end method

.method private handleAudioUid()V
    .locals 13

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getSilent_AudioUids()[Ljava/lang/String;

    move-result-object v8

    .line 1541
    .local v8, "silentUids":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v1

    .line 1543
    .local v1, "activeUids":[Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_0

    .line 1544
    const-string/jumbo v9, "OnePlusProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getMode="

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

    .line 1545
    :cond_0
    if-eqz v8, :cond_3

    .line 1546
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v9, :cond_3

    .line 1547
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

    .line 1548
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v8

    if-ge v2, v9, :cond_3

    .line 1549
    aget-object v9, v8, v2

    if-eqz v9, :cond_1

    aget-object v9, v8, v2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1548
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1552
    :cond_2
    aget-object v9, v8, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1553
    .local v7, "silentUid":I
    const/16 v9, 0x2710

    if-lt v7, v9, :cond_1

    .line 1554
    invoke-direct {p0, v7}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-direct {p0, v7}, Lcom/android/server/am/OnePlusProcessManager;->checkWhitePackageUid(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1555
    invoke-direct {p0, v7}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 1556
    .local v6, "packageName":Ljava/lang/String;
    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1557
    const-string/jumbo v9, "OnePlusProcessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "forceStopPackage: silentPackage="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, -0x2

    invoke-virtual {v9, v6, v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    .line 1556
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v9

    .line 1563
    .end local v2    # "i":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "silentUid":I
    :cond_3
    if-eqz v1, :cond_9

    .line 1564
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v9, v1

    if-ge v3, v9, :cond_9

    .line 1565
    aget-object v9, v1, v3

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1564
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1568
    :cond_5
    aget-object v9, v1, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1569
    .local v0, "activeUid":I
    const/4 v5, 0x0

    .line 1570
    .local v5, "mFind":Z
    if-eqz v8, :cond_8

    .line 1571
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4
    array-length v9, v8

    if-ge v4, v9, :cond_8

    .line 1572
    aget-object v9, v8, v4

    if-eqz v9, :cond_6

    aget-object v9, v8, v4

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1571
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1575
    :cond_7
    aget-object v9, v8, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1576
    .restart local v7    # "silentUid":I
    if-ne v7, v0, :cond_6

    .line 1577
    const/4 v5, 0x1

    .line 1582
    .end local v4    # "k":I
    .end local v7    # "silentUid":I
    :cond_8
    if-nez v5, :cond_4

    .line 1583
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->addTempWhiteList(I)V

    .line 1584
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1539
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
    .line 1264
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .local v2, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    .local v3, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1268
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1269
    .local v4, "pkg":Ljava/lang/Integer;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1270
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1273
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1274
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1275
    .restart local v4    # "pkg":Ljava/lang/Integer;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1276
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1279
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 1280
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1281
    .restart local v4    # "pkg":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v6, "handlePackageChange"

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1279
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1283
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 1284
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1285
    .restart local v4    # "pkg":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-wide v6, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 1283
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1287
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
    .line 1292
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .local v4, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1295
    .local v5, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 1296
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1297
    .local v6, "pkg":Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1298
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1301
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 1302
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1303
    .restart local v6    # "pkg":Ljava/lang/String;
    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1304
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1307
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 1308
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1311
    .restart local v6    # "pkg":Ljava/lang/String;
    :try_start_0
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1312
    const/4 v8, 0x1

    .line 1311
    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1313
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v8, "handlePackageChange"

    invoke-static {v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1307
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1317
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 1318
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1320
    .restart local v6    # "pkg":Ljava/lang/String;
    :try_start_1
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1321
    const/4 v8, 0x1

    .line 1320
    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1322
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    sget-wide v8, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    const-wide/16 v10, 0x2

    mul-long/2addr v8, v10

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1317
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1291
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_5
    return-void

    .line 1323
    .restart local v6    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_5

    .line 1314
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_3
.end method

.method private declared-synchronized handleSettingsChangedLocked()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "doze_mode_policy"

    .line 432
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/4 v5, -0x2

    .line 431
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 433
    .local v1, "policy":I
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 434
    const-string/jumbo v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSettingsChangedLocked # mBPMStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 438
    .local v0, "changedPolicy":Z
    :goto_0
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eq v0, v2, :cond_2

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnableFromDB(Z)V

    .line 440
    const-string/jumbo v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 430
    return-void

    .line 436
    .end local v0    # "changedPolicy":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "changedPolicy":Z
    goto :goto_0

    .end local v0    # "changedPolicy":Z
    .end local v1    # "policy":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 10
    .param p1, "oldList"    # Ljava/util/HashSet;
    .param p2, "newList"    # Ljava/util/HashSet;

    .prologue
    .line 1330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v2, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .local v3, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1335
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1336
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1337
    .local v4, "mUid":Ljava/lang/Integer;
    invoke-virtual {p1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1338
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1341
    .end local v4    # "mUid":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1342
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1343
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1344
    .restart local v4    # "mUid":Ljava/lang/Integer;
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1345
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1348
    .end local v4    # "mUid":Ljava/lang/Integer;
    :cond_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1349
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1350
    .local v5, "pkg":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "handleUidChange"

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1348
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1352
    .end local v5    # "pkg":Ljava/lang/Integer;
    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 1353
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1356
    .restart local v5    # "pkg":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-wide v8, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v6, v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 1352
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1358
    .end local v5    # "pkg":Ljava/lang/Integer;
    :cond_5
    return-void
.end method

.method private hanleBlackSensor()V
    .locals 8

    .prologue
    .line 1517
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5}, Landroid/hardware/SensorManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    .line 1518
    .local v0, "activeSensor":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 1519
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1520
    .local v2, "mTrackUids":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1521
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 1522
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1521
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1525
    :cond_1
    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1526
    .local v4, "uid":I
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 1528
    const-string/jumbo v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hanleBlackSensor  uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " package ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1531
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1532
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, -0x2

    invoke-virtual {v5, v3, v7}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1531
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 1516
    .end local v1    # "i":I
    .end local v4    # "uid":I
    :cond_2
    return-void
.end method

.method private initialOnlineConfig()V
    .locals 5

    .prologue
    .line 4032
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mConfigHandler:Landroid/os/Handler;

    .line 4033
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->CONFIG_NAME:Ljava/lang/String;

    .line 4032
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessFreezerConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 4034
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessFreezerConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 4031
    return-void
.end method

.method public static isDeliverDisplayChange(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x1

    .line 2862
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    .line 2863
    return v1

    .line 2865
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_1

    .line 2866
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->isDeliverDisplayChangeLock(I)Z

    move-result v0

    return v0

    .line 2868
    :cond_1
    return v1
.end method

.method private isDeliverDisplayChangeLock(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2873
    const/4 v0, 0x0

    .line 2874
    .local v0, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2875
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-exit v2

    .line 2877
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ltz v1, :cond_2

    .line 2878
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2879
    return v4

    .line 2874
    .end local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2882
    .restart local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 2883
    return v4

    .line 2885
    :cond_1
    return v5

    .line 2889
    :cond_2
    return v4
.end method

.method private isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3144
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
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3671
    if-eqz p2, :cond_0

    array-length v1, p2

    if-gtz v1, :cond_1

    .line 3672
    :cond_0
    return v2

    .line 3671
    :cond_1
    if-eqz p1, :cond_0

    .line 3675
    array-length v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, p2, v1

    .line 3676
    .local v0, "v":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3677
    const/4 v1, 0x1

    return v1

    .line 3675
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3680
    .end local v0    # "v":Ljava/lang/String;
    :cond_3
    return v2
.end method

.method public static isSupportFrozenApp()Z
    .locals 1

    .prologue
    .line 517
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUidSuspended(I)Z
    .locals 7
    .param p0, "uid"    # I

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x8

    .line 2847
    const-string/jumbo v1, "isUidSuspended"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2848
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2849
    const/4 v0, 0x0

    .line 2850
    .local v0, "resturn":Z
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2851
    :cond_0
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2852
    return v6

    .line 2855
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2856
    .local v0, "resturn":Z
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 2857
    return v0

    .line 2848
    .end local v0    # "resturn":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static loadStateLocked(Ljava/lang/String;)Ljava/util/List;
    .locals 15
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
    .line 3785
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3786
    .local v2, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3787
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 3788
    const-string/jumbo v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[FO]loadStateLocked():path="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " file don\'t exist!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    return-object v2

    .line 3791
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3792
    .local v5, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 3793
    .local v6, "stream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 3795
    .local v8, "success":Z
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3796
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 3797
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v4, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3800
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 3801
    .local v10, "type":I
    const/4 v12, 0x2

    if-ne v10, v12, :cond_2

    .line 3802
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 3803
    .local v9, "tag":Ljava/lang/String;
    const-string/jumbo v12, "p"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3804
    const-string/jumbo v12, "att"

    const/4 v13, 0x0

    invoke-interface {v4, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3805
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 3806
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3810
    .end local v9    # "tag":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x1

    if-ne v10, v12, :cond_1

    .line 3811
    const/4 v8, 0x1

    .line 3816
    if-eqz v7, :cond_5

    .line 3817
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3818
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .end local v10    # "type":I
    :goto_0
    const/4 v6, 0x0

    .line 3824
    :cond_3
    :goto_1
    sget-boolean v12, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v12, :cond_4

    .line 3825
    const-string/jumbo v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[FO]loadStateLocked():path="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " date size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    :cond_4
    if-eqz v8, :cond_7

    .line 3827
    return-object v5

    .line 3820
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "type":I
    :catch_0
    move-exception v0

    .line 3821
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 3812
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "type":I
    .local v6, "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 3813
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[FO]loadStateLocked():path="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "  --> failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3816
    if-eqz v6, :cond_3

    .line 3817
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 3820
    :catch_2
    move-exception v0

    .line 3821
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3814
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 3816
    :goto_3
    if-eqz v6, :cond_6

    .line 3817
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3818
    const/4 v6, 0x0

    .line 3814
    :cond_6
    :goto_4
    throw v12

    .line 3820
    :catch_3
    move-exception v0

    .line 3821
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3829
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    sget-boolean v12, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v12, :cond_8

    .line 3830
    const-string/jumbo v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[FO]loadStateLocked(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " file failed parsing!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    :cond_8
    return-object v2

    .line 3814
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 3812
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 15
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
    const/4 v14, 0x0

    .line 3686
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "loadXmlLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3687
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3688
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 3689
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[FO]loadXmlLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " file don\'t exist!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3690
    return-object v14

    .line 3692
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3693
    .local v5, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 3694
    .local v6, "stream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 3696
    .local v8, "success":Z
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3697
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 3698
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v4, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3701
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 3702
    .local v10, "type":I
    const/4 v12, 0x2

    if-ne v10, v12, :cond_2

    .line 3703
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 3704
    .local v9, "tag":Ljava/lang/String;
    const-string/jumbo v12, "item"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3705
    const-string/jumbo v12, "name"

    const/4 v13, 0x0

    invoke-interface {v4, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3708
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 3709
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    .line 3712
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v5, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3716
    .end local v3    # "name":Ljava/lang/String;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x1

    if-ne v10, v12, :cond_1

    .line 3717
    const/4 v8, 0x1

    .line 3722
    if-eqz v7, :cond_3

    .line 3723
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move-object v6, v7

    .line 3730
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .end local v10    # "type":I
    :cond_4
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[FO]loadXmlLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " data size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3731
    if-eqz v8, :cond_6

    .line 3732
    return-object v5

    .line 3725
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "type":I
    :catch_0
    move-exception v0

    .line 3726
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3718
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .end local v10    # "type":I
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 3719
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[FO]loadXmlLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  --> failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3722
    if-eqz v6, :cond_4

    .line 3723
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 3725
    :catch_2
    move-exception v0

    .line 3726
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3720
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 3722
    :goto_3
    if-eqz v6, :cond_5

    .line 3723
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3720
    :cond_5
    :goto_4
    throw v12

    .line 3725
    :catch_3
    move-exception v0

    .line 3726
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3735
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[FO]loadXmlLocked(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " file failed parsing!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3736
    return-object v14

    .line 3720
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 3718
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 4027
    const-string/jumbo v0, "OnePlusProcessManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    return-void
.end method

.method private parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "uids"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2297
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 2298
    const-string/jumbo v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseActiveAudioPidsStr():pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 2300
    :cond_1
    return-object v4

    .line 2303
    :cond_2
    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2304
    return-object v4

    .line 2307
    :cond_3
    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2308
    .local v0, "uid":[Ljava/lang/String;
    return-object v0
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
    .line 3934
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3935
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3936
    .local v0, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3933
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private registerSimReceiver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4203
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 4204
    const-string/jumbo v1, "OnePlusProcessManager"

    const-string/jumbo v2, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4205
    return-void

    .line 4207
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 4208
    const-string/jumbo v1, "OnePlusProcessManager"

    const-string/jumbo v2, "registerSimReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    :cond_1
    const-string/jumbo v1, "persist.sys.cgroup.flags"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 4210
    const-string/jumbo v1, "persist.sys.oem.region"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mRegion:Ljava/lang/String;

    .line 4211
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mRegion:Ljava/lang/String;

    const-string/jumbo v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4212
    sget v1, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 4213
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->responseSIMStateChanged()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4214
    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->updateDozePolicyToDB(Z)V

    .line 4215
    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4216
    const-string/jumbo v1, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v1, v3}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 4217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4218
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4219
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4202
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    :goto_0
    return-void

    .line 4223
    :cond_3
    sget v1, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 4224
    sget v1, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 4225
    const-string/jumbo v1, "persist.sys.cgroup.flags"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static removeDozeWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1898
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_1

    .line 1900
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 1901
    const-string/jumbo v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeDozeWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p0}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    :goto_0
    return-void

    .line 1903
    :catch_0
    move-exception v0

    .line 1904
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OnePlusProcessManager"

    const-string/jumbo v2, "Falied to add package to doze whitelist"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1907
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "OnePlusProcessManager"

    const-string/jumbo v2, "Cannot get DeviceIdleController"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeTempWhiteList()V
    .locals 3

    .prologue
    .line 1591
    const-string/jumbo v1, ""

    .line 1592
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1593
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "packageName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1594
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->removeDozeWhiteList(Ljava/lang/String;)V

    .line 1592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1596
    :cond_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1590
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 18
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 4047
    if-nez p1, :cond_0

    .line 4048
    return-void

    .line 4051
    :cond_0
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v8, v14, :cond_3

    .line 4052
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 4053
    .local v10, "json":Lorg/json/JSONObject;
    const-string/jumbo v14, "name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "black_alarm"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 4054
    const-string/jumbo v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 4055
    .local v2, "blackbrdArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    monitor-enter v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4056
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 4057
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v7, v14, :cond_1

    .line 4058
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4059
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4057
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    monitor-exit v15

    .line 4062
    const-string/jumbo v14, "OnePlusProcessManager"

    const-string/jumbo v15, "[OnlineConfig] update blackbrdlist success"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    const-string/jumbo v15, "/data/data_bpm/black_alarm.xml"

    invoke-static {v14, v15}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z

    .line 4065
    .end local v2    # "blackbrdArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :cond_2
    const-string/jumbo v14, "name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "black_gps"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 4066
    const-string/jumbo v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 4067
    .local v1, "blackGpsArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 4068
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    monitor-enter v15
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4069
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v7, v14, :cond_4

    .line 4070
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4071
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4069
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 4055
    .end local v1    # "blackGpsArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .restart local v2    # "blackbrdArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v14

    :try_start_4
    monitor-exit v15

    throw v14
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4158
    .end local v2    # "blackbrdArray":Lorg/json/JSONArray;
    .end local v10    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 4159
    .local v6, "e":Lorg/json/JSONException;
    const-string/jumbo v14, "OnePlusProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_3
    return-void

    .restart local v1    # "blackGpsArray":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    .restart local v10    # "json":Lorg/json/JSONObject;
    :cond_4
    :try_start_5
    monitor-exit v15

    .line 4074
    const-string/jumbo v14, "OnePlusProcessManager"

    const-string/jumbo v15, "[OnlineConfig] update blackgpslist success"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4075
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    const-string/jumbo v15, "/data/data_bpm/black_gps.xml"

    invoke-static {v14, v15}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z

    .line 4077
    .end local v1    # "blackGpsArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :cond_5
    const-string/jumbo v14, "name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "cfg"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 4078
    const-string/jumbo v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 4079
    .local v4, "cfgArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 4080
    const-string/jumbo v13, ""

    .line 4081
    .local v13, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    monitor-enter v15
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 4082
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v7, v14, :cond_9

    .line 4083
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v16, "itemname"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4084
    const-string/jumbo v16, "forceSwitch"

    .line 4083
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 4085
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v16, "itemvalue"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4086
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    const-string/jumbo v16, "forceSwitch"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4087
    const-string/jumbo v14, "OnePlusProcessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "forceSwitch = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    const-string/jumbo v14, "off"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 4089
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4090
    const-string/jumbo v14, "/data/data_bpm/bpm_sts.xml"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 4093
    :cond_6
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v16, "itemname"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v16, "version"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 4094
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v16, "itemvalue"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4095
    .local v9, "itemvalue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    const-string/jumbo v16, "version"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4096
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 4097
    .local v5, "cfgVersion":Ljava/lang/Integer;
    const-string/jumbo v14, "OnePlusProcessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "cfgVersion = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget v16, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    move/from16 v0, v16

    if-le v14, v0, :cond_7

    .line 4099
    const-string/jumbo v14, "off"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 4100
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4101
    const-string/jumbo v14, "/data/data_bpm/bpm_sts.xml"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4082
    .end local v5    # "cfgVersion":Ljava/lang/Integer;
    .end local v9    # "itemvalue":Ljava/lang/String;
    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 4068
    .end local v4    # "cfgArray":Lorg/json/JSONArray;
    .end local v13    # "value":Ljava/lang/String;
    .restart local v1    # "blackGpsArray":Lorg/json/JSONArray;
    :catchall_1
    move-exception v14

    :try_start_7
    monitor-exit v15

    throw v14
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    .line 4102
    .end local v1    # "blackGpsArray":Lorg/json/JSONArray;
    .restart local v4    # "cfgArray":Lorg/json/JSONArray;
    .restart local v5    # "cfgVersion":Ljava/lang/Integer;
    .restart local v9    # "itemvalue":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :cond_8
    :try_start_8
    const-string/jumbo v14, "on"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 4103
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4104
    const-string/jumbo v14, "/data/data_bpm/bpm_sts.xml"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    .line 4081
    .end local v5    # "cfgVersion":Ljava/lang/Integer;
    .end local v9    # "itemvalue":Ljava/lang/String;
    :catchall_2
    move-exception v14

    :try_start_9
    monitor-exit v15

    throw v14
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    .line 4109
    :cond_9
    :try_start_a
    const-string/jumbo v14, "/data/data_bpm/cfg.xml"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveXmlLocked(Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 4110
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareConfigStatus()V

    .line 4111
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_a

    .line 4112
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4113
    const-string/jumbo v14, "/data/data_bpm/bpm_sts.xml"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_a
    :try_start_b
    monitor-exit v15

    .line 4116
    const-string/jumbo v14, "OnePlusProcessManager"

    const-string/jumbo v15, "[OnlineConfig] update cfg success"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    .end local v4    # "cfgArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v13    # "value":Ljava/lang/String;
    :cond_b
    const-string/jumbo v14, "name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "black_brd"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 4119
    const-string/jumbo v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4120
    .local v3, "brdArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    monitor-enter v15
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    .line 4121
    :try_start_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 4122
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v7, v14, :cond_c

    .line 4123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 4122
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    :try_start_d
    monitor-exit v15

    .line 4127
    const-string/jumbo v14, "OnePlusProcessManager"

    const-string/jumbo v15, "[OnlineConfig] update brdlist success"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4128
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    const-string/jumbo v15, "/data/data_bpm/black_brd.xml"

    invoke-static {v14, v15}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z

    .line 4130
    .end local v3    # "brdArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :cond_d
    const-string/jumbo v14, "name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "brd"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 4131
    const-string/jumbo v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4132
    .restart local v3    # "brdArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 4133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    monitor-enter v15
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    .line 4134
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_6
    :try_start_e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v7, v14, :cond_e

    .line 4135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 4134
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 4120
    .end local v7    # "i":I
    :catchall_3
    move-exception v14

    :try_start_f
    monitor-exit v15

    throw v14

    .restart local v7    # "i":I
    :cond_e
    monitor-exit v15

    .line 4139
    const-string/jumbo v14, "OnePlusProcessManager"

    const-string/jumbo v15, "[OnlineConfig] update mBrdList success"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    const-string/jumbo v15, "/data/data_bpm/brd.xml"

    invoke-static {v14, v15}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z

    .line 4142
    .end local v3    # "brdArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :cond_f
    const-string/jumbo v14, "name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "pkg"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 4143
    const-string/jumbo v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 4144
    .local v12, "pkgArray":Lorg/json/JSONArray;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4145
    .local v11, "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v11, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4146
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    monitor-enter v15
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0

    .line 4147
    :try_start_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 4148
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_7
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v7, v14, :cond_10

    .line 4149
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 4148
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 4133
    .end local v11    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "pkgArray":Lorg/json/JSONArray;
    .restart local v3    # "brdArray":Lorg/json/JSONArray;
    :catchall_4
    move-exception v14

    :try_start_11
    monitor-exit v15

    throw v14

    .end local v3    # "brdArray":Lorg/json/JSONArray;
    .restart local v11    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "pkgArray":Lorg/json/JSONArray;
    :cond_10
    monitor-exit v15

    .line 4153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/android/server/am/OnePlusProcessManager;->handlePackageForPackageChange(Ljava/util/List;Ljava/util/List;)V

    .line 4154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    const-string/jumbo v15, "/data/data_bpm/pkg.xml"

    invoke-static {v14, v15}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z

    .line 4155
    const-string/jumbo v14, "OnePlusProcessManager"

    const-string/jumbo v15, "[OnlineConfig] update pkglist success"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    .end local v7    # "i":I
    .end local v11    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "pkgArray":Lorg/json/JSONArray;
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 4146
    .restart local v11    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "pkgArray":Lorg/json/JSONArray;
    :catchall_5
    move-exception v14

    monitor-exit v15

    throw v14
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0
.end method

.method private responseSIMStateChanged()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4231
    sget v2, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4232
    return v4

    .line 4234
    :cond_0
    const/4 v1, 0x0

    .line 4236
    .local v1, "ret":Z
    const-string/jumbo v2, "gsm.sim.operator.iso-country"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4237
    .local v0, "mccCountry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 4238
    const-string/jumbo v2, "in"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4243
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4244
    const-string/jumbo v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 4249
    :goto_0
    const/4 v1, 0x1

    .line 4250
    sget v2, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    or-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 4251
    const-string/jumbo v2, "persist.sys.cgroup.flags"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4254
    :cond_2
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    .line 4255
    :cond_3
    const-string/jumbo v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseSIMStateChanged # mccCountry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    :cond_4
    return v1

    .line 4246
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4247
    const-string/jumbo v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public static resumeAllProcess(Ljava/lang/String;)V
    .locals 1
    .param p0, "why"    # Ljava/lang/String;

    .prologue
    .line 2976
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 2977
    return-void

    .line 2979
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 2980
    return-void

    .line 2982
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 2983
    return-void

    .line 2985
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_3

    .line 2986
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcessLock(Ljava/lang/String;)V

    .line 2975
    :cond_3
    return-void
.end method

.method public static final resumeProcessByUID_out(ILjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;

    .prologue
    .line 3418
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3419
    return-void

    .line 3421
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3422
    return-void

    .line 3424
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;Z)V

    .line 3417
    return-void
.end method

.method public static final resumeProcessByUID_out(ILjava/lang/String;Z)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;
    .param p2, "isResumeTop"    # Z

    .prologue
    .line 3428
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3429
    return-void

    .line 3431
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3432
    return-void

    .line 3434
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3435
    return-void

    .line 3437
    :cond_2
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3438
    return-void

    .line 3444
    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3427
    return-void
.end method

.method public static final resumeProcessByUID_out_Delay(ILjava/lang/String;I)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;
    .param p2, "suspendDelayTime"    # I

    .prologue
    .line 3466
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3467
    return-void

    .line 3469
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3470
    return-void

    .line 3472
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3473
    return-void

    .line 3475
    :cond_2
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3476
    return-void

    .line 3482
    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;I)Z

    .line 3465
    return-void
.end method

.method private resumeRelateProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3051
    if-nez p1, :cond_0

    .line 3052
    return-void

    .line 3054
    :cond_0
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_1

    .line 3055
    return-void

    .line 3057
    :cond_1
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 3058
    const/4 v3, 0x0

    .line 3059
    .local v3, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v3    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v5, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3060
    const/4 v3, 0x0

    .line 3062
    .restart local v3    # "cr":Lcom/android/server/am/ConnectionRecord;
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cr":Lcom/android/server/am/ConnectionRecord;
    check-cast v3, Lcom/android/server/am/ConnectionRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3066
    .local v3, "cr":Lcom/android/server/am/ConnectionRecord;
    if-eqz v3, :cond_2

    .line 3069
    iget-object v6, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v6, :cond_2

    .line 3070
    iget-object v6, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_2

    .line 3071
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v6, v7, :cond_2

    .line 3072
    iget-object v6, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v7, "resumeRelateProcess connection"

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    goto :goto_0

    .line 3063
    .end local v3    # "cr":Lcom/android/server/am/ConnectionRecord;
    :catch_0
    move-exception v4

    .line 3077
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_3
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 3078
    const/4 v1, 0x0

    .line 3079
    .local v1, "cc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3081
    .local v2, "contentClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderConnection;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v1    # "cc":Lcom/android/server/am/ContentProviderConnection;
    .restart local v5    # "it":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3082
    const/4 v1, 0x0

    .line 3084
    .restart local v1    # "cc":Lcom/android/server/am/ContentProviderConnection;
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cc":Lcom/android/server/am/ContentProviderConnection;
    check-cast v1, Lcom/android/server/am/ContentProviderConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3088
    .local v1, "cc":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v1, :cond_4

    .line 3091
    iget-object v6, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_4

    .line 3092
    iget-object v6, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v6, v7, :cond_4

    .line 3093
    iget-object v6, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v7, "resumeRelateProcess conProviders"

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    goto :goto_1

    .line 3085
    .end local v1    # "cc":Lcom/android/server/am/ContentProviderConnection;
    :catch_1
    move-exception v4

    .line 3100
    .end local v2    # "contentClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderConnection;>;"
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_5
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v6, :cond_6

    .line 3101
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_6

    .line 3102
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3103
    .local v0, "adjustApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_6

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v6, v7, :cond_6

    .line 3104
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v7, "resumeRelateProcess adjSource"

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3050
    .end local v0    # "adjustApp":Lcom/android/server/am/ProcessRecord;
    :cond_6
    return-void
.end method

.method private resumeRelateUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 1094
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mProcess:Ljava/lang/Object;

    monitor-enter v3

    .line 1095
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v2, p1}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1096
    .local v1, "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    monitor-exit v3

    .line 1097
    return-void

    .line 1099
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1100
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-direct {v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->resumeRelateProcess(Lcom/android/server/am/ProcessRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1099
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3

    .line 1093
    return-void

    .line 1094
    .end local v0    # "i":I
    .end local v1    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static saveBpmStsLocked(Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "sts"    # Z

    .prologue
    const/4 v8, 0x1

    .line 3835
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 3836
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveBpmStsLocked():path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3837
    :cond_0
    const-string/jumbo v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3838
    .local v1, "endLine":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3840
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3842
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 3843
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3844
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3845
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3846
    const-string/jumbo v5, "gs"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3847
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3849
    const-string/jumbo v5, "p"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3850
    const-string/jumbo v6, "att"

    if-eqz p1, :cond_2

    const-string/jumbo v5, "true"

    :goto_0
    const/4 v7, 0x0

    invoke-interface {v2, v7, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3851
    const-string/jumbo v5, "p"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3852
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3854
    const-string/jumbo v5, "gs"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3855
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3856
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3863
    if-eqz v4, :cond_1

    .line 3864
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3857
    :cond_1
    :goto_1
    return v8

    .line 3850
    :cond_2
    :try_start_3
    const-string/jumbo v5, "false"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 3866
    :catch_0
    move-exception v0

    .line 3867
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3858
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 3859
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to write state: "

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

    .line 3860
    const/4 v5, 0x0

    .line 3863
    if-eqz v3, :cond_3

    .line 3864
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 3860
    :cond_3
    :goto_3
    return v5

    .line 3866
    :catch_2
    move-exception v0

    .line 3867
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3861
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 3863
    :goto_4
    if-eqz v3, :cond_4

    .line 3864
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3861
    :cond_4
    :goto_5
    throw v5

    .line 3866
    :catch_3
    move-exception v0

    .line 3867
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 3861
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .local v3, "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 3858
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
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

    .line 3873
    const/4 v5, 0x0

    .line 3874
    .local v5, "stream":Ljava/io/FileOutputStream;
    const-string/jumbo v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3876
    .local v1, "endLine":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3878
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 3879
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3880
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3881
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3882
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3883
    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3884
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3885
    .local v4, "pkg":Ljava/lang/String;
    const-string/jumbo v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saved pkg is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3886
    if-eqz v4, :cond_0

    .line 3887
    const-string/jumbo v7, "p"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3888
    const-string/jumbo v7, "att"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3889
    const-string/jumbo v7, "p"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3890
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 3895
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v5, v6

    .line 3896
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to write state: "

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

    .line 3900
    if-eqz v5, :cond_1

    .line 3901
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3897
    :cond_1
    :goto_2
    return v10

    .line 3893
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "iterator":Ljava/util/Iterator;
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3894
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3900
    if-eqz v6, :cond_3

    .line 3901
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3907
    :cond_3
    :goto_3
    return v10

    .line 3903
    :catch_1
    move-exception v0

    .line 3904
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3903
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 3904
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3898
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 3900
    :goto_4
    if-eqz v5, :cond_4

    .line 3901
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3898
    :cond_4
    :goto_5
    throw v7

    .line 3903
    :catch_3
    move-exception v0

    .line 3904
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 3898
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .local v5, "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 3895
    .local v5, "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
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
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3740
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveXmlLocked():path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3741
    if-nez p1, :cond_0

    .line 3742
    return v10

    .line 3745
    :cond_0
    const-string/jumbo v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3746
    .local v1, "endLine":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3748
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3750
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 3751
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3752
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3753
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3754
    const-string/jumbo v7, "cfg"

    const/4 v8, 0x0

    invoke-interface {v2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3755
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3757
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ss$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3758
    .local v3, "ss":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "item"

    const/4 v8, 0x0

    invoke-interface {v2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3759
    const-string/jumbo v8, "name"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v2, v9, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3761
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3762
    const-string/jumbo v7, "item"

    const/4 v8, 0x0

    invoke-interface {v2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3763
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 3770
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "ss":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "ss$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v5, v6

    .line 3771
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to write state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3775
    if-eqz v5, :cond_1

    .line 3776
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3772
    :cond_1
    :goto_2
    return v10

    .line 3766
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "ss$iterator":Ljava/util/Iterator;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    const-string/jumbo v7, "cfg"

    const/4 v8, 0x0

    invoke-interface {v2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3767
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3768
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3775
    if-eqz v6, :cond_3

    .line 3776
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3769
    :cond_3
    :goto_3
    return v11

    .line 3778
    :catch_1
    move-exception v0

    .line 3779
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3778
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "ss$iterator":Ljava/util/Iterator;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 3779
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3773
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 3775
    :goto_4
    if-eqz v5, :cond_4

    .line 3776
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3773
    :cond_4
    :goto_5
    throw v7

    .line 3778
    :catch_3
    move-exception v0

    .line 3779
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 3773
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .local v5, "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 3770
    .local v5, "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private scheduleForegroundChangeMessage(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1722
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1723
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x77

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1724
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1725
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1721
    return-void
.end method

.method private scheduleResumeMessage(IJLjava/lang/String;I)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "delay"    # J
    .param p4, "why"    # Ljava/lang/String;
    .param p5, "suspendTime"    # I

    .prologue
    .line 2059
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v2

    .line 2060
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2062
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2063
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, -0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2064
    iput p5, v0, Landroid/os/Message;->arg1:I

    .line 2065
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 2066
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2067
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2058
    return-void

    .line 2059
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private scheduleResumeUid(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;

    .prologue
    .line 2894
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private scheduleResumeUid(ILjava/lang/String;I)Z
    .locals 9
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;
    .param p3, "suspendDelayTime"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 2898
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_0

    .line 2899
    return v3

    .line 2904
    :cond_0
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_1

    .line 2905
    return v3

    .line 2907
    :cond_1
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    if-ne v0, p1, :cond_3

    const/4 v6, 0x1

    .line 2909
    .local v6, "mPendingFrozen":Z
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v6, :cond_6

    .line 2910
    :cond_2
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mMessageLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2911
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    add-int/lit16 v1, p1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2912
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    add-int/lit16 v1, p1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit v7

    .line 2913
    return v8

    .line 2907
    .end local v6    # "mPendingFrozen":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "mPendingFrozen":Z
    goto :goto_0

    .line 2915
    :cond_4
    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeMessage(IJLjava/lang/String;I)V

    .line 2917
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2918
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1, v1}, Landroid/os/Binder;->setBlockUid(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v7

    .line 2921
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    .line 2922
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleResumeUid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " why = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    :cond_5
    return v8

    .line 2917
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2910
    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0

    .line 2925
    :cond_6
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 2926
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleResumeUid -> adjustSuspendMessage for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " delay code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    :cond_7
    const/4 v0, 0x2

    if-ne p3, v0, :cond_8

    .line 2928
    const-wide/16 v0, 0x4e20

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->adjustSuspendMessage(ILjava/lang/String;J)V

    .line 2933
    :goto_1
    return v3

    .line 2930
    :cond_8
    sget-wide v0, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->adjustSuspendMessage(ILjava/lang/String;J)V

    goto :goto_1
.end method

.method private scheduleSuspendUid(IJ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .prologue
    .line 2039
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    monitor-enter v2

    .line 2040
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2041
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2042
    const-string/jumbo v1, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleSuspendUid not suspend FG Uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2044
    return-void

    :cond_1
    monitor-exit v2

    .line 2049
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2050
    const-string/jumbo v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleSuspendUid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " delay= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2053
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, -0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2054
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2055
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2038
    return-void

    .line 2039
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static sendSignal(II)V
    .locals 0
    .param p0, "pid"    # I
    .param p1, "sigNo"    # I

    .prologue
    .line 825
    invoke-static {p0, p1}, Landroid/os/Process;->sendSignal(II)V

    .line 824
    return-void
.end method

.method private setCGroupStateLocked(IZ)Z
    .locals 20
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .prologue
    .line 530
    const/4 v10, 0x0

    .line 531
    .local v10, "indexCanUids":I
    const/4 v2, 0x0

    .line 532
    .local v2, "canUid":Ljava/lang/Integer;
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    monitor-enter v17

    .line 533
    :try_start_0
    sget-object v16, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 534
    if-ltz v10, :cond_2

    .line 535
    sget-object v16, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "canUid":Ljava/lang/Integer;
    :goto_0
    monitor-exit v17

    .line 542
    const/16 v16, 0x2710

    move/from16 v0, p1

    move/from16 v1, v16

    if-lt v0, v1, :cond_1c

    .line 543
    const/4 v3, 0x0

    .line 545
    .local v3, "cgroupout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "/sys/fs/cgroup/freezer/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/freezer.state"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 546
    .local v12, "mCgroupFreezerstate":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_3

    .line 548
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    .line 549
    .local v13, "pf":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    .line 550
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 552
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 553
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_3

    .line 554
    const-string/jumbo v16, "OnePlusProcessManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Exception : file not exists : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_13

    .line 555
    const/16 v16, 0x0

    .line 653
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v17

    .line 654
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit v17

    .line 555
    return v16

    .line 537
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v7    # "f":Ljava/io/File;
    .end local v12    # "mCgroupFreezerstate":Ljava/lang/String;
    .end local v13    # "pf":Ljava/io/File;
    .local v2, "canUid":Ljava/lang/Integer;
    :cond_2
    :try_start_3
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 538
    .local v2, "canUid":Ljava/lang/Integer;
    sget-object v16, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 532
    .end local v2    # "canUid":Ljava/lang/Integer;
    :catchall_0
    move-exception v16

    monitor-exit v17

    throw v16

    .line 653
    .restart local v2    # "canUid":Ljava/lang/Integer;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v7    # "f":Ljava/io/File;
    .restart local v12    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v13    # "pf":Ljava/io/File;
    :catchall_1
    move-exception v16

    monitor-exit v17

    throw v16

    .line 558
    .end local v13    # "pf":Ljava/io/File;
    :cond_3
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_13

    .line 561
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .local v4, "cgroupout":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_16

    .line 562
    const/4 v9, 0x0

    .line 563
    .local v9, "index":I
    const/4 v11, 0x0

    .line 564
    .local v11, "isAdjustUid":Z
    :try_start_5
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v17
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 565
    :try_start_6
    sget-object v18, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 566
    :try_start_7
    sget-object v16, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v11

    .local v11, "isAdjustUid":Z
    :try_start_8
    monitor-exit v18

    .line 568
    if-nez v11, :cond_a

    .line 569
    sget-object v16, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 570
    if-gez v9, :cond_4

    .line 571
    sget-object v16, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/os/Binder;->setBlockUid(IZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_4
    :try_start_9
    monitor-exit v17

    .line 581
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v17
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 582
    :try_start_a
    sget-object v16, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 583
    sget-object v18, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 584
    :try_start_b
    sget-object v16, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 585
    if-ltz v9, :cond_5

    .line 586
    sget-object v16, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 587
    const/16 v16, 0x0

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/os/Binder;->setBlockUid(IZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :cond_5
    :try_start_c
    monitor-exit v18

    .line 590
    sget-boolean v16, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v16, :cond_6

    .line 591
    const-string/jumbo v16, "OnePlusProcessManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setCGroupStateLocked: skip to freeze "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " due to mAdjustUids"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_6
    :try_start_d
    monitor-exit v17
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 592
    const/16 v16, 0x0

    .line 653
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v17

    .line 654
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :cond_7
    monitor-exit v17

    .line 659
    if-eqz v4, :cond_1e

    .line 660
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 661
    const/4 v3, 0x0

    .line 592
    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    :goto_1
    return v16

    .line 565
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .local v11, "isAdjustUid":Z
    :catchall_2
    move-exception v16

    :try_start_10
    monitor-exit v18

    throw v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 564
    .end local v11    # "isAdjustUid":Z
    :catchall_3
    move-exception v16

    :try_start_11
    monitor-exit v17

    throw v16
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 648
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/io/IOException;
    move-object v3, v4

    .line 649
    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v7    # "f":Ljava/io/File;
    .end local v9    # "index":I
    .end local v12    # "mCgroupFreezerstate":Ljava/lang/String;
    :goto_2
    :try_start_12
    const-string/jumbo v16, "OnePlusProcessManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "IOException -->  setCGroupStateLocked():"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_13

    .line 651
    const/16 v16, 0x0

    .line 653
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v17

    .line 654
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    :cond_8
    monitor-exit v17

    .line 659
    if-eqz v3, :cond_9

    .line 660
    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4

    .line 661
    const/4 v3, 0x0

    .line 651
    :cond_9
    :goto_3
    return v16

    .line 575
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v7    # "f":Ljava/io/File;
    .restart local v9    # "index":I
    .local v11, "isAdjustUid":Z
    .restart local v12    # "mCgroupFreezerstate":Ljava/lang/String;
    :cond_a
    :try_start_15
    sget-boolean v16, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v16, :cond_b

    .line 576
    const-string/jumbo v16, "OnePlusProcessManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setCGroupStateLocked: skip to freeze "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " due to mAdjustUids"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :cond_b
    :try_start_16
    monitor-exit v17
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 577
    const/16 v16, 0x0

    .line 653
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v17

    .line 654
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :cond_c
    monitor-exit v17

    .line 659
    if-eqz v4, :cond_1f

    .line 660
    :try_start_18
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1

    .line 661
    const/4 v3, 0x0

    .line 577
    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    :goto_4
    return v16

    .line 653
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v16

    monitor-exit v17

    throw v16

    .line 663
    :catch_1
    move-exception v5

    .line 664
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v17, "OnePlusProcessManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .local v3, "cgroupout":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 583
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v16

    :try_start_19
    monitor-exit v18

    throw v16
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 581
    :catchall_6
    move-exception v16

    :try_start_1a
    monitor-exit v17

    throw v16
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 652
    .end local v11    # "isAdjustUid":Z
    :catchall_7
    move-exception v16

    move-object v3, v4

    .line 653
    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v7    # "f":Ljava/io/File;
    .end local v9    # "index":I
    .end local v12    # "mCgroupFreezerstate":Ljava/lang/String;
    :goto_5
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v17

    .line 654
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_12

    :cond_d
    monitor-exit v17

    .line 659
    if-eqz v3, :cond_e

    .line 660
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_5

    .line 661
    const/4 v3, 0x0

    .line 652
    :cond_e
    :goto_6
    throw v16

    .line 653
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v7    # "f":Ljava/io/File;
    .restart local v9    # "index":I
    .restart local v11    # "isAdjustUid":Z
    .restart local v12    # "mCgroupFreezerstate":Ljava/lang/String;
    :catchall_8
    move-exception v16

    monitor-exit v17

    throw v16

    .line 663
    :catch_2
    move-exception v5

    .line 664
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v17, "OnePlusProcessManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    :cond_f
    :try_start_1d
    monitor-exit v17

    .line 595
    if-gez v9, :cond_13

    .line 596
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v17
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 597
    :try_start_1e
    sget-boolean v16, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v16, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    move-result v16

    if-eqz v16, :cond_15

    :cond_10
    :goto_7
    :try_start_1f
    monitor-exit v17

    .line 601
    if-eqz v2, :cond_13

    .line 602
    monitor-enter v2
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 603
    :try_start_20
    const-string/jumbo v8, "FROZEN"

    .line 604
    .local v8, "freeze":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 605
    .local v14, "statebuffer":[B
    invoke-virtual {v4, v14}, Ljava/io/FileOutputStream;->write([B)V

    .line 607
    sget-boolean v16, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v16, :cond_11

    .line 608
    const-string/jumbo v16, "OnePlusProcessManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "setCGroupStateLocked "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " FROZEN"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_11
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v17
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    .line 610
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    :cond_12
    :try_start_22
    monitor-exit v17
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    :try_start_23
    monitor-exit v2
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    .line 647
    .end local v8    # "freeze":Ljava/lang/String;
    .end local v11    # "isAdjustUid":Z
    .end local v14    # "statebuffer":[B
    :cond_13
    :goto_8
    const/16 v16, 0x1

    .line 653
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v17

    .line 654
    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    :cond_14
    monitor-exit v17

    .line 659
    if-eqz v4, :cond_1d

    .line 660
    :try_start_25
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_3

    .line 661
    const/4 v3, 0x0

    .line 647
    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    :goto_9
    return v16

    .line 598
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v11    # "isAdjustUid":Z
    :cond_15
    :try_start_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    goto :goto_7

    .line 596
    :catchall_9
    move-exception v16

    :try_start_27
    monitor-exit v17

    throw v16
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    .line 609
    .restart local v8    # "freeze":Ljava/lang/String;
    .restart local v14    # "statebuffer":[B
    :catchall_a
    move-exception v16

    :try_start_28
    monitor-exit v17

    throw v16
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    .line 602
    .end local v8    # "freeze":Ljava/lang/String;
    .end local v14    # "statebuffer":[B
    :catchall_b
    move-exception v16

    :try_start_29
    monitor-exit v2

    throw v16

    .line 618
    .end local v9    # "index":I
    .end local v11    # "isAdjustUid":Z
    :cond_16
    const/4 v9, 0x0

    .line 619
    .restart local v9    # "index":I
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v17
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    .line 620
    :try_start_2a
    sget-object v16, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 621
    if-ltz v9, :cond_17

    .line 622
    sget-object v16, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 623
    const/16 v16, 0x0

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/os/Binder;->setBlockUid(IZ)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    :cond_17
    :try_start_2b
    monitor-exit v17

    .line 626
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v17
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_0
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    .line 627
    :try_start_2c
    sget-boolean v16, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v16, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_d

    move-result v16

    if-eqz v16, :cond_1b

    :cond_18
    :goto_a
    :try_start_2d
    monitor-exit v17

    .line 631
    if-eqz v2, :cond_13

    .line 632
    monitor-enter v2
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_0
    .catchall {:try_start_2d .. :try_end_2d} :catchall_7

    .line 633
    :try_start_2e
    const-string/jumbo v15, "THAWED"

    .line 634
    .local v15, "thawed":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 635
    .restart local v14    # "statebuffer":[B
    invoke-virtual {v4, v14}, Ljava/io/FileOutputStream;->write([B)V

    .line 637
    sget-boolean v16, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v16, :cond_19

    .line 638
    const-string/jumbo v16, "OnePlusProcessManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "setCGroupStateLocked "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " THAWED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_19
    sget-object v17, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v17
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_f

    .line 640
    :try_start_2f
    sget-boolean v16, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v16, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    :cond_1a
    :try_start_30
    monitor-exit v17
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_f

    :try_start_31
    monitor-exit v2

    goto/16 :goto_8

    .line 619
    .end local v14    # "statebuffer":[B
    .end local v15    # "thawed":Ljava/lang/String;
    :catchall_c
    move-exception v16

    monitor-exit v17

    throw v16
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_0
    .catchall {:try_start_31 .. :try_end_31} :catchall_7

    .line 628
    :cond_1b
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_d

    goto :goto_a

    .line 626
    :catchall_d
    move-exception v16

    :try_start_33
    monitor-exit v17

    throw v16
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_0
    .catchall {:try_start_33 .. :try_end_33} :catchall_7

    .line 639
    .restart local v14    # "statebuffer":[B
    .restart local v15    # "thawed":Ljava/lang/String;
    :catchall_e
    move-exception v16

    :try_start_34
    monitor-exit v17

    throw v16
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_f

    .line 632
    .end local v14    # "statebuffer":[B
    .end local v15    # "thawed":Ljava/lang/String;
    :catchall_f
    move-exception v16

    :try_start_35
    monitor-exit v2

    throw v16
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_0
    .catchall {:try_start_35 .. :try_end_35} :catchall_7

    .line 653
    :catchall_10
    move-exception v16

    monitor-exit v17

    throw v16

    .line 663
    :catch_3
    move-exception v5

    .line 664
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v17, "OnePlusProcessManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .line 653
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "f":Ljava/io/File;
    .end local v9    # "index":I
    .end local v12    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v6    # "ex":Ljava/io/IOException;
    :catchall_11
    move-exception v16

    monitor-exit v17

    throw v16

    .line 663
    :catch_4
    move-exception v5

    .line 664
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v17, "OnePlusProcessManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 653
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_12
    move-exception v16

    monitor-exit v17

    throw v16

    .line 663
    :catch_5
    move-exception v5

    .line 664
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v17, "OnePlusProcessManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 669
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1c
    const/16 v16, 0x1

    return v16

    .line 652
    :catchall_13
    move-exception v16

    goto/16 :goto_5

    .line 648
    .local v3, "cgroupout":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    goto/16 :goto_2

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v7    # "f":Ljava/io/File;
    .restart local v9    # "index":I
    .restart local v12    # "mCgroupFreezerstate":Ljava/lang/String;
    :cond_1d
    move-object v3, v4

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .local v3, "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v11    # "isAdjustUid":Z
    :cond_1e
    move-object v3, v4

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    :cond_1f
    move-object v3, v4

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method public static setCurrentInputMethod(Landroid/content/pm/ServiceInfo;)V
    .locals 1
    .param p0, "si"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 2259
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->sInputMethodUid:I

    .line 2258
    return-void
.end method

.method public static setScreenState(Z)Z
    .locals 2
    .param p0, "screenState"    # Z

    .prologue
    .line 3005
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3006
    :try_start_0
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3008
    const/4 v0, 0x1

    return v0

    .line 3005
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static final skipBroadcast(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 6
    .param p0, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "ordered"    # Z

    .prologue
    const-wide/16 v4, 0x8

    const/4 v2, 0x0

    .line 3577
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 3578
    return v2

    .line 3580
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 3581
    return v2

    .line 3583
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_2

    .line 3584
    return v2

    .line 3586
    :cond_2
    const-string/jumbo v0, "skipBroadcast"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3587
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3588
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_3

    .line 3589
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BPM Denial: receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3590
    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3590
    const-string/jumbo v2, " (pid="

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3590
    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->pid:I

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3590
    const-string/jumbo v2, ", uid="

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3591
    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->uid:I

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3591
    const-string/jumbo v2, ")"

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3591
    const-string/jumbo v2, " due to sender "

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3591
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3592
    const-string/jumbo v2, " (uid "

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3592
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3592
    const-string/jumbo v2, ")"

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3592
    const-string/jumbo v2, " is ordered "

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3592
    iget-boolean v2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3593
    const-string/jumbo v2, " ;  ordered "

    .line 3589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3595
    const/4 v0, 0x1

    return v0

    .line 3597
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3598
    return v2
.end method

.method private skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "ordered"    # Z

    .prologue
    const/16 v5, 0x2710

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3243
    if-nez p1, :cond_0

    .line 3244
    return v7

    .line 3246
    :cond_0
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ge v3, v5, :cond_1

    .line 3247
    return v7

    .line 3249
    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_2

    .line 3250
    return v7

    .line 3252
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_3

    .line 3253
    return v7

    .line 3255
    :cond_3
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 3256
    .local v2, "broadcastAction":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 3257
    const-string/jumbo v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "cn.kuwo.player"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3258
    return v8

    .line 3260
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    monitor-enter v4

    .line 3261
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "action$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3262
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3264
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3266
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkProcessRecord "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for action ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 3267
    return v7

    .line 3269
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v6, 0x10

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    const/4 v5, 0x4

    if-le v3, v5, :cond_7

    .line 3270
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3271
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3278
    :cond_7
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for action ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 3279
    return v7

    .line 3272
    :cond_8
    :try_start_2
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_9

    .line 3273
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skip Broadcast: r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3274
    const-string/jumbo v6, "; app="

    .line 3273
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    monitor-exit v4

    .line 3275
    return v8

    .end local v0    # "action":Ljava/lang/String;
    :cond_a
    monitor-exit v4

    .line 3284
    .end local v1    # "action$iterator":Ljava/util/Iterator;
    :cond_b
    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-lt v3, v5, :cond_10

    .line 3285
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-lt v3, v5, :cond_10

    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, v4, :cond_10

    .line 3286
    if-eqz v2, :cond_10

    .line 3287
    const-string/jumbo v3, "AlarmTaskSchedule"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 3288
    const-string/jumbo v3, "com.igexin.sdk.action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 3287
    if-nez v3, :cond_c

    .line 3289
    const-string/jumbo v3, "AlarmTaskScheduleBak"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 3287
    if-eqz v3, :cond_e

    .line 3290
    :cond_c
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_d

    .line 3291
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip Broadcast: a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    :cond_d
    return v8

    .line 3260
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3294
    :cond_e
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3295
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_f

    .line 3296
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip Broadcast mBlackAlarmList: a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    :cond_f
    return v8

    .line 3300
    :cond_10
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for action ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3301
    return v7
.end method

.method private startComputeUidTraffic(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1757
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1758
    .local v0, "msg2":Landroid/os/Message;
    const/16 v1, 0x74

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1759
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1760
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1756
    return-void
.end method

.method private startResumeUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2614
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)Z

    .line 2615
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2616
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2618
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2619
    const-string/jumbo v0, "OnePlusProcessManager"

    const-string/jumbo v1, "startResumeUid --------- end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    :cond_0
    return-void

    .line 2615
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startSuspendUid(I)Z
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x1

    .line 2567
    invoke-virtual {p0, p1, v7}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)Z

    move-result v2

    .line 2568
    .local v2, "isSuspended":Z
    if-eqz v2, :cond_5

    .line 2569
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 2570
    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 2572
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2573
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2576
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5}, Landroid/os/IPowerManager;->updateBlockedUids(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2581
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2582
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-static {p1, v7}, Lcom/android/server/LocationManagerService;->updateUidBlock(IZ)V

    .line 2584
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2585
    :cond_2
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-virtual {v4, p1, v7}, Lcom/android/server/LocationManagerService;->updateReceiverBlockRequest(IZ)V

    .line 2587
    :cond_3
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    if-eqz v4, :cond_4

    .line 2588
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2589
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2590
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 2591
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 2593
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v4, v3, v5, v6}, Landroid/app/IAlarmManager;->setBlockAlarmUid(Ljava/lang/String;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2599
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_4
    :goto_1
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 2600
    :try_start_3
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    .line 2603
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mNotAllowSensorUids:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2604
    :try_start_4
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mNotAllowSensorUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v5

    .line 2606
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->cancelNotificationsForUid(I)V

    .line 2608
    :cond_5
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 2609
    const-string/jumbo v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startSuspendUid uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isSuspended ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ---- end"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_6
    return v2

    .line 2569
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2577
    :catch_0
    move-exception v1

    .line 2578
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateBlockedUids "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2599
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2603
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2594
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private tryAddScreenOffTrafficUids()V
    .locals 5

    .prologue
    .line 1764
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 1765
    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 1766
    .local v1, "mTraffic":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1768
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1769
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1770
    .local v2, "mUid":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->computeUidTraffic(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1764
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "mTraffic":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "mUid":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v1    # "mTraffic":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit v4

    .line 1763
    return-void
.end method

.method private updateBPMEnableState(Z)V
    .locals 8
    .param p1, "flag"    # Z

    .prologue
    .line 2756
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2757
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBPMEnableState # flag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    :cond_0
    if-nez p1, :cond_2

    .line 2759
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2760
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2763
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2764
    .local v1, "uid":I
    const-string/jumbo v3, "updateBPMEnableState"

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2762
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "uid":I
    :cond_1
    monitor-exit v4

    .line 2769
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->computeThreeAppState()V

    .line 2770
    if-eqz p1, :cond_4

    .line 2771
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2773
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2774
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2775
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2776
    .local v2, "uid":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-wide v6, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v3, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2774
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2760
    .end local v2    # "uid":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_3
    monitor-exit v4

    .line 2755
    .end local v0    # "i":I
    :cond_4
    return-void

    .line 2773
    .restart local v0    # "i":I
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private updateDozePolicyToDB(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 2783
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2784
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDozePolicyToDB # flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_0
    iget v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 2786
    const/4 p1, 0x0

    .line 2788
    .end local p1    # "flag":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 2789
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "doze_mode_policy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2782
    :goto_0
    return-void

    .line 2791
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "doze_mode_policy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateForegroundActivityChange(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 1729
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1730
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-static {p1, v5}, Lcom/android/server/LocationManagerService;->updateUidBlock(IZ)V

    .line 1732
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

    .line 1733
    :cond_1
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-virtual {v3, p1, v5}, Lcom/android/server/LocationManagerService;->updateReceiverBlockRequest(IZ)V

    .line 1735
    :cond_2
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    if-eqz v3, :cond_3

    .line 1736
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1737
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1738
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1739
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1741
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v2, v4, v5}, Landroid/app/IAlarmManager;->setBlockAlarmUid(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1748
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/os/IPowerManager;->updateBlockedUids(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1752
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1753
    return-void

    .line 1749
    :catch_0
    move-exception v1

    .line 1750
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBlockedUids "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1742
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
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
    .line 1374
    .local p0, "mNewImportUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 1375
    return-void

    .line 1377
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_2

    .line 1378
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/OnePlusProcessManager;->handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1380
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 1381
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImportantUidChange change ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1383
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1373
    :cond_2
    return-void
.end method

.method public static updateLocationReceiverUidsChange(IZZ)V
    .locals 1
    .param p0, "mUid"    # I
    .param p1, "isAdd"    # Z
    .param p2, "isReceiver"    # Z

    .prologue
    .line 1409
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusProcessManager;->updateLocationReceiverUidsChange(IZZZ)V

    .line 1408
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

    .line 1414
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 1415
    return-void

    .line 1417
    :cond_0
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_1

    .line 1418
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_1

    .line 1419
    if-eqz p2, :cond_5

    .line 1420
    if-eqz p1, :cond_3

    .line 1422
    if-eqz p3, :cond_2

    .line 1423
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    :cond_1
    :goto_0
    return-void

    .line 1425
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1428
    :cond_3
    if-eqz p3, :cond_4

    .line 1429
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    .line 1430
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1429
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1431
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    .line 1432
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1431
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1433
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 1434
    sget-wide v2, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    div-long/2addr v2, v4

    .line 1433
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    goto :goto_0

    .line 1437
    :cond_4
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    .line 1438
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1437
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1439
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    .line 1440
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1439
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1441
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 1442
    sget-wide v2, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    div-long/2addr v2, v4

    .line 1441
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    goto :goto_0

    .line 1447
    :cond_5
    if-eqz p1, :cond_6

    .line 1449
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1451
    :cond_6
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static updateScreenState(Z)V
    .locals 2
    .param p0, "screenState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2937
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 2938
    return-void

    .line 2940
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_2

    .line 2941
    if-eqz p0, :cond_1

    .line 2942
    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 2943
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    .line 2945
    :cond_1
    return-void

    .line 2947
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2954
    if-eqz p0, :cond_3

    .line 2955
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCount:I

    .line 2956
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 2970
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    .line 2947
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2936
    return-void

    .line 2947
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

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
    .line 1388
    .local p0, "fontWindowTouchUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 1389
    return-void

    .line 1391
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_2

    .line 1392
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/OnePlusProcessManager;->handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1394
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 1395
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTouchWindowUidChange change ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1397
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1387
    :cond_2
    return-void
.end method

.method private static writePidToTasksFile(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 727
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V

    .line 726
    return-void
.end method

.method private static writePidToTasksFile(IIZ)V
    .locals 23
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "retry"    # Z

    .prologue
    .line 731
    const/16 v19, 0x2710

    move/from16 v0, p0

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 732
    return-void

    .line 734
    :cond_0
    const/4 v12, -0x1

    .line 735
    .local v12, "pidState":I
    const/4 v3, 0x0

    .line 736
    .local v3, "cgroupout":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 738
    .local v7, "f":Ljava/io/File;
    :try_start_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "/sys/fs/cgroup/freezer/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/freezer.state"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 739
    .local v10, "mCgroupFreezerstate":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 740
    .end local v7    # "f":Ljava/io/File;
    .local v8, "f":Ljava/io/File;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_2

    .line 741
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 742
    .local v11, "pf":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_1

    .line 743
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 745
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 746
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_2

    .line 747
    const-string/jumbo v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Exception : file not exists : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void

    .line 751
    .end local v11    # "pf":Ljava/io/File;
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 752
    .local v4, "cgroupout":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v20, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    monitor-enter v20
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 753
    :try_start_3
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v19, :cond_3

    .line 754
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v19

    .line 753
    if-eqz v19, :cond_3

    .line 755
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    monitor-exit v20

    .line 758
    const-string/jumbo v18, "THAWED"

    .line 759
    .local v18, "thawed":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    .line 760
    .local v17, "statebuffer":[B
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 761
    sget-object v20, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v20
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 762
    :try_start_5
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v19, :cond_4

    .line 763
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v19

    .line 762
    if-eqz v19, :cond_4

    .line 764
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    :try_start_6
    monitor-exit v20

    .line 768
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "/sys/fs/cgroup/freezer/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/tasks"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 769
    .local v9, "mCgroupFreezerPathbytasks":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 770
    .end local v8    # "f":Ljava/io/File;
    .local v7, "f":Ljava/io/File;
    :try_start_7
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_9

    .line 771
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_5

    .line 772
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 773
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 776
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_9

    .line 777
    const-string/jumbo v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " not exist ------- Exception"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 801
    if-eqz v4, :cond_b

    .line 802
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 803
    const/4 v3, 0x0

    .line 778
    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 752
    .end local v7    # "f":Ljava/io/File;
    .end local v9    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .end local v17    # "statebuffer":[B
    .end local v18    # "thawed":Ljava/lang/String;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v8    # "f":Ljava/io/File;
    :catchall_0
    move-exception v19

    :try_start_9
    monitor-exit v20

    throw v19
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 791
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "f":Ljava/io/File;
    .restart local v7    # "f":Ljava/io/File;
    move-object v3, v4

    .line 792
    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v7    # "f":Ljava/io/File;
    .end local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    :goto_1
    :try_start_a
    const-string/jumbo v19, "OnePlusProcessManager"

    .line 793
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 794
    const-string/jumbo v21, ", retry = "

    .line 793
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 794
    const-string/jumbo v21, ", "

    .line 793
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 794
    const-string/jumbo v21, ", pidState="

    .line 793
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 794
    const-string/jumbo v21, ", "

    .line 793
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 795
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    .line 793
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 792
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    if-eqz p2, :cond_6

    .line 797
    sget-object v19, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v0, v19

    move/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFileDelayed(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 801
    :cond_6
    if-eqz v3, :cond_7

    .line 802
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 803
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 730
    :cond_7
    :goto_3
    return-void

    .line 761
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v8    # "f":Ljava/io/File;
    .restart local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v17    # "statebuffer":[B
    .restart local v18    # "thawed":Ljava/lang/String;
    :catchall_1
    move-exception v19

    :try_start_c
    monitor-exit v20

    throw v19
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 799
    .end local v17    # "statebuffer":[B
    .end local v18    # "thawed":Ljava/lang/String;
    :catchall_2
    move-exception v19

    move-object v7, v8

    .end local v8    # "f":Ljava/io/File;
    .restart local v7    # "f":Ljava/io/File;
    move-object v3, v4

    .line 801
    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v7    # "f":Ljava/io/File;
    .end local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    :goto_4
    if-eqz v3, :cond_8

    .line 802
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 803
    const/4 v3, 0x0

    .line 799
    :cond_8
    :goto_5
    throw v19

    .line 805
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v7    # "f":Ljava/io/File;
    .restart local v9    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .restart local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v17    # "statebuffer":[B
    .restart local v18    # "thawed":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 806
    .local v5, "ec":Ljava/io/IOException;
    const-string/jumbo v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 807
    const-string/jumbo v21, " : close Exception : "

    .line 806
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 807
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    .line 806
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .local v3, "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 781
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "ec":Ljava/io/IOException;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    :cond_9
    :try_start_e
    const-string/jumbo v14, ""

    .line 782
    .local v14, "pidsStr":Ljava/lang/String;
    const-string/jumbo v15, ""

    .line 783
    .local v15, "pidsStr_debug":Ljava/lang/String;
    const-string/jumbo v16, ""

    .line 784
    .local v16, "processName":Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 785
    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 786
    .local v13, "pidbuffer":[B
    invoke-virtual {v3, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 788
    sget-boolean v19, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v19, :cond_a

    .line 789
    const-string/jumbo v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "writePidToTasksFile():uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", retry="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 790
    const-string/jumbo v21, " --> ok"

    .line 789
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 801
    :cond_a
    if-eqz v3, :cond_7

    .line 802
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_2

    .line 805
    :catch_2
    move-exception v5

    .line 806
    .restart local v5    # "ec":Ljava/io/IOException;
    const-string/jumbo v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 807
    const-string/jumbo v21, " : close Exception : "

    .line 806
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 807
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    .line 806
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 805
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "ec":Ljava/io/IOException;
    .end local v7    # "f":Ljava/io/File;
    .end local v9    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .end local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    .end local v13    # "pidbuffer":[B
    .end local v14    # "pidsStr":Ljava/lang/String;
    .end local v15    # "pidsStr_debug":Ljava/lang/String;
    .end local v16    # "processName":Ljava/lang/String;
    .end local v17    # "statebuffer":[B
    .end local v18    # "thawed":Ljava/lang/String;
    .restart local v6    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 806
    .restart local v5    # "ec":Ljava/io/IOException;
    const-string/jumbo v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 807
    const-string/jumbo v21, " : close Exception : "

    .line 806
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 807
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    .line 806
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 805
    .end local v5    # "ec":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 806
    .restart local v5    # "ec":Ljava/io/IOException;
    const-string/jumbo v20, "OnePlusProcessManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", pid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 807
    const-string/jumbo v22, " : close Exception : "

    .line 806
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 807
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    .line 806
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 799
    .end local v5    # "ec":Ljava/io/IOException;
    :catchall_3
    move-exception v19

    goto/16 :goto_4

    .local v3, "cgroupout":Ljava/io/FileOutputStream;
    .restart local v8    # "f":Ljava/io/File;
    .restart local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    :catchall_4
    move-exception v19

    move-object v7, v8

    .end local v8    # "f":Ljava/io/File;
    .restart local v7    # "f":Ljava/io/File;
    goto/16 :goto_4

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v9    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .restart local v17    # "statebuffer":[B
    .restart local v18    # "thawed":Ljava/lang/String;
    :catchall_5
    move-exception v19

    move-object v3, v4

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .local v3, "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 791
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v7    # "f":Ljava/io/File;
    .end local v9    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .end local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    .end local v17    # "statebuffer":[B
    .end local v18    # "thawed":Ljava/lang/String;
    :catch_5
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v6    # "ex":Ljava/io/IOException;
    .local v3, "cgroupout":Ljava/io/FileOutputStream;
    .restart local v8    # "f":Ljava/io/File;
    .restart local v10    # "mCgroupFreezerstate":Ljava/lang/String;
    :catch_6
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "f":Ljava/io/File;
    .restart local v7    # "f":Ljava/io/File;
    goto/16 :goto_1

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v9    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .restart local v17    # "statebuffer":[B
    .restart local v18    # "thawed":Ljava/lang/String;
    :catch_7
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .local v3, "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v4    # "cgroupout":Ljava/io/FileOutputStream;
    :cond_b
    move-object v3, v4

    .end local v4    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method


# virtual methods
.method checkTrafficUid(I)Z
    .locals 14
    .param p1, "uid"    # I

    .prologue
    .line 1835
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1836
    .local v0, "now":J
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    .line 1837
    .local v2, "obj":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    if-nez v2, :cond_0

    .line 1838
    const/4 v3, 0x0

    return v3

    .line 1840
    :cond_0
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v8

    .line 1841
    .local v8, "txBytes":J
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    .line 1842
    .local v4, "rxBytes":J
    const-wide/16 v6, 0x1

    .line 1843
    .local v6, "timeDuring":J
    sget-wide v10, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_1

    .line 1844
    iget-wide v10, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->startTime:J

    sub-long v10, v0, v10

    sget-wide v12, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    div-long v6, v10, v12

    .line 1846
    :cond_1
    const-wide/16 v10, 0x1

    cmp-long v3, v6, v10

    if-gtz v3, :cond_2

    .line 1847
    const-wide/16 v6, 0x1

    .line 1849
    :cond_2
    iget-wide v10, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->rxBytes:J

    sub-long v10, v4, v10

    div-long/2addr v10, v6

    const-wide/32 v12, 0x19000

    cmp-long v3, v12, v10

    if-gez v3, :cond_3

    .line 1850
    const/4 v3, 0x1

    return v3

    .line 1851
    :cond_3
    iget-wide v10, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->txBytes:J

    sub-long v10, v8, v10

    div-long/2addr v10, v6

    const-wide/32 v12, 0x19000

    cmp-long v3, v12, v10

    if-gez v3, :cond_4

    .line 1852
    const/4 v3, 0x1

    return v3

    .line 1854
    :cond_4
    const/4 v3, 0x0

    return v3
.end method

.method public computeThreeAppState()V
    .locals 7

    .prologue
    .line 2806
    const/4 v2, 0x0

    .line 2807
    .local v2, "mProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2808
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "mProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    monitor-exit v4

    .line 2807
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2810
    if-nez v2, :cond_0

    .line 2811
    return-void

    .line 2807
    .end local v2    # "mProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 2814
    .restart local v2    # "mProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2815
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 2816
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_1

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2819
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 2820
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-nez v3, :cond_1

    .line 2821
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->add3rdAppProcessState(II)V

    .line 2822
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 2823
    :try_start_1
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2824
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    .line 2814
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2822
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2805
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3941
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "@The BPM status is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3942
    const-string/jumbo v9, "@The BPM list : "

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 3943
    const-string/jumbo v9, "@The PKG list : "

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 3944
    const-string/jumbo v9, "@The BRD list : "

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 3946
    const-string/jumbo v9, "UidPidState list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3947
    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3948
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 3949
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\t mUidPidState uid : "

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

    .line 3950
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3951
    .local v6, "mPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 3952
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\t \t  mUidPidState pid : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3951
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3948
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "j":I
    .end local v6    # "mPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    monitor-exit v10

    .line 3956
    const-string/jumbo v9, "Suspend list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3957
    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3958
    const/4 v1, 0x0

    :goto_2
    :try_start_1
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 3959
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\t suspend uid : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3958
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3947
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_2
    monitor-exit v10

    .line 3962
    const-string/jumbo v9, "mGpsReceiverLocationUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3964
    const/4 v1, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 3965
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\t mGpsReceiverLocationUids uid : "

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

    .line 3964
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3957
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9

    .line 3967
    :cond_3
    const-string/jumbo v9, "mOtherReceiverLocationUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3969
    const/4 v1, 0x0

    :goto_4
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 3970
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\t mOtherReceiverLocationUids uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3971
    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 3970
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3969
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3974
    :cond_4
    const-string/jumbo v9, "mStatusLocationUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3976
    const/4 v1, 0x0

    :goto_5
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_5

    .line 3977
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\t mStatusLocationUids uid : "

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

    .line 3976
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3979
    :cond_5
    const-string/jumbo v9, "mFrontWindowTouchUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3981
    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3982
    :try_start_2
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3983
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3984
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 3985
    .local v7, "mUid":Ljava/lang/Integer;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\t mFrontWindowTouchUids uid : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    .line 3981
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7    # "mUid":Ljava/lang/Integer;
    :catchall_2
    move-exception v9

    monitor-exit v10

    throw v9

    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    monitor-exit v10

    .line 3988
    const-string/jumbo v9, "UnFrozenReasonUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3989
    const/4 v1, 0x0

    :goto_7
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v1, v9, :cond_7

    .line 3990
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\t mUnFrozenUids uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3991
    const-string/jumbo v10, " reseason = "

    .line 3990
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3991
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3990
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3989
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3993
    :cond_7
    const-string/jumbo v9, "ResumeBroadcastUids list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3997
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    if-eqz v9, :cond_9

    .line 3998
    const/4 v1, 0x0

    :goto_8
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_9

    .line 3999
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 4000
    .local v4, "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 4001
    .local v8, "uid":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\t resumeBroadcastUids uid = : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4002
    if-eqz v4, :cond_8

    .line 4003
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_9
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v3, v9, :cond_8

    .line 4004
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4005
    .local v0, "broadcasts":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 4006
    .local v5, "mCount":Ljava/lang/Integer;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\t resumeBroadcastUids uid = : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " broadcast ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4007
    const-string/jumbo v10, " mCount = "

    .line 4006
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4003
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 3998
    .end local v0    # "broadcasts":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "mCount":Ljava/lang/Integer;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4013
    .end local v4    # "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "uid":I
    :cond_9
    const-string/jumbo v9, "SuspendProcessHandler list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4014
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    if-eqz v9, :cond_a

    .line 4015
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    new-instance v10, Landroid/util/PrintWriterPrinter;

    invoke-direct {v10, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4016
    const-string/jumbo v11, "\t message list"

    .line 4015
    invoke-virtual {v9, v10, v11}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4018
    :cond_a
    const-string/jumbo v9, "ResumeProcessHandler list : "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4019
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    if-eqz v9, :cond_b

    .line 4020
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    new-instance v10, Landroid/util/PrintWriterPrinter;

    invoke-direct {v10, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4021
    const-string/jumbo v11, "\t message list"

    .line 4020
    invoke-virtual {v9, v10, v11}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3940
    :cond_b
    return-void
.end method

.method public getBPMEnable()Z
    .locals 3

    .prologue
    .line 2707
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 2708
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBPMEnable():mBPMStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method loadNPMConfigFiles()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1968
    const-string/jumbo v2, "/data/data_bpm/brd.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 1969
    const-string/jumbo v2, "/data/data_bpm/pkg.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 1970
    const-string/jumbo v2, "/data/data_bpm/black_gps.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    .line 1971
    const-string/jumbo v2, "/data/data_bpm/black_brd.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    .line 1972
    const-string/jumbo v2, "/data/data_bpm/black_alarm.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    .line 1974
    const-string/jumbo v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadNPMConfigFiles: mPkgList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    const-string/jumbo v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadNPMConfigFiles: mBrdList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    const-string/jumbo v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadNPMConfigFiles mBlackBrdList= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const-string/jumbo v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadNPMConfigFiles mBlackGpsList= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const-string/jumbo v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadNPMConfigFiles mBlackAlarmList= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    const-string/jumbo v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1982
    .local v0, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1983
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 1984
    .local v1, "temp":Z
    :goto_0
    const-string/jumbo v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[FO]UPDATE_STS: before: temp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareConfigStatus()V

    .line 1986
    sget v2, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1987
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    if-ne v2, v5, :cond_2

    .line 1988
    invoke-virtual {p0, v5}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 1989
    const-string/jumbo v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 1998
    .end local v1    # "temp":Z
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    .line 2000
    const-string/jumbo v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[FO]UPDATE_STS: before: mBPMStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    return-void

    .line 1983
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "temp":Z
    goto :goto_0

    .line 1990
    :cond_2
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1991
    invoke-virtual {p0, v6}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 1992
    const-string/jumbo v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v6}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 1994
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    goto :goto_1
.end method

.method public openDebug(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 3929
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 3930
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 3928
    return-void
.end method

.method prepareBPMConfigFiles()V
    .locals 6

    .prologue
    .line 2375
    const-string/jumbo v3, "OnePlusProcessManager"

    const-string/jumbo v4, "[FO]prepareBPMConfigFiles()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/data/data_bpm/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2378
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2379
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2381
    :cond_0
    const/4 v2, 0x0

    .line 2382
    .local v2, "isForceUpdate":Z
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->checkVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2383
    const/4 v2, 0x1

    .line 2385
    :cond_1
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[FO]prepareBPMConfigFiles() isForceUpdate ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    const-string/jumbo v3, "/system/bpm/pkg.xml"

    const-string/jumbo v4, "/data/data_bpm/pkg.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2387
    const-string/jumbo v3, "/system/bpm/brd.xml"

    const-string/jumbo v4, "/data/data_bpm/brd.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2388
    const-string/jumbo v3, "/system/bpm/bpm_sts.xml"

    const-string/jumbo v4, "/data/data_bpm/bpm_sts.xml"

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2389
    const-string/jumbo v3, "/system/bpm/black_gps.xml"

    const-string/jumbo v4, "/data/data_bpm/black_gps.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2390
    const-string/jumbo v3, "/system/bpm/black_brd.xml"

    const-string/jumbo v4, "/data/data_bpm/black_brd.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2391
    const-string/jumbo v3, "/system/bpm/black_alarm.xml"

    const-string/jumbo v4, "/data/data_bpm/black_alarm.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2392
    const-string/jumbo v3, "/system/bpm/version.xml"

    const-string/jumbo v4, "/data/data_bpm/version.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2398
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "isForceUpdate":Z
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string/jumbo v4, "chmod 0770 /data/data_bpm/"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2399
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string/jumbo v4, "chmod 0770 /data/data_bpm/pkg.xml"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2400
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string/jumbo v4, "chmod 0770 /data/data_bpm/brd.xml"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2401
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string/jumbo v4, "chmod 0770 /data/data_bpm/bpm_sts.xml"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2402
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string/jumbo v4, "chmod 0770 /data/data_bpm/black_gps.xml"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2403
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string/jumbo v4, "chmod 0770 /data/data_bpm/black_brd.xml"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2374
    :goto_1
    return-void

    .line 2393
    :catch_0
    move-exception v0

    .line 2394
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[FO]initBPMConfigFiles(): failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2404
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2405
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[FO]prepareBPMConfigFiles(): failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method prepareConfigStatus()V
    .locals 8

    .prologue
    .line 1921
    const-string/jumbo v7, "prepareConfigStatus()"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 1922
    const-string/jumbo v7, "/data/data_bpm/cfg.xml"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1923
    .local v0, "dataCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "/system/bpm/cfg.xml"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 1930
    .local v5, "sysCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1931
    .local v4, "sv":I
    const/4 v2, 0x0

    .line 1932
    .local v2, "dv":I
    if-nez v5, :cond_0

    .line 1933
    const/4 v4, 0x0

    .line 1934
    return-void

    .line 1936
    :cond_0
    const-string/jumbo v7, "version"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1937
    .local v6, "sysVersion":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1938
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1942
    :cond_1
    if-nez v0, :cond_5

    .line 1943
    const/4 v2, 0x0

    .line 1950
    :cond_2
    :goto_0
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    .line 1951
    if-le v4, v2, :cond_4

    .line 1952
    sput v4, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    .line 1953
    const-string/jumbo v7, "forceSwitch"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1954
    .local v3, "forceSwitch":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1955
    const-string/jumbo v7, "on"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1956
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    .line 1962
    :cond_3
    :goto_1
    const-string/jumbo v7, "/data/data_bpm/cfg.xml"

    invoke-static {v7, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveXmlLocked(Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 1920
    .end local v3    # "forceSwitch":Ljava/lang/String;
    :cond_4
    return-void

    .line 1945
    :cond_5
    const-string/jumbo v7, "version"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1946
    .local v1, "dataVersion":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1947
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1957
    .end local v1    # "dataVersion":Ljava/lang/String;
    .restart local v3    # "forceSwitch":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "off"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1958
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    goto :goto_1
.end method

.method removeUidStateLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1461
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 1462
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1463
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 1464
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1460
    .end local v1    # "oldUidState":I
    :cond_0
    return-void
.end method

.method public resumeAllProcessLock(Ljava/lang/String;)V
    .locals 5
    .param p1, "why"    # Ljava/lang/String;

    .prologue
    .line 2991
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2992
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2993
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    invoke-direct {v3, v1, p1, v4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2992
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    .line 2990
    return-void

    .line 2991
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setBPMEnable(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 2713
    iget v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 2714
    const/4 p1, 0x0

    .line 2717
    .end local p1    # "flag":Z
    :cond_0
    if-eqz p1, :cond_2

    .line 2718
    const-string/jumbo v0, "sys.cgroup.active"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2723
    :goto_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eq p1, v0, :cond_1

    .line 2724
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    .line 2725
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateBPMEnableState(Z)V

    .line 2726
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateDozePolicyToDB(Z)V

    .line 2727
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 2712
    :cond_1
    return-void

    .line 2720
    :cond_2
    const-string/jumbo v0, "sys.cgroup.active"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBPMEnableFromDB(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 2733
    iget v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 2734
    const/4 p1, 0x0

    .line 2737
    .end local p1    # "flag":Z
    :cond_0
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 2738
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 2739
    const-string/jumbo v0, "persist.sys.cgroup.flags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    :cond_1
    if-eqz p1, :cond_3

    .line 2743
    const-string/jumbo v0, "sys.cgroup.active"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    :goto_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eq p1, v0, :cond_2

    .line 2749
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    .line 2750
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateBPMEnableState(Z)V

    .line 2751
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 2732
    :cond_2
    return-void

    .line 2745
    :cond_3
    const-string/jumbo v0, "sys.cgroup.active"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCGroupState(IZ)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .prologue
    .line 821
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupStateLocked(IZ)Z

    move-result v0

    return v0
.end method

.method updatePowerSaveWhitelistLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1238
    const/4 v4, 0x0

    :try_start_0
    new-array v1, v4, [I

    .line 1239
    .local v1, "mWhiteUid":[I
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v4, :cond_0

    .line 1240
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v1

    .line 1242
    :cond_0
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    :try_start_1
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->changeIntToList([I)Ljava/util/List;

    move-result-object v3

    .line 1244
    .local v3, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->changeIntToList([I)Ljava/util/List;

    move-result-object v2

    .line 1245
    .local v2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v3, v2}, Lcom/android/server/am/OnePlusProcessManager;->handlePackageChange(Ljava/util/List;Ljava/util/List;)V

    .line 1246
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5

    .line 1236
    .end local v1    # "mWhiteUid":[I
    .end local v2    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 1242
    .restart local v1    # "mWhiteUid":[I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1248
    .end local v1    # "mWhiteUid":[I
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Landroid/os/RemoteException;
    sput-object v6, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    goto :goto_0
.end method

.method updateProperties()V
    .locals 0

    .prologue
    .line 2003
    return-void
.end method

.method updateUidStateLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    .line 1366
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1367
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_0

    .line 1369
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1365
    :cond_0
    return-void
.end method

.method writePidToTasksFileDelayed(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 813
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 814
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x72

    iput v1, v0, Landroid/os/Message;->what:I

    .line 815
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 816
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 817
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 812
    return-void
.end method
