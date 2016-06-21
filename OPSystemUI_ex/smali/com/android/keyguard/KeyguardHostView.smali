.class public Lcom/android/keyguard/KeyguardHostView;
.super Lcom/android/keyguard/KeyguardViewBase;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardHostView$SavedState;,
        Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;,
        Lcom/android/keyguard/KeyguardHostView$OnDismissAction;,
        Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;,
        Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static DEBUGXPORT:Z


# instance fields
.field private final MAX_WIDGETS:I

.field private mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppWidgetToShow:I

.field private mCameraDisabled:Z

.field private final mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

.field private mDisabledFeatures:I

.field private final mInsets:Landroid/graphics/Rect;

.field private mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

.field private mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

.field private mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

.field private mPostBootCompletedRunnable:Ljava/lang/Runnable;

.field private mSafeModeEnabled:Z

.field protected mShowSecurityWhenReturn:Z

.field private mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

.field private final mSwitchPageRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

.field private mTransportState:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserId:I

.field private mUserSetupCompleted:Z

.field private mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

.field private mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput v4, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 69
    const/4 v5, 0x5

    iput v5, p0, Lcom/android/keyguard/KeyguardHostView;->MAX_WIDGETS:I

    .line 82
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    .line 98
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    .line 100
    new-instance v5, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    .line 224
    new-instance v5, Lcom/android/keyguard/KeyguardHostView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$1;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 435
    new-instance v5, Lcom/android/keyguard/KeyguardHostView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$3;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    .line 601
    new-instance v5, Lcom/android/keyguard/KeyguardHostView$4;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$4;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    .line 808
    new-instance v5, Lcom/android/keyguard/KeyguardHostView$7;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$7;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    .line 129
    sget-boolean v5, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "KeyguardHostView"

    const-string v6, "KeyguardHostView()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 137
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    .line 139
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 141
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    .line 143
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraDisabled:Z

    .line 146
    :cond_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isSafeModeEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    .line 149
    const/4 v3, 0x0

    .line 151
    .local v3, "userContext":Landroid/content/Context;
    :try_start_0
    const-string v2, "system"

    .line 152
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v6, "system"

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    iget v9, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 161
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/appwidget/AppWidgetHost;

    const v6, 0x4b455947    # 1.2933447E7f

    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, v3, v6, v7, v8}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 164
    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 166
    new-instance v5, Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardViewStateManager;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    .line 168
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_setup_complete"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    .line 172
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInitialTransportState()V

    .line 174
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-eqz v4, :cond_3

    .line 175
    const-string v4, "KeyguardHostView"

    const-string v5, "Keyguard widgets disabled by safe mode"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_3
    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 178
    const-string v4, "KeyguardHostView"

    const-string v5, "Keyguard widgets disabled by DPM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_4
    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 181
    const-string v4, "KeyguardHostView"

    const-string v5, "Keyguard secure camera disabled by DPM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_5
    return-void

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 158
    move-object v3, p1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardHostView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateAndAddWidgets()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardHostView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardHostView;)Landroid/appwidget/AppWidgetHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardViewStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->showAppropriateWidgetPage()V

    return-void
.end method

