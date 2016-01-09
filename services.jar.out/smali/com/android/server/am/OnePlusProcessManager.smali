.class public Lcom/android/server/am/OnePlusProcessManager;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusProcessManager$OPPMValue;,
        Lcom/android/server/am/OnePlusProcessManager$OPPMKey;,
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

.field private static final BAD_APPS_FILE:Ljava/lang/String; = "bad_apps.xml"

.field private static final BAD_APPS_PATH:Ljava/lang/String; = "/data/data_bpm/bad_apps.xml"

.field private static final BPM_DIR:Ljava/lang/String; = "/data/data_bpm/"

.field private static final BPM_FILE:Ljava/lang/String; = "bpm.xml"

.field private static final BPM_PATH:Ljava/lang/String; = "/data/data_bpm/bpm.xml"

.field private static final BPM_STATUS_FILE:Ljava/lang/String; = "bpm_sts.xml"

.field public static final BPM_STATUS_PATH:Ljava/lang/String; = "/data/data_bpm/bpm_sts.xml"

.field private static final BRD_FILE:Ljava/lang/String; = "brd.xml"

.field private static final BRD_PATH:Ljava/lang/String; = "/data/data_bpm/brd.xml"

.field public static DEBUG:Z = false

.field public static DEBUG_DETAIL:Z = false

.field private static final FORCE_SWITCH_IGNORE:I = 0x0

.field private static final FORCE_SWITCH_OFF:I = 0x2

.field private static final FORCE_SWITCH_ON:I = 0x1

.field private static final INIT_CONFIG_DATA:I = 0x70

.field public static IN_USING:I = 0x0

.field private static final IS_H2_OS:Z = true

.field private static final MESSAGE_SUSPEND_DELAY:I = 0x71

.field private static final MESSAGE_WRITE_PID_DELAY:I = 0x72

.field private static final MSG_LOOP_ONCE:I = 0xc9

.field private static final PHONE_PKG_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final PKG_FILE:Ljava/lang/String; = "pkg.xml"

.field private static final PKG_PATH:Ljava/lang/String; = "/data/data_bpm/pkg.xml"

.field private static final START_WATCHING:I = 0x6f

.field private static final SUSPEND_DELAY:J = 0xfde8L

.field private static final SUSPEND_PRE_APP_DELAY:J = 0x30d40L

.field private static final SUSPEND_UID_TYPE_GPS:I = 0x4

.field private static final SUSPEND_UID_TYPE_KILL:I = 0x2

.field private static final SUSPEND_UID_TYPE_SKIP:I = 0x0

.field private static final SUSPEND_UID_TYPE_SUSPEND:I = 0x1

.field private static final SUSPEND_UID_TYPE_WAKELOCK:I = 0x3

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

.field public static final VERSION:I = 0xe698d1

.field public static mActivityManager:Lcom/android/server/am/ActivityManagerService; = null

.field private static mBPMStatus:Z = false

.field static final mCgroupFreezerPath:Ljava/lang/String; = "/sys/fs/cgroup/freezer/"

.field public static mLock:Ljava/lang/Object;

.field private static mNotification:Landroid/app/INotificationManager;

.field private static mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

.field static mPhoneAppReady:Z

.field static mScreenState:Z

.field static mSuspendFailTimeDelay:I

.field static mSuspendFailUidsBeahavier:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
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


# instance fields
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

.field mForceSwitch:I

.field final mHandler:Landroid/os/Handler;

.field final mLoopHandler:Landroid/os/Handler;

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

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field mResumeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/am/OnePlusProcessManager$OPPMKey;",
            "Lcom/android/server/am/OnePlusProcessManager$OPPMValue;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeProcessHander:Landroid/os/Handler;

.field mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSuspendProcessHander:Landroid/os/Handler;

