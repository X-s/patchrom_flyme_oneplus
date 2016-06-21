.class public abstract Lcom/android/systemui_ex/statusbar/BaseStatusBar;
.super Lcom/android/systemui_ex/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui_ex/RecentsComponent$Callbacks;
.implements Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui_ex/statusbar/NotificationData$Environment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;,
        Lcom/android/systemui_ex/statusbar/BaseStatusBar$TouchOutsideListener;,
        Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;,
        Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;,
        Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final FOREVER_DISPLAY_APP:[Ljava/lang/String;


# instance fields
.field private final SCREEN_ON_INTERVAL:I

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mBouncerShowing:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCommandQueue:Lcom/android/systemui_ex/statusbar/CommandQueue;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field protected mDisableNotificationAlerts:Z

.field protected mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

.field protected mDisplay:Landroid/view/Display;

.field protected mDreamManager:Landroid/service/dreams/IDreamManager;

.field protected mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

.field private mFastOutLinearIn:Landroid/animation/TimeInterpolator;

.field private mFontScale:F

.field protected mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

.field protected mHeadsUpNotificationDecay:I

.field protected mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

.field protected mHeadsUpTicker:Z

.field protected mKeyguardIconOverflowContainer:Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

.field private mLastOnTime:J

.field protected mLayoutDirection:I

.field private mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

.field private mLocale:Ljava/util/Locale;

.field private mLockscreenPublicMode:Z

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field protected mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

.field private mNotificationGutsExposed:Lcom/android/systemui_ex/statusbar/NotificationGuts;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field mPowerManager:Landroid/os/PowerManager;

.field private mRecents:Lcom/android/systemui_ex/RecentsComponent;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mRowMaxHeight:I

.field protected mRowMinHeight:I

.field protected mScreenOnFromKeyguard:Z

.field protected mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

.field private mSensors:Landroid/hardware/SensorManager;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mShowLockscreenNotifications:Z

.field protected mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

.field protected mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

.field private mUpdaterHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;

.field private mUpdaterList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdaterThread:Landroid/os/HandlerThread;

.field protected mUseHeadsUp:Z

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field protected mZenMode:I

.field private startKeyguardNotificationAndShowClock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 126
    const-string v0, "StatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    .line 2114
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.netease.cloudmusic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.server.telecom"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->FOREVER_DISPLAY_APP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Lcom/android/systemui_ex/SystemUI;-><init>()V

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    .line 178
    iput v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 179
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    .line 203
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mDisableNotificationAlerts:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 216
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 236
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 259
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "updater"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUpdaterThread:Landroid/os/HandlerThread;

    .line 264
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUpdaterList:Landroid/util/ArrayMap;

    .line 267
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLastOnTime:J

    .line 268
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->SCREEN_ON_INTERVAL:I

    .line 279
    new-instance v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$1;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 296
    new-instance v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 307
    new-instance v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 404
    new-instance v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    new-instance v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 1326
    new-instance v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$12;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$12;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1819
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateLockscreenNotificationSetting()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Lcom/android/systemui_ex/statusbar/NotificationGuts;)Lcom/android/systemui_ex/statusbar/NotificationGuts;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui_ex/statusbar/NotificationGuts;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui_ex/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->startLongClickedNotificationSettings(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUpdaterList:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLastOnTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/systemui_ex/statusbar/BaseStatusBar;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;
    .param p1, "x1"    # J

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLastOnTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSensors:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUpdaterHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;

    return-object v0
.end method

.method private alertAgain(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 1
    .param p1, "oldEntry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/app/Notification;

    .prologue
    .line 2433
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateGuts(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)V
    .locals 24
    .param p1, "row"    # Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1022
    const v20, 0x7f0f0166

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewStub;

    .line 1023
    .local v19, "stub":Landroid/view/ViewStub;
    if-eqz v19, :cond_0

    .line 1024
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1026
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v17

    .line 1027
    .local v17, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 1029
    .local v16, "pmUser":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 1030
    const v20, 0x7f0f0116

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1031
    .local v11, "guts":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1032
    .local v14, "pkg":Ljava/lang/String;
    move-object v9, v14

    .line 1033
    .local v9, "appname":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1034
    .local v15, "pkgicon":Landroid/graphics/drawable/Drawable;
    const/4 v7, -0x1

    .line 1036
    .local v7, "appUid":I
    const/16 v20, 0x2200

    :try_start_0
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 1039
    .local v12, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v12, :cond_1

    .line 1040
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1041
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1042
    iget v7, v12, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    .end local v12    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    const v20, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1049
    const v20, 0x7f0f0118

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/DateTimeView;

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 1050
    const v20, 0x7f0f0117

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    const v20, 0x7f0f011b

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1052
    .local v18, "settingsButton":Landroid/view/View;
    const v20, 0x7f0f011a

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1054
    .local v4, "appSettingsButton":Landroid/view/View;
    if-ltz v7, :cond_3

    .line 1055
    move v8, v7

    .line 1056
    .local v8, "appUidF":I
    const/16 v20, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    new-instance v20, Lcom/android/systemui_ex/statusbar/BaseStatusBar$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v8}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$8;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1063
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v21, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1067
    .local v6, "appSettingsQueryIntent":Landroid/content/Intent;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 1068
    .local v13, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_2

    .line 1070
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c00eb

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v9, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1076
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1078
    .local v5, "appSettingsLaunchIntent":Landroid/content/Intent;
    new-instance v20, Lcom/android/systemui_ex/statusbar/BaseStatusBar$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v5, v2, v8}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$9;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Landroid/content/Intent;Landroid/service/notification/StatusBarNotification;I)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    .end local v5    # "appSettingsLaunchIntent":Landroid/content/Intent;
    .end local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .end local v8    # "appUidF":I
    .end local v13    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    return-void

    .line 1044
    .end local v4    # "appSettingsButton":Landroid/view/View;
    .end local v18    # "settingsButton":Landroid/view/View;
    :catch_0
    move-exception v10

    .line 1046
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    goto/16 :goto_0

    .line 1087
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "appSettingsButton":Landroid/view/View;
    .restart local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .restart local v8    # "appUidF":I
    .restart local v13    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18    # "settingsButton":Landroid/view/View;
    :cond_2
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1090
    .end local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .end local v8    # "appUidF":I
    .end local v13    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1091
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private inflateViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1522
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method private inflateViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z
    .locals 47
    .param p1, "entry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "isHeadsUp"    # Z

    .prologue
    .line 1530
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v32

    .line 1533
    .local v32, "pmUser":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRowMaxHeight:I

    move/from16 v29, v0

    .line 1534
    .local v29, "maxHeight":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v39, v0

    .line 1535
    .local v39, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    .line 1536
    .local v16, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v13, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1538
    .local v13, "bigContentView":Landroid/widget/RemoteViews;
    if-eqz p3, :cond_0

    .line 1539
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    .line 1541
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v13, v7, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1544
    :cond_0
    if-nez v16, :cond_1

    .line 1545
    const/4 v7, 0x0

    .line 1759
    :goto_0
    return v7

    .line 1548
    :cond_1
    sget-boolean v7, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 1549
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "publicNotification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_2
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v36, v0

    .line 1558
    .local v36, "publicNotification":Landroid/app/Notification;
    const/16 v22, 0x0

    .line 1559
    .local v22, "hasUserChangedExpansion":Z
    const/16 v44, 0x0

    .line 1560
    .local v44, "userExpanded":Z
    const/16 v45, 0x0

    .line 1562
    .local v45, "userLocked":Z
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_f

    .line 1563
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    move-object/from16 v38, v0

    .line 1564
    .local v38, "row":Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v38 .. v38}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v22

    .line 1565
    invoke-virtual/range {v38 .. v38}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v44

    .line 1566
    invoke-virtual/range {v38 .. v38}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v45

    .line 1567
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->reset()V

    .line 1568
    if-eqz v22, :cond_3

    .line 1569
    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 1580
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 1581
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v46

    .line 1583
    .local v46, "vetoButton":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateOpenFlagButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v30

    .line 1585
    .local v30, "openButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0c00a6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1591
    const v7, 0x7f0f0162

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/systemui_ex/statusbar/NotificationContentView;

    .line 1593
    .local v20, "expanded":Lcom/android/systemui_ex/statusbar/NotificationContentView;
    const v7, 0x7f0f0163

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui_ex/statusbar/NotificationContentView;

    .line 1596
    .local v21, "expandedPublic":Lcom/android/systemui_ex/statusbar/NotificationContentView;
    const/high16 v7, 0x60000

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 1598
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v15, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1599
    .local v15, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v15, :cond_10

    .line 1600
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v15, v7, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v28

    .line 1602
    .local v28, "listener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1608
    .end local v28    # "listener":Landroid/view/View$OnClickListener;
    :goto_2
    const/16 v17, 0x0

    .line 1609
    .local v17, "contentViewLocal":Landroid/view/View;
    const/4 v14, 0x0

    .line 1611
    .local v14, "bigContentViewLocal":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v17

    .line 1613
    if-eqz v13, :cond_4

    .line 1614
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v20

    invoke-virtual {v13, v7, v0, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1624
    :cond_4
    if-eqz v17, :cond_5

    .line 1625
    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1626
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 1628
    :cond_5
    if-eqz v14, :cond_6

    .line 1629
    const/4 v7, 0x1

    invoke-virtual {v14, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1630
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 1634
    :cond_6
    const/16 v37, 0x0

    .line 1635
    .local v37, "publicViewLocal":Landroid/view/View;
    if-eqz v36, :cond_7

    .line 1637
    :try_start_1
    move-object/from16 v0, v36

    iget-object v7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v21

    invoke-virtual {v7, v8, v0, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v37

    .line 1640
    if-eqz v37, :cond_7

    .line 1641
    const/4 v7, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1642
    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1654
    :cond_7
    :goto_3
    :try_start_2
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v27

    .line 1655
    .local v27, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v27

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p1

    iput v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->targetSdk:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1660
    .end local v27    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_4
    if-nez v37, :cond_d

    .line 1662
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040033

    const/4 v9, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v37

    .line 1665
    const/4 v7, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1666
    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 1668
    const v7, 0x7f0f0035

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 1670
    .local v42, "title":Landroid/widget/TextView;
    :try_start_3
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1676
    :goto_5
    const v7, 0x7f0f0034

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 1677
    .local v23, "icon":Landroid/widget/ImageView;
    const v7, 0x7f0f011f

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/ImageView;

    .line 1680
    .local v34, "profileBadge":Landroid/widget/ImageView;
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->number:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 1687
    .local v6, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 1688
    .local v24, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1689
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1691
    :cond_8
    const v7, 0x1080519

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105005b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    .line 1695
    .local v31, "padding":I
    move-object/from16 v0, v23

    move/from16 v1, v31

    move/from16 v2, v31

    move/from16 v3, v31

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1696
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->color:I

    if-eqz v7, :cond_9

    .line 1697
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->color:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1702
    .end local v31    # "padding":I
    :cond_9
    if-eqz v34, :cond_a

    .line 1703
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    .line 1705
    .local v35, "profileDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v35, :cond_11

    .line 1706
    invoke-virtual/range {v34 .. v35}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1707
    const/4 v7, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1713
    .end local v35    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_a
    :goto_6
    const v7, 0x102007f

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 1714
    .local v33, "privateTime":Landroid/view/View;
    const v7, 0x7f0f011e

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/DateTimeView;

    .line 1715
    .local v41, "time":Landroid/widget/DateTimeView;
    if-eqz v33, :cond_b

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_b

    .line 1716
    const/4 v7, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/widget/DateTimeView;->setVisibility(I)V

    .line 1717
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 1720
    :cond_b
    const v7, 0x7f0f0036

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 1721
    .local v40, "text":Landroid/widget/TextView;
    if-eqz v40, :cond_c

    .line 1722
    const v7, 0x7f0c0166

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0b002f

    move-object/from16 v0, v40

    invoke-virtual {v0, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1727
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v7, v8, v9}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v43

    .line 1730
    .local v43, "topPadding":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1732
    const/4 v7, 0x1

    move-object/from16 v0, p1

    iput-boolean v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 1742
    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v23    # "icon":Landroid/widget/ImageView;
    .end local v24    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v33    # "privateTime":Landroid/view/View;
    .end local v34    # "profileBadge":Landroid/widget/ImageView;
    .end local v40    # "text":Landroid/widget/TextView;
    .end local v41    # "time":Landroid/widget/DateTimeView;
    .end local v42    # "title":Landroid/widget/TextView;
    .end local v43    # "topPadding":I
    :cond_d
    move-object/from16 v0, v38

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .line 1743
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRowMinHeight:I

    move/from16 v0, v29

    invoke-virtual {v7, v8, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setHeightRange(II)V

    .line 1744
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 1745
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 1746
    move-object/from16 v0, v37

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    .line 1747
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->setBigContentView(Landroid/view/View;)V

    .line 1749
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)V

    .line 1752
    if-eqz v22, :cond_e

    .line 1755
    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 1757
    :cond_e
    move-object/from16 v0, v38

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1758
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 1759
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1573
    .end local v14    # "bigContentViewLocal":Landroid/view/View;
    .end local v15    # "contentIntent":Landroid/app/PendingIntent;
    .end local v17    # "contentViewLocal":Landroid/view/View;
    .end local v20    # "expanded":Lcom/android/systemui_ex/statusbar/NotificationContentView;
    .end local v21    # "expandedPublic":Lcom/android/systemui_ex/statusbar/NotificationContentView;
    .end local v30    # "openButton":Landroid/view/View;
    .end local v37    # "publicViewLocal":Landroid/view/View;
    .end local v38    # "row":Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
    .end local v46    # "vetoButton":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/LayoutInflater;

    .line 1575
    .local v26, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040057

    const/4 v8, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .line 1577
    .restart local v38    # "row":Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1604
    .end local v26    # "inflater":Landroid/view/LayoutInflater;
    .restart local v15    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v20    # "expanded":Lcom/android/systemui_ex/statusbar/NotificationContentView;
    .restart local v21    # "expandedPublic":Lcom/android/systemui_ex/statusbar/NotificationContentView;
    .restart local v30    # "openButton":Landroid/view/View;
    .restart local v46    # "vetoButton":Landroid/view/View;
    :cond_10
    const/4 v7, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1618
    .restart local v14    # "bigContentViewLocal":Landroid/view/View;
    .restart local v17    # "contentViewLocal":Landroid/view/View;
    :catch_0
    move-exception v18

    .line 1619
    .local v18, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1620
    .local v25, "ident":Ljava/lang/String;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate view for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1621
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1645
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .end local v25    # "ident":Ljava/lang/String;
    .restart local v37    # "publicViewLocal":Landroid/view/View;
    :catch_1
    move-exception v18

    .line 1646
    .restart local v18    # "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1647
    .restart local v25    # "ident":Ljava/lang/String;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate public view for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1648
    const/16 v37, 0x0

    goto/16 :goto_3

    .line 1656
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .end local v25    # "ident":Ljava/lang/String;
    :catch_2
    move-exception v19

    .line 1657
    .local v19, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed looking up ApplicationInfo for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1672
    .end local v19    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v42    # "title":Landroid/widget/TextView;
    :catch_3
    move-exception v18

    .line 1673
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1709
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v23    # "icon":Landroid/widget/ImageView;
    .restart local v24    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v34    # "profileBadge":Landroid/widget/ImageView;
    .restart local v35    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_11
    const/16 v7, 0x8

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private isMaxPriority(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z
    .locals 14
    .param p1, "entry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2117
    iget-boolean v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-nez v11, :cond_1

    move v9, v10

    .line 2141
    :cond_0
    :goto_0
    return v9

    .line 2120
    :cond_1
    iget-object v8, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2122
    .local v8, "sbn":Landroid/service/notification/StatusBarNotification;
    sget-object v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->FOREVER_DISPLAY_APP:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v6, v1, v3

    .line 2123
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2122
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2126
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_2
    const-string v11, "notification"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v5

    .line 2128
    .local v5, "objINM":Landroid/app/INotificationManager;
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2129
    .restart local v6    # "pkgName":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    .line 2130
    .local v0, "appUid":I
    const/4 v7, 0x0

    .line 2132
    .local v7, "priority":I
    :try_start_0
    const-string v11, "com.android.systemui"

    invoke-interface {v5, v6, v0, v11}, Landroid/app/INotificationManager;->getPackagePriorityBySystemUI(Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    .line 2133
    const-string v11, "StatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "priority from notificationManager is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2140
    :goto_2
    const-string v11, "StatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isMaxPriority---1--priority="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    const/4 v11, 0x2

    if-eq v7, v11, :cond_0

    move v9, v10

    goto :goto_0

    .line 2134
    :catch_0
    move-exception v2

    .line 2135
    .local v2, "e":Landroid/os/RemoteException;
    const-string v11, "StatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remote exception happens "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 2137
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2138
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v11, "StatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "security exception happens "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1316
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1319
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setHeadsUpUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->setUser(I)V

    .line 845
    :cond_0
    return-void
.end method

.method private shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2091
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-nez v2, :cond_0

    .line 2092
    const/4 v0, 0x0

    .line 2109
    :goto_0
    return v0

    .line 2094
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2103
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v0, 0x1

    .line 2109
    .local v0, "isKeyguardAllowedForApp":Z
    goto :goto_0
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .prologue
    .line 988
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    const-string v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 991
    invoke-direct {p0, v0, p2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 992
    return-void
.end method

.method private startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "notificationId"    # I
    .param p3, "notificationTag"    # Ljava/lang/String;
    .param p4, "appUid"    # I

    .prologue
    .line 981
    const-string v0, "notification_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    const-string v0, "notification_tag"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    invoke-direct {p0, p1, p4}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 984
    return-void
.end method

.method private startLongClickedNotificationSettings(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)V
    .locals 13
    .param p1, "row"    # Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v12, 0x0

    .line 1098
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    .line 1099
    .local v9, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1101
    .local v8, "pmUser":Landroid/content/pm/PackageManager;
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 1102
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1103
    .local v7, "pkg":Ljava/lang/String;
    move-object v4, v7

    .line 1104
    .local v4, "appname":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1106
    .local v2, "appUid":I
    const/16 v10, 0x2200

    :try_start_0
    invoke-virtual {v8, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1109
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_0

    .line 1110
    invoke-virtual {v8, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1111
    iget v2, v5, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    if-ltz v2, :cond_2

    .line 1117
    move v3, v2

    .line 1118
    .local v3, "appUidF":I
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1122
    .local v1, "appSettingsQueryIntent":Landroid/content/Intent;
    invoke-virtual {v8, v1, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1123
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 1124
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v7, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1126
    .local v0, "appSettingsLaunchIntent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v10

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v0, v10, v11, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V

    .line 1136
    .end local v0    # "appSettingsLaunchIntent":Landroid/content/Intent;
    .end local v1    # "appSettingsQueryIntent":Landroid/content/Intent;
    .end local v3    # "appUidF":I
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    return-void

    .line 1131
    .restart local v1    # "appSettingsQueryIntent":Landroid/content/Intent;
    .restart local v3    # "appUidF":I
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-direct {p0, v7, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V

    goto :goto_1

    .line 1134
    .end local v1    # "appSettingsQueryIntent":Landroid/content/Intent;
    .end local v3    # "appUidF":I
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const-string v10, "StatusBar"

    const-string v11, "app UID is not available"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1113
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method private startNotificationGutsIntent(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appUid"    # I

    .prologue
    .line 995
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 996
    .local v0, "keyguardShowing":Z
    new-instance v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar$7;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;ZLandroid/content/Intent;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 1019
    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .prologue
    .line 654
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    .line 655
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 656
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    .line 657
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 658
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 661
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    return-void
.end method

.method private updateHeadsUpViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2390
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 2391
    return-void
.end method

.method private updateLockscreenNotificationSetting()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2156
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    iget v7, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    .line 2160
    .local v2, "show":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v5, v6, v7}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 2162
    .local v1, "dpmFlags":I
    and-int/lit8 v5, v1, 0x4

    if-nez v5, :cond_1

    move v0, v3

    .line 2164
    .local v0, "allowedByDpm":Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->setShowLockscreenNotifications(Z)V

    .line 2165
    return-void

    .end local v0    # "allowedByDpm":Z
    .end local v1    # "dpmFlags":I
    .end local v2    # "show":Z
    :cond_0
    move v2, v4

    .line 2156
    goto :goto_0

    .restart local v1    # "dpmFlags":I
    .restart local v2    # "show":Z
    :cond_1
    move v0, v4

    .line 2162
    goto :goto_1

    .restart local v0    # "allowedByDpm":Z
    :cond_2
    move v3, v4

    .line 2164
    goto :goto_2
.end method

.method private updateNotificationViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2385
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 2386
    return-void
.end method

.method private updateNotificationViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 10
    .param p1, "entry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "isHeadsUp"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2395
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v2, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2396
    .local v2, "contentView":Landroid/widget/RemoteViews;
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2399
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v5, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 2400
    .local v5, "publicVersion":Landroid/app/Notification;
    if-eqz v5, :cond_3

    iget-object v4, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2404
    .local v4, "publicContentView":Landroid/widget/RemoteViews;
    :goto_1
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v8, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, v7, v8, v9}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2405
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2406
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v0, v7, v8, v9}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2409
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 2410
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v7, v8, v9}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2413
    :cond_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v1, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2414
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_4

    .line 2415
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6, p3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v3

    .line 2417
    .local v3, "listener":Landroid/view/View$OnClickListener;
    iget-object v6, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v3}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2421
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    :goto_2
    iget-object v6, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, p2}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 2422
    iget-object v6, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->notifyContentUpdated()V

    .line 2423
    iget-object v6, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->resetHeight()V

    .line 2424
    return-void

    .line 2396
    .end local v0    # "bigContentView":Landroid/widget/RemoteViews;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v4    # "publicContentView":Landroid/widget/RemoteViews;
    .end local v5    # "publicVersion":Landroid/app/Notification;
    :cond_2
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .restart local v0    # "bigContentView":Landroid/widget/RemoteViews;
    .restart local v5    # "publicVersion":Landroid/app/Notification;
    :cond_3
    move-object v4, v6

    .line 2400
    goto :goto_1

    .line 2419
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v4    # "publicContentView":Landroid/widget/RemoteViews;
    :cond_4
    iget-object v7, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7, v6}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private updateOpenFlagButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 2
    .param p1, "row"    # Landroid/view/View;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 931
    const v1, 0x7f0f0165

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 932
    .local v0, "openButton":Landroid/view/View;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 933
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 937
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 938
    return-object v0

    .line 935
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected addNotificationViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2014
    if-nez p1, :cond_0

    .line 2020
    :goto_0
    return-void

    .line 2018
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui_ex/statusbar/NotificationData;->add(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2019
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method public animateCollapsePanels(IZ)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 1904
    return-void
.end method

.method protected applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)V
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "entry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x1

    .line 945
    iget-object v1, p2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020334

    if-eq v1, v2, :cond_2

    .line 947
    iget v1, p2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    iget v1, p2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v1, v4, :cond_0

    .line 949
    iget-object v1, p2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 950
    iput-boolean v3, p2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->legacy:Z

    .line 963
    :cond_0
    :goto_0
    iget-object v1, p2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    if-eqz v1, :cond_1

    .line 964
    iget v1, p2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->targetSdk:I

    if-lt v1, v4, :cond_4

    .line 965
    iget-object v1, p2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->setColorFilter(I)V

    .line 970
    :cond_1
    :goto_1
    return-void

    .line 954
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v0, v1, Landroid/app/Notification;->color:I

    .line 955
    .local v0, "color":I
    invoke-virtual {p0, p2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .end local v0    # "color":I
    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    goto :goto_0

    .line 967
    :cond_4
    iget-object v1, p2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 1248
    const/16 v0, 0x3ff

    .line 1249
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1250
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1251
    return-void
.end method

.method protected cancelPreloadingRecents()V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui_ex/RecentsComponent;->cancelPreloadingRecents()V

    .line 1378
    :cond_0
    return-void
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
    .locals 1

    .prologue
    .line 1312
    new-instance v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .locals 11
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v10, 0x0

    .line 1985
    sget-boolean v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1986
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNotificationViews(notification="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 1990
    .local v9, "n":Landroid/app/Notification;
    new-instance v8, Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1992
    .local v8, "iconView":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v1}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1994
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget v3, v9, Landroid/app/Notification;->icon:I

    iget v4, v9, Landroid/app/Notification;->iconLevel:I

    iget v5, v9, Landroid/app/Notification;->number:I

    iget-object v6, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2000
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v8, v0}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v10

    .line 2010
    :cond_1
    :goto_0
    return-object v7

    .line 2005
    :cond_2
    new-instance v7, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    invoke-direct {v7, p1, v8}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui_ex/statusbar/StatusBarIconView;)V

    .line 2006
    .local v7, "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0, v7, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v10

    .line 2008
    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    if-eqz v0, :cond_0

    .line 2496
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2498
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2500
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2504
    :goto_0
    return-void

    .line 2501
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .prologue
    .line 879
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 880
    return-void
.end method

.method public dismissPopups()V
    .locals 6

    .prologue
    .line 1191
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui_ex/statusbar/NotificationGuts;

    if-eqz v4, :cond_0

    .line 1192
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui_ex/statusbar/NotificationGuts;

    .line 1193
    .local v1, "v":Lcom/android/systemui_ex/statusbar/NotificationGuts;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui_ex/statusbar/NotificationGuts;

    .line 1195
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1212
    .end local v1    # "v":Lcom/android/systemui_ex/statusbar/NotificationGuts;
    :cond_0
    :goto_0
    return-void

    .line 1197
    .restart local v1    # "v":Lcom/android/systemui_ex/statusbar/NotificationGuts;
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 1198
    .local v2, "x":I
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->getTop()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->getActualHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 1199
    .local v3, "y":I
    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 1201
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1202
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1203
    new-instance v4, Lcom/android/systemui_ex/statusbar/BaseStatusBar$11;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$11;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Lcom/android/systemui_ex/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1210
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method protected getKeyguardOpenNotificationShowClockFlag()Z
    .locals 1

    .prologue
    .line 2550
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->startKeyguardNotificationAndShowClock:Z

    return v0
.end method

.method protected abstract getMaxKeyguardNotifications()I
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui_ex/SwipeHelper$LongPressListener;
    .locals 1

    .prologue
    .line 1140
    new-instance v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$10;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$10;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected getPackageManagerForUser(I)Landroid/content/pm/PackageManager;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2513
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 2517
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2525
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    return-object v1

    .line 2521
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected abstract getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
.end method

.method protected abstract getStatusBarView()Landroid/view/View;
.end method

.method protected abstract haltTicker()V
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 8
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1965
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1967
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    move-object v6, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    :goto_0
    return-void

    .line 1969
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 3
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 1944
    if-eqz p1, :cond_2

    .line 1947
    :try_start_0
    iget v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1949
    .local v0, "clearNotificationEffects":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(Z)V

    .line 1956
    .end local v0    # "clearNotificationEffects":Z
    :goto_1
    return-void

    .line 1947
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1951
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1953
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1226
    const/16 v0, 0x3fc

    .line 1227
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1228
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1230
    return-void

    :cond_0
    move v3, v2

    .line 1228
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui_ex/RecentsComponent;->hideRecents(ZZ)V

    .line 1359
    :cond_0
    return-void
.end method

.method protected inflateViewsForHeadsUp(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1526
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method public isBouncerShowing()Z
    .locals 1

    .prologue
    .line 2491
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method protected isCurrentProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 863
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    .line 864
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 865
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isDoNotDisturbModeEnabled()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->isShowing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowingAndOccluded()Z
    .locals 1

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockscreenPublicMode()Z
    .locals 1

    .prologue
    .line 1413
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method public isMediaNotification(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .prologue
    .line 974
    iget-object v0, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    const v1, 0x1020339

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 853
    iget v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 854
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 855
    .local v0, "notificationUserId":I
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 859
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    .line 2531
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2535
    :goto_0
    return-void

    .line 2532
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "notificationKey"    # Ljava/lang/String;
    .param p3, "forHun"    # Z

    .prologue
    .line 1764
    new-instance v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected notifyHeadsUpScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 2427
    if-nez p1, :cond_0

    .line 2428
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->scheduleHeadsUpEscalation()V

    .line 2430
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 884
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 885
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 886
    .local v1, "ld":I
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 888
    .local v0, "fontScale":F
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mFontScale:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    .line 889
    :cond_0
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 890
    const-string v3, "StatusBar"

    const-string v4, "config changed locale/LD: %s (%d) -> %s (%d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_1
    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 895
    iput v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 896
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->refreshLayout(I)V

    .line 898
    :cond_2
    return-void
.end method

.method public onHeadsUpDismissed()V
    .locals 0

    .prologue
    .line 1215
    return-void
.end method

.method public onNotificationClear(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1452
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    :goto_0
    return-void

    .line 1457
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1395
    return-void
.end method

.method public overrideActivityPendingAppTransition(Z)V
    .locals 6
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 1907
    if-eqz p1, :cond_0

    .line 1909
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1914
    :cond_0
    :goto_0
    return-void

    .line 1910
    :catch_0
    move-exception v0

    .line 1911
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error overriding app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 1241
    const/16 v0, 0x3fe

    .line 1242
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1243
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1244
    return-void
.end method

.method protected preloadRecents()V
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui_ex/RecentsComponent;->preloadRecents()V

    .line 1372
    :cond_0
    return-void
.end method

.method protected abstract refreshLayout(I)V
.end method

.method public abstract removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 1975
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui_ex/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1976
    .local v0, "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 1977
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const/4 v1, 0x0

    .line 1981
    :goto_0
    return-object v1

    .line 1980
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateNotifications()V

    .line 1981
    iget-object v1, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    goto :goto_0
.end method

.method public abstract resetHeadsUpDecayTimer()V
.end method

.method public abstract scheduleHeadsUpEscalation()V
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setBouncerShowing(Z)V
    .locals 0
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 2484
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBouncerShowing:Z

    .line 2485
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 0
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 2481
    return-void
.end method

.method protected setKeyguardOpenNotificationShowClockFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 2554
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->startKeyguardNotificationAndShowClock:Z

    .line 2555
    return-void
.end method

.method public setLockscreenPublicMode(Z)V
    .locals 0
    .param p1, "publicMode"    # Z

    .prologue
    .line 1409
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 1410
    return-void
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 2152
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    .line 2153
    return-void
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2148
    :goto_0
    return-void

    .line 2146
    :cond_0
    iput p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mZenMode:I

    .line 2147
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method protected abstract shouldDisableNavbarGestures()Z
.end method

.method public shouldHideSensitiveContents(I)Z
    .locals 1
    .param p1, "userid"    # I

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z
    .locals 13
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2438
    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v11, p1}, Lcom/android/systemui_ex/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2439
    sget-boolean v10, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 2440
    const-string v10, "StatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping HUN check for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " since it\'s filtered out."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :cond_0
    :goto_0
    return v9

    .line 2445
    :cond_1
    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->isSnoozed(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2449
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 2451
    .local v8, "notification":Landroid/app/Notification;
    iget v11, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_2

    iget v11, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_2

    iget-object v11, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v11, :cond_2

    iget-object v11, v8, Landroid/app/Notification;->vibrate:[J

    if-eqz v11, :cond_6

    :cond_2
    move v7, v10

    .line 2455
    .local v7, "isNoisy":Z
    :goto_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v11

    const/16 v12, 0xa

    if-lt v11, v12, :cond_7

    move v6, v10

    .line 2456
    .local v6, "isHighPriority":Z
    :goto_2
    iget-object v11, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_8

    move v5, v10

    .line 2457
    .local v5, "isFullscreen":Z
    :goto_3
    iget-boolean v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    if-eqz v11, :cond_9

    iget-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    move v2, v10

    .line 2458
    .local v2, "hasTicker":Z
    :goto_4
    iget-object v11, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "headsup"

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_a

    move v4, v10

    .line 2460
    .local v4, "isAllowed":Z
    :goto_5
    if-eqz v5, :cond_b

    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v11

    if-eqz v11, :cond_b

    move v0, v10

    .line 2463
    .local v0, "accessibilityForcesLaunch":Z
    :goto_6
    if-nez v5, :cond_3

    if-eqz v6, :cond_c

    if-nez v7, :cond_3

    if-eqz v2, :cond_c

    :cond_3
    if-eqz v4, :cond_c

    if-nez v0, :cond_c

    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v11}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_4
    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isInputRestricted()Z

    move-result v11

    if-nez v11, :cond_c

    move v3, v10

    .line 2471
    .local v3, "interrupt":Z
    :goto_7
    if-eqz v3, :cond_d

    :try_start_0
    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v11}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_d

    move v3, v10

    .line 2475
    :goto_8
    sget-boolean v9, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "StatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interrupt: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v9, v3

    .line 2476
    goto/16 :goto_0

    .end local v0    # "accessibilityForcesLaunch":Z
    .end local v2    # "hasTicker":Z
    .end local v3    # "interrupt":Z
    .end local v4    # "isAllowed":Z
    .end local v5    # "isFullscreen":Z
    .end local v6    # "isHighPriority":Z
    .end local v7    # "isNoisy":Z
    :cond_6
    move v7, v9

    .line 2451
    goto/16 :goto_1

    .restart local v7    # "isNoisy":Z
    :cond_7
    move v6, v9

    .line 2455
    goto/16 :goto_2

    .restart local v6    # "isHighPriority":Z
    :cond_8
    move v5, v9

    .line 2456
    goto/16 :goto_3

    .restart local v5    # "isFullscreen":Z
    :cond_9
    move v2, v9

    .line 2457
    goto :goto_4

    .restart local v2    # "hasTicker":Z
    :cond_a
    move v4, v9

    .line 2458
    goto :goto_5

    .restart local v4    # "isAllowed":Z
    :cond_b
    move v0, v9

    .line 2460
    goto :goto_6

    .restart local v0    # "accessibilityForcesLaunch":Z
    :cond_c
    move v3, v9

    .line 2463
    goto :goto_7

    .restart local v3    # "interrupt":Z
    :cond_d
    move v3, v9

    .line 2471
    goto :goto_8

    .line 2472
    :catch_0
    move-exception v1

    .line 2473
    .local v1, "e":Landroid/os/RemoteException;
    const-string v9, "StatusBar"

    const-string v10, "failed to query dream manager"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public showNextAffiliatedTask()V
    .locals 2

    .prologue
    .line 1255
    const/16 v0, 0x400

    .line 1256
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1257
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1258
    return-void
.end method

.method public showPreviousAffiliatedTask()V
    .locals 2

    .prologue
    .line 1262
    const/16 v0, 0x401

    .line 1263
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1264
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1265
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1219
    const/16 v0, 0x3fb

    .line 1220
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1221
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1222
    return-void

    :cond_0
    move v1, v2

    .line 1221
    goto :goto_0
.end method

.method protected showRecents(Z)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui_ex/RecentsComponent;->showRecents(ZLandroid/view/View;)V

    .line 1353
    :cond_0
    return-void
.end method

.method protected showRecentsNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui_ex/RecentsComponent;->showNextAffiliatedTask()V

    .line 1384
    :cond_0
    return-void
.end method

.method protected showRecentsPreviousAffiliatedTask()V
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui_ex/RecentsComponent;->showPrevAffiliatedTask()V

    .line 1390
    :cond_0
    return-void
.end method

.method public showSearchPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1269
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/SearchPanelView;->isAssistantAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui_ex/SearchPanelView;->show(ZZ)V

    .line 1272
    :cond_0
    return-void
.end method

.method public start()V
    .locals 15

    .prologue
    .line 665
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 666
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "sensor"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/SensorManager;

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSensors:Landroid/hardware/SensorManager;

    .line 667
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 668
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 669
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 672
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUpdaterThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 673
    new-instance v10, Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;

    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUpdaterThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUpdaterHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;

    .line 675
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 677
    new-instance v10, Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-direct {v10, p0}, Lcom/android/systemui_ex/statusbar/NotificationData;-><init>(Lcom/android/systemui_ex/statusbar/NotificationData$Environment;)V

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    .line 679
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "accessibility"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityManager;

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 682
    const-string v10, "dreams"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 684
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "power"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 686
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 687
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "device_provisioned"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 690
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "zen_mode"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 693
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_show_notifications"

    invoke-static {v11}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v14, -0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 698
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_allow_private_notifications"

    invoke-static {v11}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    const/4 v14, -0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 704
    const-string v10, "statusbar"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 707
    const-class v10, Lcom/android/systemui_ex/RecentsComponent;

    invoke-virtual {p0, v10}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui_ex/RecentsComponent;

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    .line 708
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    invoke-interface {v10, p0}, Lcom/android/systemui_ex/RecentsComponent;->setCallback(Lcom/android/systemui_ex/RecentsComponent$Callbacks;)V

    .line 710
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 711
    .local v2, "currentConfig":Landroid/content/res/Configuration;
    iget-object v10, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 712
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-static {v10}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v10

    iput v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 713
    iget v10, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mFontScale:F

    .line 715
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    .line 717
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x10c000e

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    .line 719
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x10c000f

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    .line 723
    new-instance v7, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v7}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 724
    .local v7, "iconList":Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v10, Lcom/android/systemui_ex/statusbar/CommandQueue;

    invoke-direct {v10, p0, v7}, Lcom/android/systemui_ex/statusbar/CommandQueue;-><init>(Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    iput-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui_ex/statusbar/CommandQueue;

    .line 726
    const/16 v10, 0x8

    new-array v8, v10, [I

    .line 727
    .local v8, "switches":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v1, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui_ex/statusbar/CommandQueue;

    invoke-interface {v10, v11, v7, v8, v1}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 734
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 736
    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->disable(IZ)V

    .line 737
    const/4 v10, 0x1

    aget v10, v8, v10

    const/4 v11, -0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->setSystemUiVisibility(II)V

    .line 738
    const/4 v10, 0x2

    aget v10, v8, v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 740
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    const/4 v11, 0x3

    aget v12, v8, v11

    const/4 v11, 0x4

    aget v13, v8, v11

    const/4 v11, 0x5

    aget v11, v8, v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {p0, v10, v12, v13, v11}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 743
    invoke-virtual {v7}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v0

    .line 744
    .local v0, "N":I
    const/4 v9, 0x0

    .line 745
    .local v9, "viewIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v0, :cond_3

    .line 746
    invoke-virtual {v7, v5}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v6

    .line 747
    .local v6, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v6, :cond_0

    .line 748
    invoke-virtual {v7, v5}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v5, v9, v6}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 749
    add-int/lit8 v9, v9, 0x1

    .line 745
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 738
    .end local v0    # "N":I
    .end local v5    # "i":I
    .end local v6    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v9    # "viewIndex":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 740
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 755
    .restart local v0    # "N":I
    .restart local v5    # "i":I
    .restart local v9    # "viewIndex":I
    :cond_3
    :try_start_1
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 763
    :goto_4
    sget-boolean v10, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 764
    const-string v10, "StatusBar"

    const-string v11, "init: icons=%d disabled=0x%08x lights=0x%08x menu=0x%08x imeButton=0x%08x"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v7}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aget v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    aget v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x2

    aget v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x3

    aget v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    iput v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 775
    iget v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-direct {p0, v10}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 777
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 778
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 779
    const-string v10, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 780
    const-string v10, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 781
    const-string v10, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    const-string v10, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 785
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    .line 786
    return-void

    .line 758
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    .line 759
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "StatusBar"

    const-string v11, "Unable to register notification listener"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 730
    .end local v0    # "N":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "i":I
    .end local v9    # "viewIndex":I
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1768
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1817
    :goto_0
    return-void

    .line 1770
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 1771
    .local v1, "keyguardShowing":Z
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui_ex/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1774
    .local v0, "afterKeyguardGone":Z
    :goto_1
    new-instance v2, Lcom/android/systemui_ex/statusbar/BaseStatusBar$13;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$13;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;ZZLandroid/app/PendingIntent;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    goto :goto_0

    .line 1771
    .end local v0    # "afterKeyguardGone":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected abstract tick(Landroid/service/notification/StatusBarNotification;Z)V
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 1234
    const/16 v0, 0x3fd

    .line 1235
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1236
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1237
    return-void
.end method

.method protected toggleRecents()V
    .locals 4

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui_ex/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui_ex/RecentsComponent;->toggleRecents(Landroid/view/Display;ILandroid/view/View;)V

    .line 1366
    :cond_0
    return-void
.end method

.method protected abstract updateExpandedViewPos(I)V
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 38
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2180
    sget-boolean v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNotification("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v21

    .line 2183
    .local v21, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v37

    .line 2185
    .local v37, "wasHeadsUp":Z
    if-eqz v37, :cond_1

    .line 2186
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v26

    .line 2190
    .local v26, "oldEntry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :goto_0
    if-nez v26, :cond_2

    .line 2381
    :goto_1
    return-void

    .line 2188
    .end local v26    # "oldEntry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/systemui_ex/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v26

    .restart local v26    # "oldEntry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    goto :goto_0

    .line 2194
    :cond_2
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    .line 2197
    .local v28, "oldNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v25, v0

    .line 2198
    .local v25, "oldContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    .line 2199
    .local v22, "n":Landroid/app/Notification;
    move-object/from16 v0, v22

    iget-object v14, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2200
    .local v14, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    .line 2201
    .local v24, "oldBigContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v22

    iget-object v12, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2202
    .local v12, "bigContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v27, v0

    .line 2203
    .local v27, "oldHeadsUpContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    .line 2204
    .local v17, "headsUpContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v30, v0

    .line 2205
    .local v30, "oldPublicNotification":Landroid/app/Notification;
    if-eqz v30, :cond_12

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v29, v0

    .line 2207
    .local v29, "oldPublicContentView":Landroid/widget/RemoteViews;
    :goto_2
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v32, v0

    .line 2208
    .local v32, "publicNotification":Landroid/app/Notification;
    if-eqz v32, :cond_13

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v31, v0

    .line 2211
    .local v31, "publicContentView":Landroid/widget/RemoteViews;
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 2212
    const/4 v5, 0x1

    move-object/from16 v0, v26

    iput-boolean v5, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->isDisplayInKeyGuard:Z

    .line 2215
    :cond_3
    sget-boolean v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 2216
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "old notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ongoing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expanded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bigContentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " publicView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rowParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-wide v8, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ongoing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bigContentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " publicView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    :cond_4
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v5, :cond_14

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_14

    const/4 v15, 0x1

    .line 2239
    .local v15, "contentsUnchanged":Z
    :goto_4
    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5

    if-eqz v12, :cond_6

    :cond_5
    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_15

    if-eqz v12, :cond_15

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_15

    :cond_6
    const/4 v13, 0x1

    .line 2246
    .local v13, "bigContentsUnchanged":Z
    :goto_5
    if-nez v27, :cond_7

    if-eqz v17, :cond_8

    :cond_7
    if-eqz v27, :cond_16

    if-eqz v17, :cond_16

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_16

    :cond_8
    const/16 v18, 0x1

    .line 2253
    .local v18, "headsUpContentsUnchanged":Z
    :goto_6
    if-nez v29, :cond_9

    if-eqz v31, :cond_a

    :cond_9
    if-eqz v29, :cond_17

    if-eqz v31, :cond_17

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_17

    :cond_a
    const/16 v33, 0x1

    .line 2260
    .local v33, "publicUnchanged":Z
    :goto_7
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_18

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    const/16 v36, 0x1

    .line 2264
    .local v36, "updateTicker":Z
    :goto_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v34

    .line 2265
    .local v34, "shouldInterrupt":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->alertAgain(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v11

    .line 2266
    .local v11, "alertAgain":Z
    const/16 v35, 0x0

    .line 2267
    .local v35, "updateSuccessful":Z
    if-eqz v15, :cond_c

    if-eqz v13, :cond_c

    if-eqz v18, :cond_c

    if-eqz v33, :cond_c

    .line 2269
    sget-boolean v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_b

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2272
    :try_start_0
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    if-eqz v5, :cond_19

    .line 2274
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, v22

    iget v7, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v22

    iget v9, v0, Landroid/app/Notification;->number:I

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2280
    .local v4, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 2281
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    invoke-virtual {v5, v4}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 2282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t update icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2310
    .end local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :catch_0
    move-exception v16

    .line 2312
    .local v16, "e":Ljava/lang/RuntimeException;
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t reapply views for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2315
    .end local v16    # "e":Ljava/lang/RuntimeException;
    :cond_c
    :goto_9
    if-nez v35, :cond_f

    .line 2316
    sget-boolean v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_d

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :cond_d
    if-eqz v37, :cond_21

    .line 2318
    if-eqz v34, :cond_1f

    .line 2319
    sget-boolean v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_e

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebuilding heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    :cond_e
    new-instance v23, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui_ex/statusbar/StatusBarIconView;)V

    .line 2321
    .local v23, "newEntry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v19

    .line 2322
    .local v19, "holder":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->inflateViewsForHeadsUp(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2323
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z

    .line 2324
    if-eqz v11, :cond_f

    .line 2325
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    .line 2362
    .end local v19    # "holder":Landroid/view/ViewGroup;
    .end local v23    # "newEntry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :cond_f
    :goto_a
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    .line 2365
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateOpenFlagButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    .line 2369
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v20

    .line 2370
    .local v20, "isForCurrentUser":Z
    sget-boolean v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_10

    const-string v6, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notification is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v20, :cond_25

    const-string v5, ""

    :goto_b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "for you"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    :cond_10
    if-eqz v36, :cond_11

    if-eqz v20, :cond_11

    .line 2374
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->haltTicker()V

    .line 2375
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    .line 2379
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->setAreThereNotifications()V

    .line 2380
    const/16 v5, -0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_1

    .line 2205
    .end local v11    # "alertAgain":Z
    .end local v13    # "bigContentsUnchanged":Z
    .end local v15    # "contentsUnchanged":Z
    .end local v18    # "headsUpContentsUnchanged":Z
    .end local v20    # "isForCurrentUser":Z
    .end local v29    # "oldPublicContentView":Landroid/widget/RemoteViews;
    .end local v31    # "publicContentView":Landroid/widget/RemoteViews;
    .end local v32    # "publicNotification":Landroid/app/Notification;
    .end local v33    # "publicUnchanged":Z
    .end local v34    # "shouldInterrupt":Z
    .end local v35    # "updateSuccessful":Z
    .end local v36    # "updateTicker":Z
    :cond_12
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 2208
    .restart local v29    # "oldPublicContentView":Landroid/widget/RemoteViews;
    .restart local v32    # "publicNotification":Landroid/app/Notification;
    :cond_13
    const/16 v31, 0x0

    goto/16 :goto_3

    .line 2233
    .restart local v31    # "publicContentView":Landroid/widget/RemoteViews;
    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2239
    .restart local v15    # "contentsUnchanged":Z
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 2246
    .restart local v13    # "bigContentsUnchanged":Z
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 2253
    .restart local v18    # "headsUpContentsUnchanged":Z
    :cond_17
    const/16 v33, 0x0

    goto/16 :goto_7

    .line 2260
    .restart local v33    # "publicUnchanged":Z
    :cond_18
    const/16 v36, 0x0

    goto/16 :goto_8

    .line 2287
    .restart local v11    # "alertAgain":Z
    .restart local v34    # "shouldInterrupt":Z
    .restart local v35    # "updateSuccessful":Z
    .restart local v36    # "updateTicker":Z
    :cond_19
    if-eqz v37, :cond_1c

    .line 2288
    if-eqz v34, :cond_1b

    .line 2289
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateHeadsUpViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 2290
    if-eqz v11, :cond_1a

    .line 2291
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    .line 2306
    :cond_1a
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui_ex/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2307
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateNotifications()V

    .line 2308
    const/16 v35, 0x1

    goto/16 :goto_9

    .line 2295
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    goto/16 :goto_1

    .line 2299
    :cond_1c
    if-eqz v34, :cond_1d

    if-eqz v11, :cond_1d

    .line 2300
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    .line 2301
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_c

    .line 2303
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    .line 2328
    .restart local v19    # "holder":Landroid/view/ViewGroup;
    .restart local v23    # "newEntry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :cond_1e
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create new updated headsup for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2332
    .end local v19    # "holder":Landroid/view/ViewGroup;
    .end local v23    # "newEntry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :cond_1f
    sget-boolean v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_20

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasing heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_20
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2334
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    goto/16 :goto_1

    .line 2338
    :cond_21
    if-eqz v34, :cond_23

    if-eqz v11, :cond_23

    .line 2339
    sget-boolean v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_22

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reposting to invoke heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    .line 2341
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto/16 :goto_a

    .line 2343
    :cond_23
    sget-boolean v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_24

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebuilding update in place for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    :cond_24
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2345
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, v22

    iget v7, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v22

    iget v9, v0, Landroid/app/Notification;->number:I

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2351
    .restart local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 2352
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    invoke-virtual {v5, v4}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2353
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v37

    invoke-direct {v0, v1, v5, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    .line 2354
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui_ex/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2355
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateNotifications()V

    goto/16 :goto_a

    .line 2370
    .end local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v20    # "isForCurrentUser":Z
    :cond_25
    const-string v5, "not "

    goto/16 :goto_b
.end method

.method protected abstract updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 7
    .param p1, "row"    # Landroid/view/View;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 901
    const v0, 0x7f0f0164

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 902
    .local v6, "vetoButton":Landroid/view/View;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_1

    .line 904
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, "_pkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 906
    .local v3, "_tag":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 907
    .local v4, "_id":I
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    .line 908
    .local v5, "_userId":I
    new-instance v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 925
    .end local v2    # "_pkg":Ljava/lang/String;
    .end local v3    # "_tag":Ljava/lang/String;
    .end local v4    # "_id":I
    .end local v5    # "_userId":I
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 926
    return-object v6

    .line 923
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected abstract updateNotifications()V
.end method

.method protected updateRowStates()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2031
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->getMaxKeyguardNotifications()I

    move-result v4

    .line 2032
    .local v4, "maxKeyguardNotifications":I
    iget-object v12, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

    invoke-virtual {v12}, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;->removeAllViews()V

    .line 2034
    iget-object v12, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v12}, Lcom/android/systemui_ex/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 2035
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2037
    .local v0, "N":I
    const/4 v8, 0x0

    .line 2038
    .local v8, "visibleNotifications":I
    iget v12, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mState:I

    if-ne v12, v10, :cond_4

    move v5, v10

    .line 2039
    .local v5, "onKeyguard":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_d

    .line 2040
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .line 2041
    .local v2, "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    if-eqz v5, :cond_5

    .line 2042
    iget-object v12, v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v10}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 2052
    :cond_0
    :goto_2
    if-eqz v5, :cond_8

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->isMaxPriority(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-boolean v12, v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->isDisplayInKeyGuard:Z

    if-eqz v12, :cond_7

    move v6, v10

    .line 2055
    .local v6, "showOnKeyguard":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v12, :cond_2

    :cond_1
    if-eqz v5, :cond_a

    if-ge v8, v4, :cond_2

    if-nez v6, :cond_a

    .line 2058
    :cond_2
    iget-object v12, v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v14}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 2059
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 2060
    iget-object v12, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

    invoke-virtual {v12}, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;->addNotification(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)V

    .line 2039
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .end local v3    # "i":I
    .end local v5    # "onKeyguard":Z
    .end local v6    # "showOnKeyguard":Z
    :cond_4
    move v5, v11

    .line 2038
    goto :goto_0

    .line 2044
    .restart local v2    # "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .restart local v3    # "i":I
    .restart local v5    # "onKeyguard":Z
    :cond_5
    iget-object v12, v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v11}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 2045
    iget-object v12, v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v12

    if-nez v12, :cond_0

    .line 2046
    if-nez v3, :cond_6

    move v7, v10

    .line 2047
    .local v7, "top":Z
    :goto_5
    iget-object v12, v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v7}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    goto :goto_2

    .end local v7    # "top":Z
    :cond_6
    move v7, v11

    .line 2046
    goto :goto_5

    :cond_7
    move v6, v11

    .line 2052
    goto :goto_3

    :cond_8
    iget-object v12, v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v12}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v12

    if-eqz v12, :cond_9

    iget-boolean v12, v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->isDisplayInKeyGuard:Z

    if-eqz v12, :cond_9

    move v6, v10

    goto :goto_3

    :cond_9
    move v6, v11

    goto :goto_3

    .line 2063
    .restart local v6    # "showOnKeyguard":Z
    :cond_a
    iget-object v12, v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v12

    if-ne v12, v14, :cond_c

    move v9, v10

    .line 2064
    .local v9, "wasGone":Z
    :goto_6
    iget-object v12, v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v11}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 2065
    if-eqz v9, :cond_b

    .line 2067
    iget-object v12, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v13, v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v13, v10}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 2070
    :cond_b
    iget-boolean v12, v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->isDisplayInKeyGuard:Z

    if-eqz v12, :cond_3

    .line 2071
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v9    # "wasGone":Z
    :cond_c
    move v9, v11

    .line 2063
    goto :goto_6

    .line 2077
    .end local v2    # "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .end local v6    # "showOnKeyguard":Z
    :cond_d
    if-eqz v5, :cond_e

    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

    invoke-virtual {v10}, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_e

    .line 2078
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

    invoke-virtual {v10, v11}, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    .line 2083
    :goto_7
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

    iget-object v12, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x3

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2085
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    iget-object v12, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2086
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    iget-object v12, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2087
    return-void

    .line 2080
    :cond_e
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

    invoke-virtual {v10, v14}, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    goto :goto_7