.method private addDefaultStatusWidget(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 700
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 701
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/android/keyguard/R$layout;->keyguard_status_view:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 702
    .local v1, "statusWidget":Landroid/view/View;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 703
    return-void
.end method

.method private addDefaultWidgets()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 643
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 644
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 645
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/android/keyguard/R$layout;->keyguard_add_widget:I

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 646
    .local v0, "addWidget":Landroid/view/View;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v0, v5}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 647
    sget v4, Lcom/android/keyguard/R$id;->keyguard_add_widget_view:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 648
    .local v1, "addWidgetButton":Landroid/view/View;
    new-instance v4, Lcom/android/keyguard/KeyguardHostView$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardHostView$5;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    .end local v0    # "addWidget":Landroid/view/View;
    .end local v1    # "addWidgetButton":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->cameraDisabledByDpm()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$bool;->kg_enable_camera_default_widget:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 662
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getActivityLauncher()Lcom/android/keyguard/KeyguardActivityLauncher;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/keyguard/CameraWidgetFrame;->create(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;)Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v2

    .line 664
    .local v2, "cameraWidget":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 665
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    .line 668
    .end local v2    # "cameraWidget":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private addWidget(IIZ)Z
    .locals 5
    .param p1, "appId"    # I
    .param p2, "pageIndex"    # I
    .param p3, "updateDbIfFailed"    # Z

    .prologue
    .line 585
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 586
    .local v0, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 587
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 588
    .local v1, "view":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0, v1, p2}, Lcom/android/keyguard/KeyguardHostView;->addWidget(Landroid/appwidget/AppWidgetHostView;I)V

    .line 589
    const/4 v2, 0x1

    .line 597
    .end local v1    # "view":Landroid/appwidget/AppWidgetHostView;
    :goto_0
    return v2

    .line 591
    :cond_0
    if-eqz p3, :cond_1

    .line 592
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** AppWidgetInfo for app widget id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  was null for user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deleting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 595
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeAppWidget(I)Z

    .line 597
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addWidgetsFromSettings()V
    .locals 5

    .prologue
    .line 706
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 707
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 730
    :cond_1
    :goto_0
    return-void

    .line 711
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v1

    .line 714
    .local v1, "insertionIndex":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 716
    .local v2, "widgets":[I
    if-nez v2, :cond_3

    .line 717
    const-string v3, "KeyguardHostView"

    const-string v4, "Problem reading widgets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 719
    :cond_3
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 720
    aget v3, v2, v0

    const/4 v4, -0x2

    if-ne v3, v4, :cond_4

    .line 721
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 719
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 726
    :cond_4
    aget v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    goto :goto_2
.end method

.method private allocateIdForDefaultAppWidget()I
    .locals 7

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 735
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/ComponentName;

    sget v4, Lcom/android/keyguard/R$string;->widget_default_package_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->widget_default_class_name:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .local v1, "defaultAppWidget":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 743
    .local v0, "appWidgetId":I
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_0
    return v0

    .line 744
    :catch_0
    move-exception v2

    .line 745
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when trying to bind default AppWidget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 747
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cameraDisabledByDpm()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupAppWidgetIds()V
    .locals 7

    .prologue
    .line 196
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    :cond_0
    return-void

    .line 203
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 204
    .local v2, "appWidgetIdsInKeyguardSettings":[I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v1

    .line 205
    .local v1, "appWidgetIdsBoundToHost":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 206
    aget v0, v1, v3

    .line 207
    .local v0, "appWidgetId":I
    invoke-static {v2, v0}, Lcom/android/keyguard/KeyguardHostView;->contains([II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 208
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found a appWidgetId that\'s not being used by keyguard, deleting id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 205
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static contains([II)Z
    .locals 5
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 217
    .local v3, "value":I
    if-ne v3, p1, :cond_0

    .line 218
    const/4 v4, 0x1

    .line 221
    .end local v3    # "value":I
    :goto_1
    return v4

    .line 216
    .restart local v3    # "value":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v3    # "value":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private enableUserSelectorIfNecessary()V
    .locals 6

    .prologue
    .line 1014
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1015
    .local v3, "um":Landroid/os/UserManager;
    if-nez v3, :cond_1

    .line 1016
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1017
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1018
    const-string v4, "KeyguardHostView"

    const-string v5, "user service is null."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1072
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1027
    sget v4, Lcom/android/keyguard/R$id;->keyguard_user_selector:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1028
    .local v1, "multiUserView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 1029
    sget-boolean v4, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "KeyguardHostView"

    const-string v5, "can\'t find user_selector in layout."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1033
    :cond_2
    instance-of v4, v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v4, :cond_3

    .line 1034
    check-cast v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .end local v1    # "multiUserView":Landroid/view/View;
    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .line 1035
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setVisibility(I)V

    .line 1036
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->addUsers(Ljava/util/Collection;)V

    .line 1037
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$9;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    .line 1062
    .local v0, "callback":Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setCallback(Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;)V

    goto :goto_0

    .line 1064
    .end local v0    # "callback":Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;
    .restart local v1    # "multiUserView":Landroid/view/View;
    :cond_3
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1065
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1066
    if-nez v1, :cond_4

    .line 1067
    const-string v4, "KeyguardHostView"

    const-string v5, "could not find the user_selector."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1069
    :cond_4
    const-string v4, "KeyguardHostView"

    const-string v5, "user_selector is the wrong type."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private ensureTransportPresentOrRemoved(I)Z
    .locals 10
    .param p1, "state"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 950
    sget v7, Lcom/android/keyguard/R$id;->keyguard_transport_control:I

    invoke-direct {p0, v7}, Lcom/android/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    move v3, v5

    .line 951
    .local v3, "showing":Z
    :goto_0
    const/4 v7, 0x2

    if-ne p1, v7, :cond_4

    move v4, v5

    .line 952
    .local v4, "visible":Z
    :goto_1
    if-ne p1, v5, :cond_5

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v5

    .line 953
    .local v2, "shouldBeVisible":Z
    :goto_2
    if-nez v3, :cond_7

    if-nez v4, :cond_0

    if-eqz v2, :cond_7

    .line 955
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 956
    .local v0, "lastWidget":I
    const/4 v1, 0x0

    .line 957
    .local v1, "position":I
    if-ltz v0, :cond_1

    .line 958
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v6

    if-eqz v6, :cond_6

    move v1, v0

    .line 961
    :cond_1
    :goto_3
    sget-boolean v6, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v6, :cond_2

    const-string v6, "KeyguardHostView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add transport at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 970
    .end local v0    # "lastWidget":I
    .end local v1    # "position":I
    :goto_4
    return v5

    .end local v2    # "shouldBeVisible":Z
    .end local v3    # "showing":Z
    .end local v4    # "visible":Z
    :cond_3
    move v3, v6

    .line 950
    goto :goto_0

    .restart local v3    # "showing":Z
    :cond_4
    move v4, v6

    .line 951
    goto :goto_1

    .restart local v4    # "visible":Z
    :cond_5
    move v2, v6

    .line 952
    goto :goto_2

    .line 958
    .restart local v0    # "lastWidget":I
    .restart local v1    # "position":I
    .restart local v2    # "shouldBeVisible":Z
    :cond_6
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    .line 964
    .end local v0    # "lastWidget":I
    .end local v1    # "position":I
    :cond_7
    if-eqz v3, :cond_9

    if-nez p1, :cond_9

    .line 965
    sget-boolean v5, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v5, :cond_8

    const-string v5, "KeyguardHostView"

    const-string v7, "remove transport"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_8
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardWidgetPager;->removeWidget(Landroid/view/View;)V

    .line 967
    iput-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    .line 968
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    :cond_9
    move v5, v6

    .line 970
    goto :goto_4
.end method

.method private findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;
    .locals 2

    .prologue
    .line 974
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 975
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/CameraWidgetFrame;

    .line 979
    :goto_1
    return-object v1

    .line 974
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 979
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAppropriateWidgetPage(I)I
    .locals 6
    .param p1, "musicTransportState"    # I

    .prologue
    .line 988
    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-eqz v3, :cond_2

    .line 989
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 990
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 991
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-ne v3, v4, :cond_0

    .line 1010
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 990
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 999
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 1000
    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "KeyguardHostView"

    const-string v4, "Music playing, show transport"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    .line 1005
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1006
    .local v2, "rightMost":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1007
    add-int/lit8 v2, v2, -0x1

    .line 1009
    :cond_5
    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show right-most page "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v1, v2

    .line 1010
    goto :goto_1
.end method

.method private getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I
    .locals 3
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, "disabledFeatures":I
    if-eqz p1, :cond_0

    .line 392
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 393
    .local v0, "currentUser":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 395
    .end local v0    # "currentUser":I
    :cond_0
    return v1
.end method

.method private getInitialTransportState()V
    .locals 4

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCachedDisplayClientState()Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    move-result-object v0

    .line 188
    .local v0, "dcs":Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->clearing:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 191
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial transport state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pbstate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    return-void

    .line 188
    :cond_1
    iget v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getInsertPageIndex()I
    .locals 4

    .prologue
    .line 689
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    sget v3, Lcom/android/keyguard/R$id;->keyguard_add_widget:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 690
    .local v0, "addWidget":Landroid/view/View;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 691
    .local v1, "insertionIndex":I
    if-gez v1, :cond_0

    .line 692
    const/4 v1, 0x0

    .line 696
    :goto_0
    return v1

    .line 694
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;
    .locals 3

    .prologue
    .line 675
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    if-nez v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 677
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_transport_control_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTransportControlView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    .line 679
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    new-instance v2, Lcom/android/keyguard/KeyguardHostView$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardHostView$6;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView;->setTransportControlCallback(Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;)V

    .line 685
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    return-object v1
.end method

.method private getWidgetPosition(I)I
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    .line 272
    .local v0, "appWidgetContainer":Lcom/android/keyguard/KeyguardWidgetPager;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 273
    .local v1, "children":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 274
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    .line 275
    .local v2, "content":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 282
    .end local v2    # "content":Landroid/view/View;
    .end local v3    # "i":I
    :goto_1
    return v3

    .line 277
    .restart local v2    # "content":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_0
    if-nez v2, :cond_1

    .line 279
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** Null content at i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",N="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    .end local v2    # "content":Landroid/view/View;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private static final isMusicPlaying(I)Z
    .locals 1
    .param p0, "playbackState"    # I

    .prologue
    .line 243
    packed-switch p0, :pswitch_data_0

    .line 252
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 250
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private maybeEnableAddButton()V
    .locals 2

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    .line 356
    :cond_0
    return-void
.end method

.method private numWidgets()I
    .locals 4

    .prologue
    .line 632
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 633
    .local v0, "childCount":I
    const/4 v2, 0x0

    .line 634
    .local v2, "widgetCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 635
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 636
    add-int/lit8 v2, v2, 0x1

    .line 634
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :cond_1
    return v2
.end method

.method private setInsets(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 887
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 888
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/SlidingChallengeLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 891
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 892
    .local v0, "cameraWidget":Lcom/android/keyguard/CameraWidgetFrame;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CameraWidgetFrame;->setInsets(Landroid/graphics/Rect;)V

    .line 893
    :cond_2
    return-void
.end method

.method private shouldEnableAddWidget()Z
    .locals 2

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->numWidgets()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAppropriateWidgetPage()V
    .locals 4

    .prologue
    .line 911
    iget v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 912
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->ensureTransportPresentOrRemoved(I)Z

    move-result v2

    .line 913
    .local v2, "transportAdded":Z
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->getAppropriateWidgetPage(I)I

    move-result v0

    .line 914
    .local v0, "pageToShow":I
    if-nez v2, :cond_1

    .line 915
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 919
    new-instance v3, Lcom/android/keyguard/KeyguardHostView$8;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/KeyguardHostView$8;-><init>(Lcom/android/keyguard/KeyguardHostView;I)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateAndAddWidgets()V
    .locals 2

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V

    .line 335
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addDefaultWidgets()V

    .line 336
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addWidgetsFromSettings()V

    .line 337
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->maybeEnableAddButton()V

    .line 338
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v0, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->setEnableChallengeDragging(Z)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 349
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 350
    return-void

    .line 342
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private widgetsDisabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 399
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    .line 400
    .local v1, "disabledByLowRamDevice":Z
    iget v5, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v0, v3

    .line 402
    .local v0, "disabledByDpm":Z
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    .line 403
    .local v2, "disabledByUser":Z
    :goto_1
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    .end local v0    # "disabledByDpm":Z
    .end local v2    # "disabledByUser":Z
    :cond_2
    move v0, v4

    .line 400
    goto :goto_0

    .restart local v0    # "disabledByDpm":Z
    :cond_3
    move v2, v4

    .line 402
    goto :goto_1
.end method


# virtual methods
.method addWidget(Landroid/appwidget/AppWidgetHostView;I)V
    .locals 1
    .param p1, "view"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "pageIndex"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 433
    return-void
.end method

.method public checkAppWidgetConsistency()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 753
    iget-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    .line 754
    .local v2, "childCount":I
    const/4 v6, 0x0

    .line 755
    .local v6, "widgetPageExists":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 756
    iget-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 757
    const/4 v6, 0x1

    .line 761
    :cond_0
    if-nez v6, :cond_3

    .line 762
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v4

    .line 764
    .local v4, "insertPageIndex":I
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v9

    if-nez v9, :cond_5

    move v5, v7

    .line 766
    .local v5, "userAddedWidgetsEnabled":Z
    :goto_1
    const/4 v0, 0x0

    .line 768
    .local v0, "addedDefaultAppWidget":Z
    iget-boolean v9, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v9, :cond_1

    .line 769
    if-eqz v5, :cond_6

    .line 770
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 771
    .local v1, "appWidgetId":I
    if-eqz v1, :cond_1

    .line 772
    invoke-direct {p0, v1, v4, v7}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 796
    .end local v1    # "appWidgetId":I
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    .line 797
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 801
    :cond_2
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v7, :cond_3

    if-eqz v5, :cond_3

    .line 802
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v8, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->onAddView(Landroid/view/View;I)V

    .line 806
    .end local v0    # "addedDefaultAppWidget":Z
    .end local v4    # "insertPageIndex":I
    .end local v5    # "userAddedWidgetsEnabled":Z
    :cond_3
    return-void

    .line 755
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v4    # "insertPageIndex":I
    :cond_5
    move v5, v8

    .line 764
    goto :goto_1

    .line 777
    .restart local v0    # "addedDefaultAppWidget":Z
    .restart local v5    # "userAddedWidgetsEnabled":Z
    :cond_6
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getFallbackAppWidgetId()I

    move-result v1

    .line 778
    .restart local v1    # "appWidgetId":I
    if-nez v1, :cond_7

    .line 779
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 780
    if-eqz v1, :cond_7

    .line 781
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    .line 784
    :cond_7
    if-eqz v1, :cond_1

    .line 785
    invoke-direct {p0, v1, v4, v8}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 786
    if-nez v0, :cond_1

    .line 787
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 788
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    goto :goto_2
.end method

.method public cleanUp()V
    .locals 4

    .prologue
    .line 1078
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 1079
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1080
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 1081
    .local v1, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->removeAllViews()V

    .line 1079
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1083
    .end local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    .line 1084
    return-void
.end method

.method public clearAppWidgetToShow()V
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 582
    return-void
.end method

.method public dismiss(Z)Z
    .locals 8
    .param p1, "authenticated"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 364
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->dismiss(Z)Z

    move-result v0

    .line 365
    .local v0, "finished":Z
    if-nez v0, :cond_1

    .line 366
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, v5}, Lcom/android/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 370
    .local v3, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$bool;->kg_sim_puk_account_full_screen:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 371
    .local v1, "isFullScreen":Z
    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v6, :cond_0

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v6, :cond_0

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v6, :cond_2

    :cond_0
    move v2, v5

    .line 374
    .local v2, "isSimOrAccount":Z
    :goto_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v7, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 378
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v6

    const/high16 v7, 0x2000000

    or-int/2addr v6, v7

    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardHostView;->setSystemUiVisibility(I)V

    .line 382
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v6, :cond_1

    .line 383
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-nez v1, :cond_5

    :goto_3
    invoke-virtual {v6, v5}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 386
    .end local v1    # "isFullScreen":Z
    .end local v2    # "isSimOrAccount":Z
    .end local v3    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_1
    return v0

    .restart local v1    # "isFullScreen":Z
    .restart local v3    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_2
    move v2, v4

    .line 371
    goto :goto_0

    .restart local v2    # "isSimOrAccount":Z
    :cond_3
    move v6, v4

    .line 374
    goto :goto_1

    .line 378
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v6

    const v7, -0x2000001

    and-int/2addr v6, v7

    goto :goto_2

    :cond_5
    move v5, v4

    .line 383
    goto :goto_3
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 882
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->setInsets(Landroid/graphics/Rect;)V

    .line 883
    const/4 v0, 0x1

    return v0
.end method

.method public getUserActivityTimeout()J
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getUserActivityTimeout()J

    move-result-wide v0

    .line 499
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 419
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onAttachedToWindow()V

    .line 420
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 421
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 422
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 426
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onDetachedFromWindow()V

    .line 427
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 428
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 429
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 287
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onFinishInflate()V

    .line 291
    sget v2, Lcom/android/keyguard/R$id;->keyguard_widget_pager_delete_target:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, "deleteDropTarget":Landroid/view/View;
    sget v2, Lcom/android/keyguard/R$id;->app_widget_container:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardWidgetPager;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    .line 293
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 294
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setCallbacks(Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;)V

    .line 295
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setDeleteDropTarget(Landroid/view/View;)V

    .line 296
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setMinScale(F)V

    .line 298
    sget v2, Lcom/android/keyguard/R$id;->sliding_layout:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/SlidingChallengeLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    .line 299
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->setOnChallengeScrolledListener(Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setViewStateManager(Lcom/android/keyguard/KeyguardViewStateManager;)V

    .line 303
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 305
    sget v2, Lcom/android/keyguard/R$id;->multi_pane_challenge:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/MultiPaneChallengeLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    .line 307
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    :goto_0
    check-cast v0, Lcom/android/keyguard/ChallengeLayout;

    .line 309
    .local v0, "challenge":Lcom/android/keyguard/ChallengeLayout;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-interface {v0, v2}, Lcom/android/keyguard/ChallengeLayout;->setOnBouncerStateChangedListener(Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V

    .line 310
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->getBouncerAnimationDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setBouncerAnimationDuration(I)V

    .line 311
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardViewStateManager;->setPagedView(Lcom/android/keyguard/KeyguardWidgetPager;)V

    .line 312
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardViewStateManager;->setChallengeLayout(Lcom/android/keyguard/ChallengeLayout;)V

    .line 314
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardViewStateManager;->setSecurityViewContainer(Lcom/android/keyguard/KeyguardSecurityView;)V

    .line 316
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateAndAddWidgets()V

    .line 329
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityViews(Z)V

    .line 330
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 331
    return-void

    .line 307
    .end local v0    # "challenge":Lcom/android/keyguard/ChallengeLayout;
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    goto :goto_0

    .line 321
    .restart local v0    # "challenge":Lcom/android/keyguard/ChallengeLayout;
    :cond_2
    new-instance v2, Lcom/android/keyguard/KeyguardHostView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardHostView$2;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 567
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onPause()V

    .line 570
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 571
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 574
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 575
    .local v0, "cameraPage":Lcom/android/keyguard/CameraWidgetFrame;
    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {v0}, Lcom/android/keyguard/CameraWidgetFrame;->onScreenTurnedOff()V

    .line 578
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 867
    instance-of v1, p1, Lcom/android/keyguard/KeyguardHostView$SavedState;

    if-nez v1, :cond_0

    .line 868
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 878
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 871
    check-cast v0, Lcom/android/keyguard/KeyguardHostView$SavedState;

    .line 872
    .local v0, "ss":Lcom/android/keyguard/KeyguardHostView$SavedState;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 873
    iget v1, v0, Lcom/android/keyguard/KeyguardHostView$SavedState;->transportState:I

    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 874
    iget v1, v0, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 875
    iget-object v1, v0, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->setInsets(Landroid/graphics/Rect;)V

    .line 876
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreInstanceState, transport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 559
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onResume()V

    .line 560
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 563
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 853
    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSaveInstanceState, tstate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 855
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/keyguard/KeyguardHostView$SavedState;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardHostView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 857
    .local v1, "ss":Lcom/android/keyguard/KeyguardHostView$SavedState;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v0, 0x1

    .line 859
    .local v0, "showing":Z
    :goto_0
    if-eqz v0, :cond_2

    const/4 v3, 0x2

    :goto_1
    iput v3, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->transportState:I

    .line 860
    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    iput v3, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    .line 861
    iget-object v3, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 862
    return-object v1

    .line 857
    .end local v0    # "showing":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 859
    .restart local v0    # "showing":Z
    :cond_2
    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 261
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 262
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 263
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardHostView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 264
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 265
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 267
    return v0

    :cond_1
    move v0, v1

    .line 265
    goto :goto_0
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    .line 490
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 897
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->onWindowFocusChanged(Z)V

    .line 898
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v2, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_3

    const-string v1, "focused"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    if-eqz v1, :cond_2

    .line 900
    sget v1, Lcom/android/keyguard/R$id;->sliding_layout:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 902
    .local v0, "slider":Lcom/android/keyguard/SlidingChallengeLayout;
    if-eqz v0, :cond_1

    .line 903
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    .line 904
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 906
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    .line 908
    .end local v0    # "slider":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_2
    return-void

    .line 898
    :cond_3
    const-string v1, "unfocused"

    goto :goto_0
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 413
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityViews(Z)V

    .line 415
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 484
    :cond_0
    return-void
.end method