.field private mWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 98
    sput v0, Lcom/android/server/am/OnePlusProcessManager;->IN_USING:I

    .line 99
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 100
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 106
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    .line 108
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 111
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 119
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 186
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspentRecents:Ljava/util/Vector;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    .line 191
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsBeahavier:Landroid/util/ArrayMap;

    .line 193
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 634
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    .line 669
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenState:Z

    .line 998
    const v0, 0x186a0

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailTimeDelay:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 8
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 113
    iput-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 114
    iput-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    .line 121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mBadList:Ljava/util/List;

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAppWidgetList:Ljava/util/List;

    .line 184
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindow:Ljava/util/HashMap;

    .line 194
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$1;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mHandler:Landroid/os/Handler;

    .line 631
    iput-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    .line 632
    iput-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    .line 671
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$2;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 693
    iput v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    .line 2690
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeMap:Ljava/util/HashMap;

    .line 2850
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$4;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$4;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mLoopHandler:Landroid/os/Handler;

    .line 640
    const-string v3, "OnePlusProcessManager"

    const-string v4, "OnePlusProcessManager VERSION = v15112401"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v3, "sys.cgroup.version"

    const-string v4, "v15112401"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v3, "persist.sys.cgroup.debug"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 643
    const-string v3, "persist.sys.cgroup.debugdetail"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 645
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6f

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 646
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x70

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 648
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mLoopHandler:Landroid/os/Handler;

    const/16 v4, 0xc9

    const-wide/32 v6, 0x186a0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 650
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SuspenPorcessThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 651
    .local v2, "mSuspendThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 653
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "ResumeProcessThread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 654
    .local v1, "mResumeThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 655
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    .line 656
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    .line 657
    sput-object p1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 659
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareBPMConfigFiles()V

    .line 660
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 662
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 663
    .local v0, "filter":Landroid/content/IntentFilter;
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 664
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 665
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 667
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusProcessManager;Landroid/util/ArrayMap;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Landroid/util/ArrayMap;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->suspendProcessRelate(Landroid/util/ArrayMap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 93
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->checkIsRelateProcess(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusProcessManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateProcessStateForChanged(Z)V

    return-void
.end method

.method static synthetic access$500(IIZ)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 93
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkUidExceedTraffic(Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsSuspendProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsSuspendRelateProcess(Lcom/android/server/am/ProcessRecord;)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static final addPidToCgroupTasksWithJudge(Lcom/android/server/am/ProcessRecord;I)V
    .locals 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "childPid"    # I

    .prologue
    .line 2103
    if-eqz p0, :cond_2

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-nez v0, :cond_2

    .line 2105
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 2106
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPidToCgroupTasksWithJudge # app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", --> childPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_1

    .line 2111
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v2, "addPidToCgroupTasksWithJudge"

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->resumeUidSync(ILjava/lang/String;)I

    .line 2113
    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v1, "addPidToCgroupTasksWithJudge"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->checkIsRelateProcess(ILjava/lang/String;Z)Z

    .line 2114
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(II)V

    .line 2117
    :cond_2
    return-void
.end method

.method private cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1408
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1409
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_0

    .line 1410
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1411
    .local v3, "pkg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v6, Lcom/android/server/am/OnePlusProcessManager$3;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/server/am/OnePlusProcessManager$3;-><init>(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1420
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    monitor-exit v5

    .line 1421
    return-void

    .line 1420
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static cancelNotificationsWithPkg(Ljava/lang/String;I)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 1424
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1425
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotificationsWithPkg # pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    if-nez v1, :cond_1

    .line 1436
    :goto_0
    return-void

    .line 1430
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    invoke-interface {v1, p0, p1}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1432
    :catch_0
    move-exception v0

    .line 1433
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception---->cancelNotificationsWithPkg # pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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

    .line 2294
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_1

    .line 2310
    :cond_0
    :goto_0
    return v0

    .line 2297
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_0

    .line 2300
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_2

    .line 2301
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkBroadcast # app="

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

    .line 2302
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcastRefApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2305
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_3

    .line 2306
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

    .line 2309
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2310
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private checkBroadcast(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 1949
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

    .line 1950
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1951
    const/4 v2, 0x1

    .line 1954
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static final checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 7
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2347
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_0

    move v6, v0

    .line 2366
    :goto_0
    return v6

    .line 2350
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v1, :cond_1

    move v6, v0

    .line 2351
    goto :goto_0

    .line 2353
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/OnePlusProcessManager;->checkPackageCanStart(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2356
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2

    .line 2357
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

    .line 2361
    :cond_2
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p2, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 2363
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_0

    :cond_3
    move v6, v0

    .line 2366
    goto :goto_0
.end method

.method private checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1013
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v0

    return v0
.end method

.method private checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "isCheckTouch"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1115
    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v7, :cond_0

    .line 1116
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkIsNeedResumeProcess # app = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isCheckTouch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_0
    if-nez p1, :cond_2

    .line 1197
    :cond_1
    :goto_0
    return v5

    .line 1122
    :cond_2
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v8, 0x2710

    if-ge v7, v8, :cond_4

    .line 1123
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_3

    .line 1124
    const-string v5, "OnePlusProcessManager"

    const-string v7, "---->#return true , FIRST_APPLICATION_UID"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v5, v6

    .line 1125
    goto :goto_0

    .line 1127
    :cond_4
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_6

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-eqz v7, :cond_6

    .line 1128
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_5

    .line 1129
    const-string v5, "OnePlusProcessManager"

    const-string v7, "---->#return true,in system app"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v5, v6

    .line 1130
    goto :goto_0

    .line 1132
    :cond_6
    iget-boolean v7, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v7, :cond_8

    .line 1133
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_7

    .line 1134
    const-string v5, "OnePlusProcessManager"

    const-string v7, "---->#return true,persistent app"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v5, v6

    .line 1135
    goto :goto_0

    .line 1137
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1138
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_9

    .line 1139
    const-string v5, "OnePlusProcessManager"

    const-string v7, "---->#return true,home app"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v5, v6

    .line 1140
    goto :goto_0

    .line 1143
    :cond_a
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1144
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lcom/android/server/am/OnePlusProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1145
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_c

    .line 1146
    const-string v5, "OnePlusProcessManager"

    const-string v7, "---->#return true , in mPkgList"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move v5, v6

    .line 1147
    goto :goto_0

    .line 1150
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_d
    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v7, :cond_e

    .line 1151
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--->checkIsNeedResumeProcess: app="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", app.curReceiver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 1153
    :cond_e
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v7, :cond_f

    .line 1154
    const-string v5, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---->#return true , curReceiver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1155
    goto/16 :goto_0

    .line 1168
    :cond_f
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v2, v7, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 1169
    .local v2, "mPendingService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    if-eqz v2, :cond_12

    .line 1170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_12

    .line 1171
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 1172
    .local v3, "mRecord":Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_11

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_11

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, v8, :cond_11

    .line 1173
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_10

    .line 1174
    const-string v5, "OnePlusProcessManager"

    const-string v7, "---->#return true , mPendingServices"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move v5, v6

    .line 1176
    goto/16 :goto_0

    .line 1170
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1180
    .end local v0    # "i":I
    .end local v3    # "mRecord":Lcom/android/server/am/ServiceRecord;
    :cond_12
    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->mScreenState:Z

    if-eqz v7, :cond_14

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessAdj(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1181
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_13

    .line 1182
    const-string v5, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---->#return true,checkProcessAdj uid ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Adj ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "foregroundActivities= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p1, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move v5, v6

    .line 1184
    goto/16 :goto_0

    .line 1188
    :cond_14
    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->mScreenState:Z

    if-eqz v7, :cond_16

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkTouchWindow(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1189
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_15

    .line 1190
    const-string v5, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---->#return true,touched window app uid ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move v5, v6

    .line 1192
    goto/16 :goto_0

    .line 1195
    :cond_16
    sget-boolean v6, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v6, :cond_1

    .line 1196
    const-string v6, "OnePlusProcessManager"

    const-string v7, "---->#return false , others ------> bingo false"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static checkIsRelateProcess(ILjava/lang/String;Z)Z
    .locals 6
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;
    .param p2, "topResume"    # Z

    .prologue
    const/16 v5, 0x2710

    const/4 v3, 0x0

    .line 2178
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v4, :cond_1

    .line 2197
    :cond_0
    :goto_0
    return v3

    .line 2181
    :cond_1
    if-lt p0, v5, :cond_0

    .line 2182
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2183
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne p0, v4, :cond_2

    if-gt p0, v5, :cond_3

    :cond_2
    if-eqz p2, :cond_0

    .line 2188
    :cond_3
    invoke-static {p0}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2189
    .local v1, "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2190
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v3, :cond_4

    .line 2191
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-direct {v4, v3}, Lcom/android/server/am/OnePlusProcessManager;->resumeTopRelateProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 2189
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2194
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private checkIsSuspenProcessRelateTop(Lcom/android/server/am/ProcessRecord;)Z
    .locals 8
    .param p1, "suspendProcess"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 948
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 949
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_0

    move v4, v5

    .line 976
    :goto_0
    return v4

    .line 952
    :cond_0
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 953
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

    .line 954
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_1

    .line 955
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v7, :cond_1

    move v4, v6

    .line 956
    goto :goto_0

    .line 962
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 963
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

    .line 964
    .local v1, "cc":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_3

    .line 965
    iget-object v4, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v7, :cond_3

    move v4, v6

    .line 966
    goto :goto_0

    .line 971
    .end local v1    # "cc":Lcom/android/server/am/ContentProviderConnection;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_5

    .line 972
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v7, :cond_5

    move v4, v6

    .line 973
    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 976
    goto/16 :goto_0
.end method

.method private checkIsSuspendForFailDelay(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1001
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1002
    .local v0, "conut":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 1008
    :goto_0
    return v1

    .line 1005
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsBeahavier:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1006
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1008
    goto :goto_0
.end method

.method private checkIsSuspendProcess(Lcom/android/server/am/ProcessRecord;)I
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v6, 0x0

    .line 1019
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1020
    .local v4, "uid":I
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1021
    .local v2, "pid":I
    if-nez p1, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return v6

    .line 1025
    :cond_1
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v8, 0x2710

    if-lt v7, v8, :cond_0

    .line 1028
    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->mScreenState:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkTouchWindow(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1029
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->compluteSuspenFailTime(I)V

    .line 1030
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "suspend false #touched window app uid ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1034
    :cond_2
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/OnePlusProcessManager;->checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1036
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "suspend false #from checkIsNeedResumeProcess uid ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1040
    :cond_3
    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->mScreenState:Z

    if-eqz v7, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsSuspenProcessRelateTop(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1042
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "suspend false #from checkIsSuspenProcessRelateTop uid ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1046
    :cond_4
    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->mScreenState:Z

    if-eqz v7, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isInputMethodApplication(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1047
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->compluteSuspenFailTime(I)V

    .line 1049
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "suspend false #from InputMethod uid ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1054
    :cond_5
    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->mScreenState:Z

    if-eqz v7, :cond_6

    if-eqz p1, :cond_6

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v7, :cond_6

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    iget-boolean v7, v7, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v7, :cond_6

    .line 1056
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "suspend false  #order broadcast, return uid ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 1063
    :cond_6
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getActiveAudioPids()[Ljava/lang/String;

    move-result-object v1

    .line 1064
    .local v1, "mTrackPids":[Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 1065
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, v1

    if-ge v0, v7, :cond_a

    .line 1066
    aget-object v7, v1, v0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1065
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1069
    :cond_8
    aget-object v7, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1071
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "suspend false #return from audio track 1 uid ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->compluteSuspenFailTime(I)V

    goto/16 :goto_0

    .line 1077
    :cond_9
    aget-object v7, v1, v0

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 1078
    .local v3, "trackApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_7

    iget v7, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, v8, :cond_7

    .line 1080
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "suspend false #return from audio track 2 uid ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->compluteSuspenFailTime(I)V

    goto/16 :goto_0

    .line 1089
    .end local v0    # "i":I
    .end local v3    # "trackApp":Lcom/android/server/am/ProcessRecord;
    :cond_a
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getWakeLockedPids()[I

    move-result-object v5

    .line 1090
    .local v5, "wakeLocks":[I
    if-eqz v5, :cond_c

    .line 1091
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v7, v5

    if-ge v0, v7, :cond_c

    .line 1092
    aget v7, v5, v0

    if-ne v2, v7, :cond_b

    .line 1093
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V

    .line 1094
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "suspend false #wakelock:  uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v7, v6}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)V

    .line 1098
    const/4 v6, 0x3

    goto/16 :goto_0

    .line 1091
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1104
    .end local v0    # "i":I
    :cond_c
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {p0, v6}, Lcom/android/server/am/OnePlusProcessManager;->isLocationApplication(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1105
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V

    .line 1106
    const-string v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "suspend false #gps: uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/4 v6, 0x4

    goto/16 :goto_0

    .line 1110
    :cond_d
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private checkIsSuspendRelateProcess(Lcom/android/server/am/ProcessRecord;)Landroid/util/ArrayMap;
    .locals 20
    .param p1, "suspendApp"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    if-nez p1, :cond_1

    .line 816
    const/4 v14, 0x0

    .line 888
    :cond_0
    :goto_0
    return-object v14

    .line 818
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v17, v0

    const/16 v18, 0x2710

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 819
    const/4 v14, 0x0

    goto :goto_0

    .line 821
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x81

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 822
    const/4 v14, 0x0

    goto :goto_0

    .line 824
    :cond_3
    sget-boolean v17, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v17, :cond_4

    .line 825
    const-string v17, "OnePlusProcessManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "checkIsSuspendRelateProcess # "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_4
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    .line 828
    .local v14, "mUidPolicy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .line 829
    .local v16, "suspend":Z
    const/4 v5, 0x0

    .line 831
    .local v5, "checkReturn":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 832
    .local v13, "mSuspendProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    .line 833
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 834
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->size()I

    move-result v17

    if-lez v17, :cond_a

    .line 835
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ServiceRecord;

    .line 836
    .local v15, "sr":Lcom/android/server/am/ServiceRecord;
    if-eqz v15, :cond_5

    .line 837
    const/4 v6, 0x0

    .local v6, "conni":I
    :goto_2
    iget-object v0, v15, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_5

    .line 838
    iget-object v0, v15, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 839
    .local v4, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v4, :cond_9

    .line 840
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_9

    .line 841
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 842
    .local v7, "crd":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v17, v0

    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 843
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v17

    if-nez v17, :cond_8

    .line 844
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 845
    .local v12, "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_7

    .line 846
    sget-object v18, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsSuspendProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v5

    .line 849
    if-nez v5, :cond_6

    .line 850
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 845
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 853
    :cond_7
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    .end local v10    # "j":I
    .end local v12    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 837
    .end local v7    # "crd":Lcom/android/server/am/ConnectionRecord;
    .end local v8    # "i":I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 865
    .end local v4    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6    # "conni":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_a
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-lez v17, :cond_f

    .line 866
    const/4 v6, 0x0

    .restart local v6    # "conni":I
    :goto_5
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_f

    .line 867
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 868
    .local v3, "c":Lcom/android/server/am/ContentProviderRecord;
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_b
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ContentProviderConnection;

    .line 869
    .local v15, "sr":Lcom/android/server/am/ContentProviderConnection;
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v17, v0

    iget-object v0, v15, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 870
    iget-object v0, v15, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v17

    if-nez v17, :cond_b

    .line 871
    iget-object v0, v15, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 872
    .restart local v12    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_d

    .line 873
    sget-object v18, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsSuspendProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v5

    .line 876
    if-nez v5, :cond_c

    .line 877
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 872
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 880
    :cond_d
    iget-object v0, v15, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 866
    .end local v8    # "i":I
    .end local v12    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v15    # "sr":Lcom/android/server/am/ContentProviderConnection;
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 832
    .end local v3    # "c":Lcom/android/server/am/ContentProviderRecord;
    .end local v6    # "conni":I
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1
.end method

.method private checkProcessAdj(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1338
    const/4 v0, 0x0

    .line 1339
    .local v0, "ret":Z
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-eqz v1, :cond_0

    .line 1340
    const/4 v0, 0x1

    .line 1342
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 1343
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessAdj # "

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

    .line 1344
    :cond_1
    return v0
.end method

.method static final checkProcessWhileBroadcastTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2234
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v2, :cond_1

    .line 2251
    :cond_0
    :goto_0
    return v0

    .line 2237
    :cond_1
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v2, :cond_0

    .line 2240
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 2241
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkProcessWhileBroadcastTimeout # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :cond_2
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "checkProcessWhileBroadcastTimeout "

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2245
    const-string v0, "OnePlusProcessManager"

    const-string v2, "checkProcessWhileBroadcastTimeout:broadcast proc is suspend, kill it"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 2247
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    move v0, v1

    .line 2248
    goto :goto_0
.end method

.method static final checkProcessWhileTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2207
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v2, :cond_1

    .line 2224
    :cond_0
    :goto_0
    return v0

    .line 2210
    :cond_1
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v2, :cond_0

    .line 2213
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 2214
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkProcessWhileTimeout # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    :cond_2
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "checkProcessWhileTimeout"

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2217
    const-string v0, "OnePlusProcessManager"

    const-string v2, "checkProcessWhileTimeout # service is suspend, kill it in background!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 2219
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    move v0, v1

    .line 2220
    goto :goto_0
.end method

.method private checkSuspendProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v5, 0x0

    .line 2812
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_0

    iget-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-nez v6, :cond_0

    .line 2813
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_0

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v6, :cond_0

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2816
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2817
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 2818
    .local v3, "permUids":[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 2831
    .end local v3    # "permUids":[Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v5

    .line 2821
    .restart local v3    # "permUids":[Ljava/lang/String;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_3

    .line 2822
    aget-object v2, v3, v1

    .line 2823
    .local v2, "packString":Ljava/lang/String;
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 2824
    .local v0, "mApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_2

    iget-boolean v6, v0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-nez v6, :cond_0

    .line 2821
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2828
    .end local v0    # "mApp":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "packString":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private checkUidExceedTraffic(Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;)I
    .locals 12
    .param p1, "obj"    # Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;

    .prologue
    const-wide/32 v10, 0x19000

    const-wide/16 v8, 0x400

    .line 536
    if-eqz p1, :cond_3

    iget-object v5, p1, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_3

    .line 537
    iget-object v5, p1, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 538
    .local v4, "uid":I
    invoke-static {v4}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    .line 539
    .local v2, "txBytes":J
    invoke-static {v4}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    .line 541
    .local v0, "rxBytes":J
    iget-wide v6, p1, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;->rxBytes:J

    add-long/2addr v6, v10

    cmp-long v5, v6, v0

    if-gez v5, :cond_1

    .line 542
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_0

    .line 543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " traffic: rx "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;->rxBytes:J

    sub-long v6, v0, v6

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 544
    :cond_0
    const/4 v5, 0x2

    .line 551
    .end local v0    # "rxBytes":J
    .end local v2    # "txBytes":J
    .end local v4    # "uid":I
    :goto_0
    return v5

    .line 545
    .restart local v0    # "rxBytes":J
    .restart local v2    # "txBytes":J
    .restart local v4    # "uid":I
    :cond_1
    iget-wide v6, p1, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;->txBytes:J

    add-long/2addr v6, v10

    cmp-long v5, v6, v2

    if-gez v5, :cond_3

    .line 546
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_2

    .line 547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " traffic: tx "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;->txBytes:J

    sub-long v6, v2, v6

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 548
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 551
    .end local v0    # "rxBytes":J
    .end local v2    # "txBytes":J
    .end local v4    # "uid":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private compluteSuspenFailTime(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x1

    .line 980
    invoke-static {p1}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 981
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsBeahavier:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    :goto_0
    return-void

    .line 985
    :cond_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 986
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    .line 987
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v0    # "count":Ljava/lang/Integer;
    .local v1, "count":Ljava/lang/Integer;
    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsBeahavier:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v2, v3

    sget v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailTimeDelay:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendFailureDelsyMessage(IJ)V

    move-object v0, v1

    .end local v1    # "count":Ljava/lang/Integer;
    .restart local v0    # "count":Ljava/lang/Integer;
    goto :goto_0

    .line 992
    :cond_1
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsBeahavier:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailTimeDelay:I

    mul-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendFailureDelsyMessage(IJ)V

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
    .line 2618
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile # fromFile="

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

    .line 2619
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2620
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2625
    :goto_0
    return-void

    .line 2623
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2624
    .local v0, "sourceFile":Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private getActiveAudioPids()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1348
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1349
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1353
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_pid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1354
    .local v0, "pids":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 1355
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveAudioPids # pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioPidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getBPMEnable_out()Z
    .locals 2

    .prologue
    .line 1519
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 1520
    const-string v0, "OnePlusProcessManager"

    const-string v1, "Fatal: mOnePlusProcessManager = null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    const/4 v0, 0x0

    .line 1523
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusProcessManager;->getBPMEnable()Z

    move-result v0

    goto :goto_0
.end method

.method private getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1906
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService;

    .line 1908
    .local v0, "imManager":Lcom/android/server/InputMethodManagerService;
    if-eqz v0, :cond_0

    .line 1909
    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 1911
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusProcessManager;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 786
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 789
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    return-object v0
.end method

.method static final getLiveComponent(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "wms"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    const/4 v1, 0x0

    .line 2073
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2074
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 2075
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui.ImageWallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2077
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2082
    :cond_0
    return-object v1
.end method

.method public static final getLivePackageForLiveWallPaper()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2063
    const-string v2, "wallpaper"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2065
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->getLiveComponent(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2066
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .param p0, "pid"    # Ljava/lang/String;

    .prologue
    .line 2035
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2036
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2037
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2038
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2039
    monitor-exit v3

    .line 2042
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v1

    .line 2036
    .restart local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2042
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v1, 0x0

    monitor-exit v3

    goto :goto_1

    .line 2043
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getProcessForUid(I)Ljava/util/ArrayList;
    .locals 5
    .param p0, "uid"    # I
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
    .line 2047
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2048
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2049
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2050
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2051
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, p0, :cond_0

    .line 2052
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2049
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2055
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    monitor-exit v4

    return-object v2

    .line 2056
    .end local v0    # "i":I
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getScreenState()Z
    .locals 1

    .prologue
    .line 1632
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenState:Z

    return v0
.end method

.method private getWakeLockedPids()[I
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_0

    .line 1377
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getWakeLockedPids()[I

    move-result-object v0

    return-object v0
.end method

.method static final handlePhoneAppReadyState(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 2382
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2383
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2384
    const-string v0, "OnePlusProcessManager"

    const-string v1, "start phone proc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    .line 2387
    :cond_1
    return-void
.end method

.method static final handlePhoneAppReadyState(Landroid/content/pm/ProviderInfo;)V
    .locals 6
    .param p0, "cpi"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 2395
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    const-string v4, "com.android.phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2396
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2397
    const-string v3, "OnePlusProcessManager"

    const-string v4, "content provider ,we start phone first "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    .line 2400
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x400

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v0

    .line 2402
    .local v0, "apps":Ljava/util/List;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2403
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2404
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 2405
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v4, "com.android.phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2406
    const-string v3, "OnePlusProcessManager"

    const-string v4, "we start phone ok"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;ZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2403
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2411
    .end local v0    # "apps":Ljava/util/List;
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 2414
    :cond_2
    return-void
.end method

.method private isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1869
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

    .line 2417
    if-eqz p2, :cond_0

    array-length v5, p2

    if-lez v5, :cond_0

    if-nez p1, :cond_1

    .line 2426
    :cond_0
    :goto_0
    return v4

    .line 2421
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

    .line 2422
    .local v3, "v":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2423
    const/4 v4, 0x1

    goto :goto_0

    .line 2421
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isInputMethodApplication(Lcom/android/server/am/ProcessRecord;)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v4, 0x0

    .line 1882
    if-nez p1, :cond_1

    .line 1902
    :cond_0
    :goto_0
    return v4

    .line 1886
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 1887
    .local v2, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v2, :cond_5

    .line 1888
    const/4 v3, 0x0

    .line 1889
    .local v3, "p":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1890
    .local v1, "im":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1891
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_3

    .line 1892
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInputMethodApplication # im="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1894
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_4

    .line 1895
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInputMethodApplication # im="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", return true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 1900
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "p":Ljava/lang/String;
    :cond_5
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_0

    .line 1901
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInputMethodApplication # app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", return false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isLocationApplication(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1383
    const-string v4, "location"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService;

    .line 1385
    .local v1, "lm":Lcom/android/server/LocationManagerService;
    if-nez v1, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return v3

    .line 1388
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->getLocationListenersUid()[I

    move-result-object v2

    .line 1389
    .local v2, "uids":[I
    if-eqz v2, :cond_0

    .line 1392
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_2

    .line 1393
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLocationApplication # uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 1395
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLocationApplication # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ---> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1398
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 1399
    aget v4, v2, v0

    if-ne p1, v4, :cond_3

    .line 1400
    const/4 v3, 0x1

    goto :goto_0

    .line 1398
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static isSuspendUid(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 1550
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1551
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1552
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1553
    .end local v0    # "index":I
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
    .line 2530
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2531
    .local v1, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2532
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 2533
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadStateLocked # path="

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

    .line 2576
    .end local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 2536
    .restart local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2537
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 2538
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 2540
    .local v7, "success":Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2541
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2542
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v3, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2545
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 2546
    .local v9, "type":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    .line 2547
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2548
    .local v8, "tag":Ljava/lang/String;
    const-string v11, "p"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2549
    const/4 v11, 0x0

    const-string v12, "att"

    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2550
    .local v10, "value":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 2551
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2555
    .end local v8    # "tag":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    .line 2556
    const/4 v7, 0x1

    .line 2561
    if-eqz v6, :cond_8

    .line 2562
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2563
    const/4 v5, 0x0

    .line 2569
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "type":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :cond_4
    :goto_1
    sget-boolean v11, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v11, :cond_5

    .line 2570
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadStateLocked # path="

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

    .line 2571
    :cond_5
    if-eqz v7, :cond_7

    move-object v1, v4

    .line 2572
    goto :goto_0

    .line 2565
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "type":I
    :catch_0
    move-exception v0

    .line 2566
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 2568
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 2557
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_1
    move-exception v0

    .line 2558
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadStateLocked # path="

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

    .line 2561
    if-eqz v5, :cond_4

    .line 2562
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2563
    const/4 v5, 0x0

    goto :goto_1

    .line 2565
    :catch_2
    move-exception v0

    .line 2566
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2560
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 2561
    :goto_3
    if-eqz v5, :cond_6

    .line 2562
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2563
    const/4 v5, 0x0

    .line 2567
    :cond_6
    :goto_4
    throw v11

    .line 2565
    :catch_3
    move-exception v0

    .line 2566
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2574
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    sget-boolean v11, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v11, :cond_0

    .line 2575
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadStateLocked # "

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

    .line 2560
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 2557
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

    .line 2431
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadXmlLocked #path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 2432
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2433
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 2434
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadXmlLocked # path="

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

    .line 2480
    :cond_0
    :goto_0
    return-object v4

    .line 2437
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2438
    .local v4, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 2439
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 2441
    .local v7, "success":Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2442
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2443
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v3, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2446
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 2447
    .local v9, "type":I
    const/4 v12, 0x2

    if-ne v9, v12, :cond_3

    .line 2448
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2449
    .local v8, "tag":Ljava/lang/String;
    const-string v12, "item"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2450
    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v3, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2452
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 2453
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 2455
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v4, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2459
    .end local v2    # "name":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x1

    if-ne v9, v12, :cond_2

    .line 2460
    const/4 v7, 0x1

    .line 2466
    if-eqz v6, :cond_4

    .line 2467
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v5, v6

    .line 2474
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "type":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :cond_5
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadXmlLocked # path="

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

    .line 2475
    if-nez v7, :cond_0

    .line 2479
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadXmlLocked # "

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

    .line 2480
    goto/16 :goto_0

    .line 2469
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "type":I
    :catch_0
    move-exception v0

    .line 2470
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 2472
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 2461
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_1
    move-exception v0

    .line 2462
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadXmlLocked # path="

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

    .line 2466
    if-eqz v5, :cond_5

    .line 2467
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2469
    :catch_2
    move-exception v0

    .line 2470
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2465
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 2466
    :goto_3
    if-eqz v5, :cond_6

    .line 2467
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2471
    :cond_6
    :goto_4
    throw v11

    .line 2469
    :catch_3
    move-exception v0

    .line 2470
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2465
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 2461
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
    .line 2807
    const-string v0, "OnePlusProcessManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    return-void
.end method

.method private parseActiveAudioPidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "pids"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1360
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 1361
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseActiveAudioPidsStr # pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1371
    :cond_1
    :goto_0
    return-object v0

    .line 1366
    :cond_2
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1370
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1371
    .local v0, "pid":[Ljava/lang/String;
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
    .line 2639
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

    .line 2640
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

    .line 2641
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

    .line 2643
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static final removeMsgFromSuspendQueueByUid(I)V
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 2124
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 2136
    :cond_0
    :goto_0
    return-void

    .line 2127
    :cond_1
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 2130
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 2133
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v1, p0, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2134
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v1, p0, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private resumeAdjTargetFromAdjSource(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1636
    if-nez p1, :cond_1

    .line 1663
    :cond_0
    :goto_0
    return-void

    .line 1640
    :cond_1
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v4, v4, Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 1641
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1642
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1646
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1652
    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1653
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1654
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeAdjTargetFromAdjSource # app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", target ai="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 1657
    :cond_2
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v5, "resume adjTarget"

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1658
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1659
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: resumeAdjTargetFromAdjSource # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 1660
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final resumeProcessByUID_out(ILjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;

    .prologue
    .line 2141
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_0

    .line 2145
    :goto_0
    return-void

    .line 2144
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public static final resumeProcessByUID_out(ILjava/lang/String;Z)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;
    .param p2, "isResumeTop"    # Z

    .prologue
    .line 2151
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 2175
    :cond_0
    :goto_0
    return-void

    .line 2154
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 2157
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 2161
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v1, p0, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2162
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v1, p0, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2164
    :cond_2
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2165
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeProcessByUID_out # uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isResumeTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2167
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    .line 2168
    if-nez p2, :cond_4

    .line 2169
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->checkIsRelateProcess(ILjava/lang/String;Z)Z

    .line 2172
    :cond_4
    if-eqz p2, :cond_0

    .line 2173
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->checkIsRelateProcess(ILjava/lang/String;Z)Z

    goto :goto_0
.end method

.method private resumeTopRelateProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1666
    if-nez p1, :cond_1

    .line 1715
    :cond_0
    :goto_0
    return-void

    .line 1669
    :cond_1
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_0

    .line 1673
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-nez v4, :cond_0

    .line 1676
    :cond_2
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_3

    .line 1677
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resumeTopRelateProcess # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->resumeAdjTargetFromAdjSource(Lcom/android/server/am/ProcessRecord;)V

    .line 1682
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1683
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 1684
    .local v1, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v4, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_4

    .line 1686
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, v5, :cond_4

    .line 1687
    iget-object v4, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "TopRelateProcess connection"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto :goto_1

    .line 1694
    .end local v1    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_0
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1695
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 1696
    .local v0, "cc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v4, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_6

    .line 1697
    iget-object v4, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, v5, :cond_6

    .line 1698
    iget-object v4, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "TopRelateProcess conProviders"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1705
    .end local v0    # "cc":Lcom/android/server/am/ContentProviderConnection;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 1706
    .local v2, "e":Ljava/util/ConcurrentModificationException;
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConcurrentModificationException # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-virtual {v2}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 1711
    .end local v2    # "e":Ljava/util/ConcurrentModificationException;
    :cond_7
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_0

    .line 1712
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "TopRelateProcess adjSource"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private resumeUidSync(ILjava/lang/String;)I
    .locals 4
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1557
    const/16 v1, 0x2710

    if-ge p1, v1, :cond_0

    .line 1569
    :goto_0
    return v0

    .line 1561
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v2, p1, -0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1562
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1563
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 1564
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeUidSync # uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", why="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)V

    .line 1567
    const/4 v0, 0x1

    goto :goto_0

    .line 1569
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static saveBpmStsLocked(Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "sts"    # Z

    .prologue
    const/4 v5, 0x1

    .line 2581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveBpmStsLocked # path="

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

    .line 2582
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2583
    .local v1, "endLine":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2585
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2587
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 2588
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2589
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2590
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2591
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2592
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2594
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2595
    const/4 v7, 0x0

    const-string v8, "att"

    if-eqz p1, :cond_2

    const-string v6, "true"

    :goto_0
    invoke-interface {v2, v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2596
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2597
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2599
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2600
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2601
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2608
    if-eqz v4, :cond_0

    .line 2609
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    move-object v3, v4

    .line 2613
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    return v5

    .line 2595
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

    .line 2611
    :catch_0
    move-exception v0

    .line 2612
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2603
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 2604
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

    .line 2605
    const/4 v5, 0x0

    .line 2608
    if-eqz v3, :cond_1

    .line 2609
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 2611
    :catch_2
    move-exception v0

    .line 2612
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2607
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 2608
    :goto_4
    if-eqz v3, :cond_3

    .line 2609
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2613
    :cond_3
    :goto_5
    throw v5

    .line 2611
    :catch_3
    move-exception v0

    .line 2612
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2607
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 2603
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

    .line 2485
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveXmlLocked # path="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 2486
    if-nez p1, :cond_0

    move v7, v8

    .line 2525
    :goto_0
    return v7

    .line 2490
    :cond_0
    const-string v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2491
    .local v1, "endLine":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2493
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2495
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 2496
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2497
    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2498
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2499
    const/4 v7, 0x0

    const-string v10, "cfg"

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2500
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2502
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

    .line 2503
    .local v4, "ss":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    const-string v10, "item"

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2504
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v10, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2506
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2507
    const/4 v7, 0x0

    const-string v10, "item"

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2508
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 2515
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "ss":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 2516
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

    .line 2520
    if-eqz v5, :cond_1

    .line 2521
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_3
    move v7, v8

    .line 2525
    goto/16 :goto_0

    .line 2511
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

    .line 2512
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2513
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2520
    if-eqz v6, :cond_3

    .line 2521
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_4
    move v7, v9

    .line 2525
    goto/16 :goto_0

    .line 2523
    :catch_1
    move-exception v0

    .line 2524
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2523
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 2524
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2519
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 2520
    :goto_5
    if-eqz v5, :cond_4

    .line 2521
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2525
    :cond_4
    :goto_6
    throw v7

    .line 2523
    :catch_3
    move-exception v0

    .line 2524
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2519
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 2515
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private sendResumeMessage(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .prologue
    .line 922
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 923
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, -0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 924
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 925
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 926
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 927
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 928
    return-void
.end method

.method private sendResumeProcessMessage(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1573
    const/16 v2, 0x2710

    if-ge p1, v2, :cond_1

    .line 1595
    :cond_0
    :goto_0
    return v0

    .line 1576
    :cond_1
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 1577
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendResumeProcessMessage # uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", why = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v3, p1, -0x2710

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1580
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    add-int/lit16 v2, p1, -0x2710

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1582
    goto :goto_0

    .line 1584
    :cond_3
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeMessage(IJ)V

    .line 1592
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResumeProcessMessage # uid = "

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

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1593
    goto :goto_0
.end method

.method public static sendSignal(II)V
    .locals 3
    .param p0, "pid"    # I
    .param p1, "sigNo"    # I

    .prologue
    .line 516
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 517
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSignal # pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sigNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    invoke-static {p0, p1}, Landroid/os/Process;->sendSignal(II)V

    .line 520
    return-void
.end method

.method private sendSuspendFailureDelsyMessage(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .prologue
    .line 793
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 794
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x71

    iput v1, v0, Landroid/os/Message;->what:I

    .line 795
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 796
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 797
    return-void
.end method

.method private sendSuspendMessage(Lcom/android/server/am/ProcessRecord;J)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "delay"    # J

    .prologue
    .line 800
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 801
    .local v6, "msg":Landroid/os/Message;
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    add-int/lit16 v0, v0, -0x2710

    iput v0, v6, Landroid/os/Message;->what:I

    .line 802
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, v6, Landroid/os/Message;->arg1:I

    .line 803
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v0, v6, Landroid/os/Message;->arg2:I

    .line 804
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;-><init>(Lcom/android/server/am/ProcessRecord;JJ)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 805
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 806
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSuspendMessage delay for Previous_app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    const-wide/32 v2, 0x30d40

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 811
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    invoke-virtual {v0, v6, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setCGroupStateLocked(IZ)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .prologue
    .line 332
    const/16 v12, 0x2710

    move/from16 v0, p1

    if-lt v0, v12, :cond_1

    .line 333
    const/4 v1, 0x0

    .line 335
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

    .line 336
    .local v8, "mCgroupFreezerstate":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 338
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 339
    .local v9, "pf":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 340
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 342
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 343
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 344
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
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 383
    if-eqz v1, :cond_1

    .line 384
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    const/4 v1, 0x0

    .line 393
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "f":Ljava/io/File;
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .end local v9    # "pf":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 387
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v9    # "pf":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 388
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: 2-->  setCGroupStateLocked # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "pf":Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 350
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .local v2, "cgroupout":Ljava/io/FileOutputStream;
    :try_start_3
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 351
    if-eqz p2, :cond_4

    .line 353
    :try_start_4
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 354
    .local v7, "index":I
    if-gez v7, :cond_3

    .line 355
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsBeahavier:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v12, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setCGroupStateLocked "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " FROZEN"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v6, "FROZEN"

    .line 362
    .local v6, "freeze":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 363
    .local v10, "statebuffer":[B
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 377
    .end local v6    # "freeze":Ljava/lang/String;
    .end local v10    # "statebuffer":[B
    :cond_3
    :goto_1
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 383
    if-eqz v2, :cond_7

    .line 384
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 385
    const/4 v1, 0x0

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 366
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v7    # "index":I
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_6
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 367
    .restart local v7    # "index":I
    if-ltz v7, :cond_5

    .line 368
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 371
    :cond_5
    const-string v12, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setCGroupStateLocked "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " THAWED"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v11, "THAWED"

    .line 373
    .local v11, "thawed":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 374
    .restart local v10    # "statebuffer":[B
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1

    .line 377
    .end local v7    # "index":I
    .end local v10    # "statebuffer":[B
    .end local v11    # "thawed":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v12
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 378
    :catch_1
    move-exception v4

    move-object v1, v2

    .line 379
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "f":Ljava/io/File;
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .local v4, "ex":Ljava/io/IOException;
    :goto_2
    :try_start_8
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException -->  setCGroupStateLocked # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 383
    if-eqz v1, :cond_1

    .line 384
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 385
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 387
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "index":I
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 388
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: 2-->  setCGroupStateLocked # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 387
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "index":I
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v4    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 388
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: 2-->  setCGroupStateLocked # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 382
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v12

    .line 383
    :goto_3
    if-eqz v1, :cond_6

    .line 384
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 385
    const/4 v1, 0x0

    .line 390
    :cond_6
    :goto_4
    throw v12

    .line 387
    :catch_4
    move-exception v3

    .line 388
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException: 2-->  setCGroupStateLocked # "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 382
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    :catchall_2
    move-exception v12

    move-object v1, v2

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 378
    .end local v5    # "f":Ljava/io/File;
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    :catch_5
    move-exception v4

    goto/16 :goto_2

    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "index":I
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    :cond_7
    move-object v1, v2

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method static final setPhoneAppReadyState(Z)V
    .locals 0
    .param p0, "isPhoneAppReady"    # Z

    .prologue
    .line 2373
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    .line 2374
    return-void
.end method

.method static final skipBroadcast(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 3
    .param p0, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "ordered"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2321
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_1

    .line 2336
    :cond_0
    :goto_0
    return v0

    .line 2324
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_0

    .line 2327
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v2, p1}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcastRefApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2328
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2

    .line 2329
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

    .line 2334
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private skipBroadcastRefApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v3, 0x0

    .line 1959
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v4, :cond_1

    .line 2031
    :cond_0
    :goto_0
    return v3

    .line 1962
    :cond_1
    if-eqz p1, :cond_0

    .line 1965
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_2

    .line 1966
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipBroadcastRefApp():app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 1968
    :cond_2
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1969
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_0

    .line 1970
    const-string v4, "OnePlusProcessManager"

    const-string v5, "skipBroadcastRefApp # no skip # because uid and callingUid not suspended"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1976
    :cond_3
    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v5, :cond_5

    .line 1977
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_4

    .line 1978
    const-string v4, "OnePlusProcessManager"

    const-string v5, "skipBroadcastRefApp # no skip # because uid is the same"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_4
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipBroadcastRefApp callinguid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto :goto_0

    .line 1985
    :cond_5
    iget-boolean v4, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v4, :cond_7

    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->mScreenState:Z

    if-eqz v4, :cond_7

    .line 1986
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_6

    .line 1987
    const-string v4, "OnePlusProcessManager"

    const-string v5, "skipBroadcastRefApp # no skip # because ordered"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_6
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1990
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipBroadcastRefApp ordered "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 1995
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1996
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1997
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_9

    .line 1998
    const-string v4, "OnePlusProcessManager"

    const-string v5, "skipBroadcastRefApp # no skip # mBrdList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    :cond_9
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "skipBroadcastRefApp mBrdList"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2004
    .end local v0    # "action":Ljava/lang/String;
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2005
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_b

    .line 2006
    const-string v4, "OnePlusProcessManager"

    const-string v5, "skipBroadcastRefApp # no skip # checkIsNeedResumeProcess"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_b
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "skipBroadcastRefApp checkIsNeedResumeProcess "

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2011
    :cond_c
    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_e

    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 2012
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_d

    .line 2013
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipBroadcastRefApp # no skip # callingUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callingPid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_d
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " skipBroadcastRefApp firstApplication"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "callinguid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2022
    :cond_e
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2024
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_10

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2025
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_f

    .line 2026
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipBroadcastRefApp # no skip # top app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_f
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipBroadcastRefApp top Process"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2031
    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private suspendProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1467
    if-nez p1, :cond_1

    .line 1500
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    .line 1475
    :try_start_0
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsSuspendForFailDelay(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1476
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 1477
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsSuspendForFailDelay fail for delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1497
    :catch_0
    move-exception v0

    .line 1498
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspend Process failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1482
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    iget-boolean v1, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_3

    .line 1483
    const-wide/32 v2, 0xfde8

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendMessage(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_0

    .line 1486
    :cond_3
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1487
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_4

    .line 1488
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspendProcess # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    add-int/lit16 v2, v2, -0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1490
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    add-int/lit16 v2, v2, -0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1491
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 1492
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "already exist MSG: SUSPEND_PROCESS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1495
    :cond_5
    const-wide/32 v2, 0xfde8

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendMessage(Lcom/android/server/am/ProcessRecord;J)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private suspendProcessRelate(Landroid/util/ArrayMap;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "mUidPolicy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 892
    const/4 v1, 0x0

    .local v1, "conni":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 893
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 894
    .local v5, "uid":Ljava/lang/Integer;
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 895
    .local v0, "checkReturn":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 896
    const/4 v3, 0x0

    .line 897
    .local v3, "isPreviousApp":Z
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 898
    .local v4, "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 899
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_0

    .line 900
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    const-wide/32 v8, 0x30d40

    invoke-direct {p0, v6, v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendMessage(Lcom/android/server/am/ProcessRecord;J)V

    .line 901
    const/4 v3, 0x1

    .line 898
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 904
    :cond_1
    if-nez v3, :cond_2

    .line 905
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6, v10}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)V

    .line 892
    .end local v2    # "i":I
    .end local v3    # "isPreviousApp":Z
    .end local v4    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 907
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 908
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6, v11}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)V

    .line 909
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 910
    .restart local v4    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 911
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v6}, Lcom/android/server/am/OnePlusProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V

    .line 912
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6, v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 910
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 918
    .end local v0    # "checkReturn":Ljava/lang/Integer;
    .end local v2    # "i":I
    .end local v4    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v5    # "uid":Ljava/lang/Integer;
    :cond_4
    return v10
.end method

.method static final suspendProcessState_out(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2258
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 2259
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 2260
    const-string v0, "OnePlusProcessManager"

    const-string v1, "ignore----> suspendProcessState_out # mBPMStatus = false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    :cond_0
    :goto_0
    return-void

    .line 2263
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 2266
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_2

    .line 2270
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 2271
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore----> suspendProcessState_out # sys app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2274
    :cond_2
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_3

    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suspendProcessState_out # app = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 2276
    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2277
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0
.end method

.method private updateProcessStateForChanged(Z)V
    .locals 5
    .param p1, "inUsing"    # Z

    .prologue
    .line 1807
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->updateWidgets()V

    .line 1808
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1809
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProcessStateForChanged # inUsing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1813
    if-eqz p1, :cond_3

    .line 1814
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 1815
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1816
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1

    .line 1817
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1818
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "updateProcessStateForChanged"

    invoke-direct {p0, v2, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    .line 1814
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1820
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 1833
    .end local v0    # "i":I
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1825
    :cond_3
    :try_start_1
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 1826
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1827
    .restart local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_4

    .line 1828
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "updateProcessStateForChanged"

    invoke-direct {p0, v2, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    .line 1825
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1833
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1835
    return-void
.end method

.method private updateProcessStateForWidgetChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1841
    if-eqz p1, :cond_0

    .line 1842
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateWidget(Ljava/lang/String;)V

    .line 1845
    :cond_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1846
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1847
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1848
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1

    .line 1849
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1850
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "updateProcessStateForWidgetChanged"

    invoke-direct {p0, v2, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    .line 1846
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1852
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 1856
    .end local v0    # "i":I
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i":I
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1857
    return-void
.end method

.method static final updateProcessState_out(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1778
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 1779
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 1780
    const-string v0, "OnePlusProcessManager"

    const-string v1, "ignore----> updateProcessState_out # mBPMStatus = false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_0
    :goto_0
    return-void

    .line 1783
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_0

    .line 1786
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1787
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProcessState_out # update-oom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    :cond_2
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 1792
    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_3

    .line 1794
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 1795
    const-string v0, "OnePlusProcessManager"

    const-string v1, "updateProcessState_out # return , system app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1798
    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 1799
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->updateProcessState(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0
.end method

.method public static updateScreenState(Z)V
    .locals 2
    .param p0, "screenState"    # Z

    .prologue
    .line 1599
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScreenState # screenState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 1601
    :cond_0
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mScreenState:Z

    .line 1606
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 1629
    :cond_1
    return-void
.end method

.method private updateWidget(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1879
    return-void
.end method

.method private updateWidgets()V
    .locals 0

    .prologue
    .line 1875
    return-void
.end method

.method private static writePidToTasksFile(II)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 396
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V

    .line 397
    return-void
.end method

.method private static writePidToTasksFile(IIZ)V
    .locals 17
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "retry"    # Z

    .prologue
    .line 400
    const/16 v13, 0x2710

    move/from16 v0, p0

    if-ge v0, v13, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    const/4 v8, -0x1

    .line 404
    .local v8, "pidState":I
    const/4 v2, 0x0

    .line 406
    .local v2, "cgroupout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/sys/fs/cgroup/freezer/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/tasks"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 408
    .local v7, "mCgroupFreezerPathbytasks":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    .line 410
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 411
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 412
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 415
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    .line 416
    const-string v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not exist ------- Exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    if-eqz v2, :cond_0

    .line 443
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 444
    const/4 v2, 0x0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v4

    .line 447
    .local v4, "ec":Ljava/io/IOException;
    const-string v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException --> writePidToTasksFile # uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : close Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 420
    .end local v4    # "ec":Ljava/io/IOException;
    :cond_3
    :try_start_2
    const-string v10, ""

    .line 421
    .local v10, "pidsStr":Ljava/lang/String;
    const-string v11, ""

    .line 422
    .local v11, "pidsStr_debug":Ljava/lang/String;
    const-string v12, ""

    .line 423
    .local v12, "processName":Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 424
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .local v3, "cgroupout":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 426
    .local v9, "pidbuffer":[B
    sget-boolean v13, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v13, :cond_4

    .line 427
    invoke-static/range {p1 .. p1}, Landroid/os/Process;->isProcessSuspend(I)I

    move-result v8

    .line 429
    :cond_4
    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 431
    sget-boolean v13, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v13, :cond_5

    .line 432
    const-string v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "writePidToTasksFile # uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", retry="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " --> ok"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 442
    :cond_5
    if-eqz v3, :cond_8

    .line 443
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 444
    const/4 v2, 0x0

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 446
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 447
    .restart local v4    # "ec":Ljava/io/IOException;
    const-string v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException --> writePidToTasksFile # uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : close Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 450
    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 433
    .end local v4    # "ec":Ljava/io/IOException;
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .end local v9    # "pidbuffer":[B
    .end local v10    # "pidsStr":Ljava/lang/String;
    .end local v11    # "pidsStr_debug":Ljava/lang/String;
    .end local v12    # "processName":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 434
    .local v5, "ex":Ljava/io/IOException;
    :goto_1
    :try_start_5
    const-string v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException --> writePidToTasksFile # uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", retry = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", pidState="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    if-eqz p2, :cond_6

    .line 438
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    move/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFileDelayed(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 442
    :cond_6
    if-eqz v2, :cond_0

    .line 443
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 444
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 446
    :catch_3
    move-exception v4

    .line 447
    .restart local v4    # "ec":Ljava/io/IOException;
    const-string v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException --> writePidToTasksFile # uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : close Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 441
    .end local v4    # "ec":Ljava/io/IOException;
    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 442
    :goto_2
    if-eqz v2, :cond_7

    .line 443
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 444
    const/4 v2, 0x0

    .line 449
    :cond_7
    :goto_3
    throw v13

    .line 446
    :catch_4
    move-exception v4

    .line 447
    .restart local v4    # "ec":Ljava/io/IOException;
    const-string v14, "OnePlusProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException --> writePidToTasksFile # uid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", pid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " : close Exception : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 441
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v4    # "ec":Ljava/io/IOException;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v6    # "f":Ljava/io/File;
    .restart local v7    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .restart local v10    # "pidsStr":Ljava/lang/String;
    .restart local v11    # "pidsStr_debug":Ljava/lang/String;
    .restart local v12    # "processName":Ljava/lang/String;
    :catchall_1
    move-exception v13

    move-object v2, v3

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 433
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v5

    move-object v2, v3

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v9    # "pidbuffer":[B
    :cond_8
    move-object v2, v3

    .end local v3    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method


# virtual methods
.method addOPPMValueByApp(Lcom/android/server/am/ProcessRecord;)I
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2732
    const/4 v0, 0x0

    .line 2733
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 2734
    .local v1, "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    if-nez p1, :cond_0

    .line 2735
    const/4 v0, -0x1

    move v8, v0

    .line 2753
    .end local v0    # "ret":I
    .local v8, "ret":I
    :goto_0
    return v8

    .line 2739
    .end local v8    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/OnePlusProcessManager;->getOPPMValueByUid(I)Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    move-result-object v1

    .line 2740
    if-nez v1, :cond_1

    .line 2741
    const/4 v0, 0x1

    .line 2742
    new-instance v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    .end local v1    # "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;-><init>(Lcom/android/server/am/OnePlusProcessManager;IILjava/lang/String;J)V

    .line 2744
    .restart local v1    # "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;-><init>(Lcom/android/server/am/OnePlusProcessManager;I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v8, v0

    .line 2753
    .end local v0    # "ret":I
    .restart local v8    # "ret":I
    goto :goto_0

    .line 2746
    .end local v8    # "ret":I
    .restart local v0    # "ret":I
    :cond_1
    const/4 v0, 0x2

    .line 2747
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v2, v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->uid:I

    .line 2748
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v2, v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->pid:I

    .line 2749
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->processName:Ljava/lang/String;

    .line 2750
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->lastResumeTime:J

    goto :goto_1
.end method

.method addOPPMValueByUid(I)I
    .locals 9
    .param p1, "uid"    # I

    .prologue
    .line 2709
    const/4 v0, 0x0

    .line 2710
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 2711
    .local v1, "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    const/16 v2, 0x2710

    if-ge p1, v2, :cond_0

    .line 2712
    const/4 v0, -0x1

    move v8, v0

    .line 2728
    .end local v0    # "ret":I
    .local v8, "ret":I
    :goto_0
    return v8

    .line 2716
    .end local v8    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getOPPMValueByUid(I)Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    move-result-object v1

    .line 2717
    if-nez v1, :cond_1

    .line 2718
    const/4 v0, 0x1

    .line 2719
    new-instance v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    .end local v1    # "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;-><init>(Lcom/android/server/am/OnePlusProcessManager;IILjava/lang/String;J)V

    .line 2721
    .restart local v1    # "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;

    invoke-direct {v3, p0, p1}, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;-><init>(Lcom/android/server/am/OnePlusProcessManager;I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v8, v0

    .line 2728
    .end local v0    # "ret":I
    .restart local v8    # "ret":I
    goto :goto_0

    .line 2723
    .end local v8    # "ret":I
    .restart local v0    # "ret":I
    :cond_1
    const/4 v0, 0x2

    .line 2724
    iput p1, v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->uid:I

    .line 2725
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->lastResumeTime:J

    goto :goto_1
.end method

.method checkAppDelayStateValuable(ZILcom/android/server/am/ProcessRecord;Z)Z
    .locals 8
    .param p1, "byUid"    # Z
    .param p2, "uid"    # I
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "freeze"    # Z

    .prologue
    const/16 v7, 0x2710

    const/4 v6, 0x1

    .line 2758
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v3, :cond_0

    .line 2759
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAppDelayStateValuable # mResumeMap.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :cond_0
    const/4 v1, 0x0

    .line 2761
    .local v1, "valuable":Z
    const/4 v0, 0x0

    .line 2762
    .local v0, "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    if-ne p1, v6, :cond_3

    .line 2763
    if-ge p2, v7, :cond_1

    .line 2764
    const/4 v1, 0x0

    move v2, v1

    .line 2803
    .end local v1    # "valuable":Z
    .local v2, "valuable":I
    :goto_0
    return v2

    .line 2767
    .end local v2    # "valuable":I
    .restart local v1    # "valuable":Z
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusProcessManager;->getOPPMValueByUid(I)Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    move-result-object v0

    .line 2776
    :goto_1
    if-nez v0, :cond_8

    .line 2777
    if-ne p4, v6, :cond_6

    .line 2778
    const/4 v1, 0x1

    :cond_2
    :goto_2
    move v2, v1

    .line 2803
    .restart local v2    # "valuable":I
    goto :goto_0

    .line 2769
    .end local v2    # "valuable":I
    :cond_3
    if-eqz p3, :cond_4

    iget v3, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ge v3, v7, :cond_5

    .line 2770
    :cond_4
    const/4 v1, 0x0

    move v2, v1

    .line 2771
    .restart local v2    # "valuable":I
    goto :goto_0

    .line 2773
    .end local v2    # "valuable":I
    :cond_5
    iget v3, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->getOPPMValueByUid(I)Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    move-result-object v0

    goto :goto_1

    .line 2780
    :cond_6
    const/4 v1, 0x1

    .line 2781
    if-ne p1, v6, :cond_7

    .line 2782
    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusProcessManager;->addOPPMValueByUid(I)I

    goto :goto_2

    .line 2784
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/server/am/OnePlusProcessManager;->addOPPMValueByApp(Lcom/android/server/am/ProcessRecord;)I

    goto :goto_2

    .line 2788
    :cond_8
    if-ne p4, v6, :cond_a

    .line 2789
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->lastResumeTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xfde8

    cmp-long v3, v4, v6

    if-gez v3, :cond_9

    .line 2790
    const/4 v1, 0x0

    .line 2791
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 2792
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAppDelayStateValuable(): ov = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2794
    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    .line 2797
    :cond_a
    const/4 v1, 0x1

    .line 2798
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->lastResumeTime:J

    goto :goto_2
.end method

.method public checkPackage(Landroid/content/pm/ApplicationInfo;)Z
    .locals 6
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1306
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1307
    .local v1, "pkg":Ljava/lang/String;
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1333
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 1319
    :cond_2
    if-nez p1, :cond_3

    .line 1320
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

    goto :goto_0

    .line 1324
    :cond_3
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_5

    .line 1325
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1326
    .restart local v1    # "pkg":Ljava/lang/String;
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 1327
    goto :goto_0

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_5
    move v2, v3

    .line 1333
    goto :goto_0
.end method

.method public checkPackageCanStart(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v0, 0x0

    .line 1915
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_1

    .line 1944
    :cond_0
    :goto_0
    return v0

    .line 1920
    :cond_1
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    .line 1924
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1930
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_0

    .line 1935
    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusProcessManager;->checkBroadcast(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1940
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkPackage(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1944
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x1

    .line 932
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v2, :cond_0

    .line 944
    :goto_0
    return v1

    .line 937
    :cond_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 938
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->getLivePackageForLiveWallPaper()Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "wallpaperPkg":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/OnePlusProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 940
    monitor-exit v2

    goto :goto_0

    .line 942
    .end local v0    # "wallpaperPkg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "wallpaperPkg":Ljava/lang/String;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 944
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    goto :goto_0
.end method

.method public checkTouchWindow(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/16 v5, 0x28

    .line 1284
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindow:Ljava/util/HashMap;

    monitor-enter v3

    .line 1285
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindow:Ljava/util/HashMap;

    .line 1287
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindow:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindow:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1288
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindow:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1289
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/WindowManagerPolicy$WindowState;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1290
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1291
    .local v1, "token":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v2, v4, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v2, v5, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 1294
    const/4 v2, 0x1

    monitor-exit v3

    .line 1299
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/WindowManagerPolicy$WindowState;>;"
    .end local v1    # "token":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    return v2

    .line 1298
    :cond_1
    monitor-exit v3

    .line 1299
    const/4 v2, 0x0

    goto :goto_0

    .line 1298
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@The BPM status is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2647
    const-string v0, "@The BPM list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 2648
    const-string v0, "@The PKG list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 2649
    const-string v0, "@The BRD list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 2650
    const-string v0, "@The BAD list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBadList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 2651
    const-string v0, "@The AppWidget list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 2652
    const-string v0, "@The suspend list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    return-void
.end method

.method public getBPMEnable()Z
    .locals 3

    .prologue
    .line 1503
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 1504
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBPMEnable #  BPMStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method getOPPMValueByUid(I)Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 2693
    const/4 v2, 0x0

    .line 2694
    .local v2, "ret":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    const/16 v3, 0x2710

    if-ge p1, v3, :cond_0

    .line 2695
    const/4 v3, 0x0

    .line 2705
    :goto_0
    return-object v3

    .line 2698
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2699
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/am/OnePlusProcessManager$OPPMKey;Lcom/android/server/am/OnePlusProcessManager$OPPMValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;

    iget v3, v3, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;->uid:I

    if-ne v3, p1, :cond_1

    .line 2700
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ret":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    check-cast v2, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/am/OnePlusProcessManager$OPPMKey;Lcom/android/server/am/OnePlusProcessManager$OPPMValue;>;"
    .restart local v2    # "ret":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    :cond_2
    move-object v3, v2

    .line 2705
    goto :goto_0
.end method

.method loadNPMConfigFiles()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 736
    const-string v2, "loadNPMConfigFiles"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 737
    const-string v2, "/data/data_bpm/pkg.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 738
    const-string v2, "/data/data_bpm/brd.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 739
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 740
    const-string v2, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FO]loadNPMConfigFiles # mPkgList.size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string v2, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FO]loadNPMConfigFiles # mBrdList.size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_0
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 745
    .local v0, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 746
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v3

    .line 747
    .local v1, "temp":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 748
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 762
    .end local v1    # "temp":Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    .line 763
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 764
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]loadNPMConfigFiles # mBPMStatus= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_3
    return-void

    :cond_4
    move v1, v4

    .line 746
    goto :goto_0

    .line 750
    .restart local v1    # "temp":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareConfigStatus()V

    .line 751
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    if-ne v2, v3, :cond_6

    .line 752
    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 753
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 754
    :cond_6
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 755
    invoke-virtual {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 756
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 758
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    goto :goto_1
.end method

.method loop()V
    .locals 4

    .prologue
    .line 2835
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2836
    const-string v2, "OnePlusProcessManager"

    const-string v3, "CgroupLoop"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :cond_0
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2838
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2839
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 2840
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->checkSuspendProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2841
    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->suspendProcessState_out(Lcom/android/server/am/ProcessRecord;)V

    .line 2843
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-eqz v2, :cond_2

    .line 2844
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v3, "--loop--"

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 2838
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2848
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public openDebug(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 2634
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 2635
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 2636
    return-void
.end method

.method prepareBPMConfigFiles()V
    .locals 5

    .prologue
    .line 1439
    const-string v2, "OnePlusProcessManager"

    const-string v3, "[FO]prepareBPMConfigFiles"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data_bpm/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1442
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1443
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1446
    :cond_0
    const-string v2, "/system/bpm/pkg.xml"

    const-string v3, "/data/data_bpm/pkg.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const-string v2, "/system/bpm/brd.xml"

    const-string v3, "/data/data_bpm/brd.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    const-string v2, "/system/bpm/bpm_sts.xml"

    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1455
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/pkg.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1456
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/brd.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1457
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/bpm_sts.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1462
    :goto_1
    return-void

    .line 1449
    :catch_0
    move-exception v0

    .line 1450
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]initBPMConfigFiles # failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1458
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1459
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

    .line 1460
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method prepareConfigStatus()V
    .locals 8

    .prologue
    .line 696
    const-string v7, "prepareConfigStatus()"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 697
    const-string v7, "/data/data_bpm/cfg.xml"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 698
    .local v0, "dataCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "/system/bpm/cfg.xml"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 703
    .local v5, "sysCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 704
    .local v4, "sv":I
    const/4 v2, 0x0

    .line 705
    .local v2, "dv":I
    if-nez v5, :cond_1

    .line 706
    const/4 v4, 0x0

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    const-string v7, "version"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 710
    .local v6, "sysVersion":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 713
    if-nez v0, :cond_3

    .line 714
    const/4 v2, 0x0

    .line 720
    :goto_1
    if-le v4, v2, :cond_0

    .line 721
    const-string v7, "forceSwitch"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 722
    .local v3, "forceSwitch":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 723
    const-string v7, "on"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 724
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    .line 730
    :cond_2
    :goto_2
    const-string v7, "/data/data_bpm/cfg.xml"

    invoke-static {v7, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveXmlLocked(Ljava/lang/String;Ljava/util/HashMap;)Z

    goto :goto_0

    .line 716
    .end local v3    # "forceSwitch":Ljava/lang/String;
    :cond_3
    const-string v7, "version"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 717
    .local v1, "dataVersion":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 725
    .end local v1    # "dataVersion":Ljava/lang/String;
    .restart local v3    # "forceSwitch":Ljava/lang/String;
    :cond_4
    const-string v7, "off"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 726
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    goto :goto_2
.end method

.method public setBPMEnable(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 1509
    if-eqz p1, :cond_0

    .line 1510
    const-string v0, "sys.cgroup.active"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    :goto_0
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 1516
    return-void

    .line 1512
    :cond_0
    const-string v0, "sys.cgroup.active"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCGroupState(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .prologue
    const/4 v4, 0x1

    .line 462
    const/16 v1, 0x2710

    if-ge p1, v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 466
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_2

    if-ne p2, v4, :cond_2

    .line 467
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 468
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCGroupState # uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",   ---> mBPMStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  --> ignore.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :cond_2
    const-string v1, "persist.sys.cgroup.way"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 474
    .local v0, "cgroup_way":I
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_3

    .line 475
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCGroupState # uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  cgroup_way="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 511
    :cond_4
    :goto_1
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupStateLocked(IZ)V

    goto :goto_0

    .line 491
    :pswitch_2
    const/4 p2, 0x1

    .line 492
    goto :goto_1

    .line 494
    :pswitch_3
    const/4 p2, 0x0

    .line 495
    goto :goto_1

    .line 497
    :pswitch_4
    if-ne p2, v4, :cond_4

    goto/16 :goto_0

    .line 502
    :pswitch_5
    if-nez p2, :cond_4

    goto/16 :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public updateProcessState(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1746
    if-nez p1, :cond_1

    .line 1772
    :cond_0
    :goto_0
    return-void

    .line 1749
    :cond_1
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    .line 1752
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v1, :cond_0

    .line 1757
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1760
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    .line 1761
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_2

    .line 1762
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProcessState # (top app)r.processName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> (input app) app.processName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->resumeTopRelateProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1766
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1767
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0
.end method

.method updateProperties()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 768
    const-string v0, "persist.sys.cgroup.using"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->IN_USING:I

    .line 770
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->IN_USING:I

    packed-switch v0, :pswitch_data_0

    .line 780
    :goto_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 781
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FO]updateProperties # mBPMStatus= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , IN_USING="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/am/OnePlusProcessManager;->IN_USING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    return-void

    .line 772
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    goto :goto_0

    .line 775
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    goto :goto_0

    .line 770
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method writePidToTasksFileDelayed(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 454
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 455
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x72

    iput v1, v0, Landroid/os/Message;->what:I

    .line 456
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 457
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 458
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 459
    return-void
.end method