.end method

.method protected updateSearchPanel()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1286
    const/4 v3, 0x0

    .line 1287
    .local v3, "visible":Z
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    if-eqz v4, :cond_0

    .line 1288
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/SearchPanelView;->isShowing()Z

    move-result v3

    .line 1289
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    invoke-interface {v4, v7}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1293
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1294
    .local v1, "tmpRoot":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f04005c

    invoke-virtual {v4, v7, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/SearchPanelView;

    iput-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    .line 1296
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    new-instance v7, Lcom/android/systemui_ex/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v8, 0x403

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;ILcom/android/systemui_ex/statusbar/StatusBarPanel;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui_ex/SearchPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1298
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/android/systemui_ex/SearchPanelView;->setVisibility(I)V

    .line 1299
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->isVertical()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v5

    .line 1300
    .local v2, "vertical":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    invoke-virtual {v4, v2}, Lcom/android/systemui_ex/SearchPanelView;->setHorizontal(Z)V

    .line 1302
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/SearchPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1304
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    invoke-interface {v4, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1305
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    invoke-virtual {v4, p0}, Lcom/android/systemui_ex/SearchPanelView;->setBar(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V

    .line 1306
    if-eqz v3, :cond_1

    .line 1307
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui_ex/SearchPanelView;->show(ZZ)V

    .line 1309
    :cond_1
    return-void

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "vertical":Z
    :cond_2
    move v2, v6

    .line 1299
    goto :goto_0
.end method

.method protected updateVisibleToUser()V
    .locals 2

    .prologue
    .line 1927
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 1928
    .local v0, "oldVisibleToUser":Z
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mScreenOnFromKeyguard:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 1930
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_0

    .line 1931
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mVisibleToUser:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    .line 1933
    :cond_0
    return-void

    .line 1928
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1421
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 1437
    :goto_0
    return v3

    .line 1425
    :cond_0
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_4

    .line 1426
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_allow_private_notifications"

    invoke-static {v5, v6, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 1429
    .local v0, "allowed":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    .line 1431
    .local v2, "dpmFlags":I
    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_2

    move v1, v3

    .line 1433
    .local v1, "allowedByDpm":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {v5, p1, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    move v3, v0

    .line 1434
    goto :goto_0

    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "dpmFlags":I
    :cond_1
    move v0, v4

    .line 1426
    goto :goto_1

    .restart local v0    # "allowed":Z
    .restart local v2    # "dpmFlags":I
    :cond_2
    move v1, v4

    .line 1431
    goto :goto_2

    .restart local v1    # "allowedByDpm":Z
    :cond_3
    move v3, v4

    .line 1433
    goto :goto_3

    .line 1437
    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "dpmFlags":I
    :cond_4
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    goto :goto_0
.end method

.method public userSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 838
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 839
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1917
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 1918
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mVisible:Z

    .line 1919
    if-nez p1, :cond_0

    .line 1920
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->dismissPopups()V

    .line 1923
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateVisibleToUser()V

    .line 1924
    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1519
    return-void
.end method
