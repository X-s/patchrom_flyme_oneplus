.class public Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
.super Lcom/android/systemui_ex/statusbar/BaseStatusBar;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui_ex/DemoMode;
.implements Lcom/android/systemui_ex/statusbar/DragDownHelper$DragDownCallback;
.implements Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;
.implements Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$HighlightHintViewGestureDetector;,
        Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;,
        Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$ShadeUpdates;,
        Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$FastColorDrawable;,
        Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;,
        Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DialIgnoreViewGestureDetector;,
        Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;
    }
.end annotation


# static fields
.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final CHATTY:Z

.field public static final DEBUG:Z

.field public static final SPEW:Z

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static mIsDialIgnoreViewVisible:Z

.field public static mIsHighlightHintViewVisible:Z


# instance fields
.field final FLIP_DURATION:I

.field final FLIP_DURATION_IN:I

.field final FLIP_DURATION_OUT:I

.field clock_flag_hide:I

.field clock_flag_show:I

.field dialIgnoreBackgroundView:Landroid/view/View;

.field dialIgnoreView:Landroid/widget/TextView;

.field private isClockShowPostponed:Z

.field private isSystemHidingClock:Z

.field mAbsPos:[I

.field final mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field mAccessibilityController:Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;

.field private final mAnimateCollapsePanels:Ljava/lang/Runnable;

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:Z

.field private mBackDropMedia:Landroid/widget/FrameLayout;

.field private mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

.field private mBackdropBack:Landroid/widget/ImageView;

.field private mBackdropFront:Landroid/widget/ImageView;

.field private mBackdropInterpolator:Landroid/view/animation/Interpolator;

.field mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

.field mBluetoothController:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

.field mBrightnessMirrorController:Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraIcon:Landroid/widget/ImageView;

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mCarrierLabelHeight:I

.field private mCarrierLabelVisible:Z

.field mCastController:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field mClearButtonAnim:Landroid/animation/Animator;

.field private mClockVisibility:Z

.field private mClockVisibilityAnimator:Landroid/animation/ObjectAnimator;

.field private mControlPanel:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

.field mCurrentDisplaySize:Landroid/graphics/Point;

.field private final mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDarkStatusbarIconsShown:Z

.field final mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mDemoMode:Z

.field private mDemoModeAllowed:Z

.field private mDemoStatusIcons:Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;

.field private mDialIgnoreViewGestureDetector:Landroid/view/GestureDetector;

.field mDialIgnoreViewTouchListener:Landroid/view/View$OnTouchListener;

.field mDisabled:I

.field private mDisabledUnmodified:I

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDozeScrimController:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

.field private mDozeServiceHost:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

.field private mDozing:Z

.field private mDozingRequested:Z

.field private mDraggedDownRow:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

.field private mDrawCount:I

.field mEdgeBorder:I

.field mExpandedContents:Landroid/view/View;

.field mExpandedVisible:Z

.field mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mGauseShadow:Landroid/view/View;

.field private final mGestureRec:Lcom/android/systemui_ex/statusbar/GestureRecorder;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mHideBackdropFront:Ljava/lang/Runnable;

.field private mHighlightHintAnimation:Ljava/lang/Runnable;

.field private mHighlightHintGestureDetector:Landroid/view/GestureDetector;

.field private mHighlightHintView:Landroid/widget/LinearLayout;

.field private mHighlightHintViewTouchListener:Landroid/view/View$OnTouchListener;

.field mHomeActionListener:Landroid/view/View$OnTouchListener;

.field mHotspotController:Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;

.field mIconHPadding:I

.field mIconPolicy:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

.field mIconSize:I

.field private mInteractingWindows:I

.field private mIsCta:Z

.field private mIsHighlightAnimationRunning:Z

.field private mIsHighlightHintRunning:Z

.field private mIsKeyguardWallpaperAnimating:Z

.field private mIsLatestClockVisible:Z

.field mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

.field private mKeyguardFadingAway:Z

.field private mKeyguardFadingAwayDelay:J

.field private mKeyguardFadingAwayDuration:J

.field mKeyguardIndicationController:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

.field mKeyguardMaxNotificationCount:I

.field mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

.field mKeyguardMoreIcon:Landroid/view/View;

.field mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

.field mKeyguardNotifier:Lcom/android/systemui_ex/NotificationNotifierGroup;

.field private mKeyguardShowingMedia:Z

.field mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

.field mKeyguardStatusView:Landroid/view/View;

.field mKeyguardSystemIcons:Landroid/widget/LinearLayout;

.field mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mLSState:Lcom/android/systemui_ex/plugin/LSState;

.field private mLastLockToAppLongPress:J

.field private mLastSpeedbumpIndex:I

.field private mLastVisibilityReportUptimeMs:J

.field private mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

.field private mLaunchTransitionFadingAway:Z

.field mLeaveOpenOnKeyguardHide:Z

.field private mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field mLocationController:Lcom/android/systemui_ex/statusbar/policy/LocationControllerImpl;

.field private mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

.field mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaListener:Landroid/media/session/MediaController$Callback;

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMediaNotificationKey:Ljava/lang/String;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field mMoreIcon:Landroid/view/View;

.field mNaturalBarHeight:I

.field private mNavigationBarMode:I

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field private mNeedToPendingHiding:Z

.field mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

.field mNextAlarmController:Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;

.field mNotificationIconArea:Landroid/view/View;

.field mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

.field private final mNotificationLocationsChangedListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field mNotificationNotifier:Lcom/android/systemui_ex/NotificationNotifierGroup;

.field mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

.field mNotificationPanelGravity:I

.field mNotificationPanelMinHeightFrac:F

.field private final mOnChildLocationsChangedListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field private final mOverflowClickListener:Landroid/view/View$OnClickListener;

.field mPixelFormat:I

.field mPositionTmp:[I

.field mPostCollapseRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

.field mQueueLock:Ljava/lang/Object;

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field mRotationLockController:Lcom/android/systemui_ex/statusbar/policy/RotationLockControllerImpl;

.field private mScreenOn:Ljava/lang/Boolean;

.field private mScreenOnComingFromTouch:Z

.field private mScreenOnFromKeyguard:Z

.field private mScreenOnTouchLocation:Landroid/graphics/PointF;

.field private mScreenPinningRequest:Lcom/android/systemui_ex/recent/ScreenPinningRequest;

.field private mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

.field private mScrimSrcModeEnabled:Z

.field mScrollViewAnim:Landroid/animation/Animator;

.field mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

.field private final mShadeUpdates:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$ShadeUpdates;

.field private mShowCarrierInPanel:Z

.field private mShowSearchHoldoff:I

.field private mShowSearchPanel:Ljava/lang/Runnable;

.field private mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarContents:Landroid/widget/RelativeLayout;

.field private mStatusBarHeaderHeight:I

.field private mStatusBarMode:I

.field mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

.field mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

.field private mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

.field private mStatusBarWindowState:I

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStatusIconsKeyguard:Landroid/widget/LinearLayout;

.field mStatusbarBatteryIconGroup:Lcom/android/systemui_ex/BatteryIconGroup;

.field private mStatusbarColorObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;",
            ">;"
        }
    .end annotation
.end field

.field mStopTracing:Ljava/lang/Runnable;

.field private mSubsLabel:Landroid/widget/TextView;

.field mSystemIconArea:Landroid/widget/LinearLayout;

.field mSystemIcons:Landroid/widget/LinearLayout;

.field mSystemUiVisibility:I

.field private mTaskManager:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

.field private mTaskManagerButton:Landroid/widget/ImageButton;

.field private mTaskManagerPanel:Landroid/widget/LinearLayout;

.field private mTempHideHighlightHintView:Z

.field private mTempHideIgnoreView:Z

.field mThreeKeyKeyguardTipsView:Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

.field mThreeKeyTipsView:Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

.field private mTicker:Lcom/android/systemui_ex/statusbar/phone/Ticker;

.field private mTickerEnabled:Z

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field mTracking:Z

.field mTrackingPosition:I

.field private mUnlockMethodCache:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mUserInfoController:Lcom/android/systemui_ex/statusbar/policy/UserInfoController;

.field private mUserSetup:Z

.field private mUserSetupObserver:Landroid/database/ContentObserver;

.field mUserSwitcherController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

.field mVPNController:Lcom/android/systemui_ex/statusbar/policy/VPNControllerImpl;

.field private final mVisibilityReporter:Ljava/lang/Runnable;

.field private mVisible:Z

.field mVolumeComponent:Lcom/android/systemui_ex/volume/VolumeComponent;

.field private mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

.field private mWaitingForKeyguardExit:Z

.field private mWallpaperView:Landroid/widget/ImageView;

.field mZenModeController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

.field private shouldShowClockOnLauncher:Z

.field private showTaskList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 219
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    .line 221
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->SPEW:Z

    .line 230
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->CHATTY:Z

    .line 269
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 535
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 536
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 592
    sput-boolean v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsDialIgnoreViewVisible:Z

    .line 603
    sput-boolean v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsHighlightHintViewVisible:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;-><init>()V

    .line 312
    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 313
    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 314
    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 316
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    .line 320
    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 328
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    .line 383
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showTaskList:Z

    .line 403
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    .line 407
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 410
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    .line 413
    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 429
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    .line 435
    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 438
    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 440
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 443
    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui_ex/statusbar/GestureRecorder;

    .line 449
    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 456
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    .line 457
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 477
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$2;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 517
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$3;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    .line 533
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 534
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropInterpolator:Landroid/view/animation/Interpolator;

    .line 542
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 543
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 549
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$4;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    .line 566
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$5;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mOnChildLocationsChangedListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 577
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 580
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$ShadeUpdates;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShadeUpdates:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    .line 587
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsCta:Z

    .line 590
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideIgnoreView:Z

    .line 598
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsHighlightAnimationRunning:Z

    .line 599
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNeedToPendingHiding:Z

    .line 604
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideHighlightHintView:Z

    .line 616
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$6;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 638
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 684
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$8;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mOverflowClickListener:Landroid/view/View$OnClickListener;

    .line 691
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDarkStatusbarIconsShown:Z

    .line 692
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsLatestClockVisible:Z

    .line 693
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsHighlightHintRunning:Z

    .line 697
    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLastSpeedbumpIndex:I

    .line 1516
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$20;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$20;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    .line 1524
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$21;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$21;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    .line 1533
    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 1534
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$22;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$22;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    .line 1541
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$23;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$23;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHomeActionListener:Landroid/view/View$OnTouchListener;

    .line 2578
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$27;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$27;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    .line 3098
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$29;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$29;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 3146
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$30;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$30;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    .line 3246
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 3247
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 3248
    const/16 v0, 0x7d

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_OUT:I

    .line 3249
    const/16 v0, 0xe1

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_IN:I

    .line 3250
    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->FLIP_DURATION:I

    .line 3314
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$33;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$33;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDialIgnoreViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 3462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibility:Z

    .line 3597
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->clock_flag_show:I

    .line 3598
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->clock_flag_hide:I

    .line 3767
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$36;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$36;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 3943
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$37;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$37;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4192
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4555
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$41;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$41;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 4565
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$42;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$42;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 5058
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsKeyguardWallpaperAnimating:Z

    .line 5597
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$45;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$45;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 5768
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$46;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$46;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintAnimation:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setHeadsUpVisibility(Z)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hideHighlightHintOnStatusBar()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->removeHeadsUpView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->addHeadsUpView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/media/MediaMetadata;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # J

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showDoNotDisturbOnStatusBar()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/SearchPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/SearchPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->clearAllNotifications()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showTaskList:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showTaskList:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisableNotificationAlerts:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDrawCount:I

    return v0
.end method

.method static synthetic access$4208(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDrawCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDrawCount:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->handleLongPressBackRecents(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpTicker:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->escalateHeadsUp()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->onLaunchTransitionTimeout()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDialIgnoreViewGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic access$6100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibility:Z

    return v0
.end method

.method static synthetic access$6300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    return v0
.end method

.method static synthetic access$6502(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTicking:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic access$6902(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->notifyHeadsUpScreenOn(Z)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->stopNotificationLogging()V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->resetUserExpandedStates()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startNotificationLoggingIfScreenOnAndVisible()V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateWallpaper()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/view/View;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startIgnoreViewAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7902(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideIgnoreView:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->stopIgnoreViewAnimation(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->handleStartSettingsActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$8302(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->runLaunchTransitionEndRunnable()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozingRequested:Z

    return v0
.end method

.method static synthetic access$8702(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozingRequested:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return v0
.end method

.method static synthetic access$8900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateDozing()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateDozingState()V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic access$9700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->launchHighLightHintAp()V

    return-void
.end method

.method static synthetic access$9802(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsHighlightAnimationRunning:Z

    return p1
.end method

.method static synthetic access$9900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNeedToPendingHiding:Z

    return v0
.end method

.method static synthetic access$9902(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNeedToPendingHiding:Z

    return p1
.end method

.method private addHeadsUpView()V
    .locals 6

    .prologue
    .line 1629
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d007e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1631
    .local v2, "headsUpHeight":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7de

    const v4, 0x820328

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1641
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1642
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1643
    const-string v1, "Heads Up"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1644
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1645
    const v1, 0x7f0b0028

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1647
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-interface {v1, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1648
    return-void
.end method

.method private addNavigationBar()V
    .locals 3

    .prologue
    .line 1586
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNavigationBar: about to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_1

    .line 1592
    :goto_0
    return-void

    .line 1589
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1591
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private addOrDeleteNotificationIconsOnKeyguardStatusbar(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 7
    .param p4, "params"    # Landroid/widget/LinearLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui_ex/statusbar/StatusBarIconView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui_ex/statusbar/StatusBarIconView;",
            ">;",
            "Landroid/widget/LinearLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2313
    .local p1, "notificationCountIcon":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui_ex/statusbar/StatusBarIconView;>;"
    .local p2, "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "toShow":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui_ex/statusbar/StatusBarIconView;>;"
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 2314
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->removeAllViews()V

    .line 2318
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 2319
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v5, v2}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2320
    .local v0, "child":Landroid/view/View;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2321
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2323
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2324
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2318
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2329
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 2330
    .local v3, "toRemoveCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 2331
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    .line 2330
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2334
    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 2335
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2336
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2337
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v5, v4, v2, p4}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2334
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2342
    .end local v4    # "v":Landroid/view/View;
    :cond_6
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getChildCount()I

    move-result v1

    .line 2344
    .local v1, "childCount":I
    if-lez v1, :cond_7

    .line 2345
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 2346
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-static {}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->isUsingDarkIcon()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->onStatusbarColorChange(Z)V

    .line 2351
    :goto_3
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifier:Lcom/android/systemui_ex/NotificationNotifierGroup;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateNotificationNotifier(Lcom/android/systemui_ex/NotificationNotifierGroup;I)V

    .line 2353
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->clearStatusbarIconColor()V

    .line 2354
    return-void

    .line 2348
    :cond_7
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->setVisibility(I)V

    goto :goto_3
.end method

.method private addOrDeleteNotificationIconsOnStatusbar(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 7
    .param p4, "params"    # Landroid/widget/LinearLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui_ex/statusbar/StatusBarIconView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui_ex/statusbar/StatusBarIconView;",
            ">;",
            "Landroid/widget/LinearLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2265
    .local p1, "notificationCountIcon":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui_ex/statusbar/StatusBarIconView;>;"
    .local p2, "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "toShow":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui_ex/statusbar/StatusBarIconView;>;"
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 2266
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->removeAllViews()V

    .line 2270
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 2271
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v5, v2}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2272
    .local v0, "child":Landroid/view/View;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2273
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2275
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2276
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2270
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2280
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 2281
    .local v3, "toRemoveCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 2282
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    .line 2281
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2285
    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 2286
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2287
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2288
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v5, v4, v2, p4}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2285
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2293
    .end local v4    # "v":Landroid/view/View;
    :cond_6
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getChildCount()I

    move-result v1

    .line 2296
    .local v1, "childCount":I
    if-lez v1, :cond_7

    .line 2297
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 2298
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-static {}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->isUsingDarkIcon()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->onStatusbarColorChange(Z)V

    .line 2303
    :goto_3
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationNotifier:Lcom/android/systemui_ex/NotificationNotifierGroup;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateNotificationNotifier(Lcom/android/systemui_ex/NotificationNotifierGroup;I)V

    .line 2305
    return-void

    .line 2300
    :cond_7
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->setVisibility(I)V

    goto :goto_3
.end method

.method private addStatusBarWindow()V
    .locals 3

    .prologue
    .line 4124
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    .line 4125
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    .line 4126
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->add(Landroid/view/View;I)V

    .line 4127
    return-void
.end method

.method private adjustDisableFlags(I)I
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 2765
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2769
    :cond_0
    const-string v0, "PhoneStatusBar"

    const-string v1, "adjustDisableFlags:mLaunchTransitionFadingAway=%b, mKeyguardFadingAway=%b, mExpandedVisible=%b, mBouncerShowing=%b, mWaitingForKeyguardExit=%b, isSimPinSecure=%b"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    .line 2772
    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    .line 2774
    :cond_1
    return p1
.end method

.method private animateStatusBarHide(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2927
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2928
    if-nez p2, :cond_0

    .line 2929
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2930
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2944
    :goto_0
    return-void

    .line 2933
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$28;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$28;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private animateStatusBarShow(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2950
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2951
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2952
    if-nez p2, :cond_1

    .line 2953
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2975
    :cond_0
    :goto_0
    return-void

    .line 2956
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 2968
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    if-eqz v0, :cond_0

    .line 2969
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private areLightsOn()Z
    .locals 1

    .prologue
    .line 3827
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private awakenDreams()V
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 1564
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1565
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private barMode(III)I
    .locals 1
    .param p1, "vis"    # I
    .param p2, "transientFlag"    # I
    .param p3, "translucentFlag"    # I

    .prologue
    .line 3734
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int v0, p1, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAutohide()V
    .locals 2

    .prologue
    .line 3803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 3804
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3805
    return-void
.end method

.method private changeStatusBarTint(Z)V
    .locals 0
    .param p1, "tint"    # Z

    .prologue
    .line 3592
    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->setUsingDarkIcon(Z)V

    .line 3593
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateStatusbarIconColor()V

    .line 3594
    return-void
.end method

.method private checkBarMode(IILcom/android/systemui_ex/statusbar/phone/BarTransitions;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "windowState"    # I
    .param p3, "transitions"    # Lcom/android/systemui_ex/statusbar/phone/BarTransitions;

    .prologue
    .line 3751
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v1

    .line 3752
    .local v1, "powerSave":Z
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 3754
    .local v0, "anim":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    if-nez v2, :cond_1

    .line 3755
    const/4 p1, 0x5

    .line 3757
    :cond_1
    invoke-virtual {p3, p1, v0}, Lcom/android/systemui_ex/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3758
    return-void

    .line 3752
    .end local v0    # "anim":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkBarModes()V
    .locals 3

    .prologue
    .line 3742
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-eqz v0, :cond_1

    .line 3748
    :cond_0
    :goto_0
    return-void

    .line 3743
    :cond_1
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui_ex/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui_ex/statusbar/phone/BarTransitions;)V

    .line 3744
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 3745
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui_ex/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui_ex/statusbar/phone/BarTransitions;)V

    goto :goto_0
.end method

.method private checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 3813
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 3817
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->userAutohide()V

    .line 3819
    :cond_0
    return-void
.end method

.method private clearAllNotifications()V
    .locals 5

    .prologue
    .line 1298
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    .line 1300
    .local v2, "numChildren":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1301
    .local v3, "viewsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1302
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1303
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1304
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1305
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1309
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1310
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 1325
    :goto_1
    return-void

    .line 1314
    :cond_2
    new-instance v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$17;

    invoke-direct {v4, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$17;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 1323
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->performDismissAllAnimations(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private clearStatusbarIconColor()V
    .locals 3

    .prologue
    .line 4309
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;

    .line 4310
    .local v1, "s":Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;
    if-eqz v1, :cond_0

    .line 4311
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;->onStatusbarColorChange(Z)V

    goto :goto_0

    .line 4314
    .end local v1    # "s":Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;
    :cond_1
    return-void
.end method

.method private computeBarMode(IILcom/android/systemui_ex/statusbar/phone/BarTransitions;II)I
    .locals 2
    .param p1, "oldVis"    # I
    .param p2, "newVis"    # I
    .param p3, "transitions"    # Lcom/android/systemui_ex/statusbar/phone/BarTransitions;
    .param p4, "transientFlag"    # I
    .param p5, "translucentFlag"    # I

    .prologue
    .line 3725
    invoke-direct {p0, p1, p4, p5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v1

    .line 3726
    .local v1, "oldMode":I
    invoke-direct {p0, p2, p4, p5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v0

    .line 3727
    .local v0, "newMode":I
    if-ne v1, v0, :cond_0

    .line 3728
    const/4 v0, -0x1

    .line 3730
    .end local v0    # "newMode":I
    :cond_0
    return v0
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "id"    # I

    .prologue
    .line 4717
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 4722
    :cond_0
    :goto_0
    return-void

    .line 4718
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, p3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4719
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui_ex/DemoMode;

    if-eqz v1, :cond_0

    .line 4720
    check-cast v0, Lcom/android/systemui_ex/DemoMode;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/systemui_ex/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui_ex/statusbar/phone/BarTransitions;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "var"    # Ljava/lang/String;
    .param p2, "transitions"    # Lcom/android/systemui_ex/statusbar/phone/BarTransitions;

    .prologue
    .line 4114
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ".BarTransitions.mMode="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4115
    invoke-virtual {p2}, Lcom/android/systemui_ex/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4116
    return-void
.end method

.method private escalateHeadsUp()V
    .locals 4

    .prologue
    .line 3083
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3084
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v1, v2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3085
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 3086
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 3087
    .local v0, "notification":Landroid/app/Notification;
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 3088
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3089
    const-string v2, "PhoneStatusBar"

    const-string v3, "converting a heads up to fullScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    :cond_0
    :try_start_0
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3096
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    :goto_0
    return-void

    .line 3092
    .restart local v0    # "notification":Landroid/app/Notification;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private finishBarAnimations()V
    .locals 1

    .prologue
    .line 3761
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui_ex/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3762
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 3763
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui_ex/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3765
    :cond_0
    return-void
.end method

.method private getInCallIntent(ZZ)Landroid/content/Intent;
    .locals 3
    .param p1, "showDialpad"    # Z
    .param p2, "newOutgoingCall"    # Z

    .prologue
    .line 3349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3350
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10840000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3353
    const-string v1, "com.android.incallui"

    const-string v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3354
    if-eqz p1, :cond_0

    .line 3355
    const-string v1, "InCallActivity.show_dialpad"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3358
    :cond_0
    const-string v1, "InCallActivity.new_outgoing_call"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3359
    return-object v0
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1608
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x840068

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1619
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1620
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1623
    :cond_0
    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1624
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1625
    return-object v0
.end method

.method private handleLongPressBackRecents(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v14, 0x7f0f010e

    .line 5326
    const/4 v6, 0x0

    .line 5327
    .local v6, "sendBackLongPress":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 5328
    .local v2, "activityManager":Landroid/app/IActivityManager;
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    .line 5329
    .local v4, "isAccessiblityEnabled":Z
    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v4, :cond_4

    .line 5330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5333
    .local v8, "time":J
    iget-wide v10, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLastLockToAppLongPress:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0xc8

    cmp-long v7, v10, v12

    if-gez v7, :cond_3

    .line 5334
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 5341
    :cond_0
    :goto_0
    iput-wide v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLastLockToAppLongPress:J

    .line 5352
    .end local v8    # "time":J
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 5353
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;

    move-object v5, v0

    .line 5354
    .local v5, "keyButtonView":Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;
    const/4 v7, 0x0

    const/16 v10, 0x80

    invoke-virtual {v5, v7, v10}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 5355
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 5360
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "isAccessiblityEnabled":Z
    .end local v5    # "keyButtonView":Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;
    :cond_2
    :goto_2
    return-void

    .line 5335
    .restart local v2    # "activityManager":Landroid/app/IActivityManager;
    .restart local v4    # "isAccessiblityEnabled":Z
    .restart local v8    # "time":J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v14, :cond_0

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 5339
    const/4 v6, 0x1

    goto :goto_0

    .line 5344
    .end local v8    # "time":J
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v14, :cond_5

    .line 5345
    const/4 v6, 0x1

    goto :goto_1

    .line 5346
    :cond_5
    if-eqz v4, :cond_1

    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5349
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5357
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "isAccessiblityEnabled":Z
    :catch_0
    move-exception v3

    .line 5358
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "PhoneStatusBar"

    const-string v10, "Unable to reach activity manager"

    invoke-static {v7, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private handleStartSettingsActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z

    .prologue
    .line 4597
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 4598
    return-void
.end method

.method private hideHighlightHintOnStatusBar()V
    .locals 4

    .prologue
    const v3, 0xffffff

    const/4 v2, 0x0

    .line 5741
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsHighlightAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 5742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNeedToPendingHiding:Z

    .line 5765
    :goto_0
    return-void

    .line 5747
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5748
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    const v1, 0x7f0f010b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 5750
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5752
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->setBackgroundColor(I)V

    .line 5754
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setBackgroundColor(I)V

    .line 5757
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsHighlightHintRunning:Z

    .line 5758
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsLatestClockVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    .line 5760
    const-string v0, "PhoneStatusBar"

    const-string v1, "hide highlight hint view on statusbar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5763
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideHighlightHintView:Z

    .line 5764
    sput-boolean v2, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsHighlightHintViewVisible:Z

    goto :goto_0
.end method

.method private hunStateToString(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .prologue
    .line 4108
    if-nez p1, :cond_0

    const-string v0, "null"

    .line 4110
    :goto_0
    return-object v0

    .line 4109
    :cond_0
    iget-object v0, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_1

    const-string v0, "corrupt"

    goto :goto_0

    .line 4110
    :cond_1
    iget-object v0, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private instantCollapseNotificationPanel()V
    .locals 1

    .prologue
    .line 5071
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->instantCollapse()V

    .line 5072
    return-void
.end method

.method private instantExpandNotificationsPanel()V
    .locals 1

    .prologue
    .line 5066
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    .line 5067
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->instantExpand()V

    .line 5068
    return-void
.end method

.method private isCurrentRunningActivityLauncher()Z
    .locals 6

    .prologue
    .line 5584
    const/4 v2, 0x0

    .line 5586
    .local v2, "isLauncherFound":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 5587
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 5588
    .local v3, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v5, "com.oneplus.hydrogen.launcher"

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 5589
    const/4 v2, 0x1

    .line 5594
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    :goto_0
    return v2

    .line 5591
    :catch_0
    move-exception v1

    .line 5592
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PhoneStatusBar"

    const-string v5, "fetching launcher state failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNotificationFromPhone(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .prologue
    .line 1790
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1792
    :goto_0
    return v0

    .line 1791
    :cond_0
    const-string v1, "com.android.server.telecom"

    iget-object v2, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1792
    .local v0, "isNotificationFromPhone":Z
    goto :goto_0
.end method

.method private launchHighLightHintAp()V
    .locals 2

    .prologue
    .line 5626
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getIntentOnStatusBar()Landroid/content/Intent;

    move-result-object v0

    .line 5627
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 5628
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5630
    :cond_0
    return-void
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "id"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 3954
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3955
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 3956
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3958
    :cond_0
    return-object v0
.end method

.method private logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4529
    .local p1, "newlyVisible":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "noLongerVisible":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4539
    :goto_0
    return-void

    .line 4532
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4533
    .local v0, "newlyVisibleAr":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 4535
    .local v1, "noLongerVisibleAr":[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationVisibilityChanged([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4536
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private notifyNavigationBarScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    .line 1605
    :goto_0
    return-void

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->notifyScreenOn(Z)V

    goto :goto_0
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 3841
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3844
    :goto_0
    return-void

    .line 3842
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onLaunchTransitionTimeout()V
    .locals 2

    .prologue
    .line 4829
    const-string v0, "PhoneStatusBar"

    const-string v1, "Launch transition: Timeout!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4830
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 4831
    return-void
.end method

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performDismissAllAnimations(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1336
    .local p1, "hideAnimatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$18;

    invoke-direct {v6, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$18;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 1350
    .local v6, "animationFinishAction":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 1354
    const/16 v10, 0xa

    .line 1355
    .local v10, "rowDelayDecrement":I
    const/16 v7, 0x8c

    .line 1356
    .local v7, "currentDelay":I
    const/4 v3, 0x0

    .line 1357
    .local v3, "totalDelay":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1358
    .local v9, "numItems":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 1359
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1360
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 1361
    .local v2, "endRunnable":Ljava/lang/Runnable;
    add-int/lit8 v0, v9, -0x1

    if-ne v8, v0, :cond_0

    .line 1362
    move-object v2, v6

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const-wide/16 v4, 0x104

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V

    .line 1365
    const/16 v0, 0x32

    sub-int v4, v7, v10

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1366
    add-int/2addr v3, v7

    .line 1358
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1368
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "endRunnable":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1572
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->reorient()V

    .line 1574
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1575
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1576
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1577
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1578
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1579
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1580
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHomeActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1581
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateSearchPanel()V

    .line 1582
    return-void
.end method

.method private refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "ll"    # Landroid/widget/LinearLayout;

    .prologue
    .line 1664
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1665
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1666
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1667
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    if-eqz v3, :cond_0

    .line 1668
    check-cast v0, Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->updateDrawable()V

    .line 1665
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1671
    :cond_1
    return-void
.end method

.method private removeHeadsUpView()V
    .locals 2

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1652
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 3

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1599
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private resetUserExpandedStates()V
    .locals 5

    .prologue
    .line 4318
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 4319
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4320
    .local v3, "notificationCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4321
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .line 4322
    .local v1, "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    iget-object v4, v1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    .line 4323
    iget-object v4, v1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->resetUserExpansion()V

    .line 4320
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4326
    .end local v1    # "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :cond_1
    return-void
.end method

.method private resetUserSetupObserver()V
    .locals 5

    .prologue
    .line 4374
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4375
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4376
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4380
    return-void
.end method

.method private resumeSuspendedAutohide()V
    .locals 4

    .prologue
    .line 3789
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    if-nez v0, :cond_0

    .line 3791
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->scheduleAutohide()V

    .line 3792
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3794
    :cond_0
    return-void
.end method

.method private runLaunchTransitionEndRunnable()V
    .locals 2

    .prologue
    .line 4834
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 4835
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 4839
    .local v0, "r":Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 4840
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4842
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private runPostCollapseRunnables()V
    .locals 3

    .prologue
    .line 3201
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3202
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3203
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 3202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3205
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3206
    return-void
.end method

.method private sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 1
    .param p1, "a"    # Landroid/media/session/MediaController;
    .param p2, "b"    # Landroid/media/session/MediaController;

    .prologue
    .line 2570
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    .line 2572
    :goto_0
    return v0

    .line 2571
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2572
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result v0

    goto :goto_0
.end method

.method private scheduleAutohide()V
    .locals 4

    .prologue
    .line 3808
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 3809
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3810
    return-void
.end method

.method private setControllerUsers()V
    .locals 2

    .prologue
    .line 4368
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_0

    .line 4369
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/ZenModeController;->setUserId(I)V

    .line 4371
    :cond_0
    return-void
.end method

.method private setHeadsUpVisibility(Z)V
    .locals 5
    .param p1, "vis"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4384
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "showing"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " heads up window"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4385
    :cond_0
    const v3, 0x8ca1

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v2

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4388
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 4389
    return-void

    .line 4384
    :cond_1
    const-string v0, "hiding"

    goto :goto_0

    .line 4385
    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 4388
    :cond_4
    const/16 v2, 0x8

    goto :goto_3
.end method

.method private setNavigationIconHints(I)V
    .locals 1
    .param p1, "hints"    # I

    .prologue
    .line 3539
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    .line 3547
    :goto_0
    return-void

    .line 3541
    :cond_0
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 3543
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3544
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 3546
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    goto :goto_0
.end method

.method private shouldShowNotificationIcon(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 1796
    const/4 v0, 0x0

    .line 1798
    .local v0, "shouldShowIcon":Z
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsCta:Z

    if-eqz v1, :cond_1

    const-string v1, "com.android.server.telecom"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.bluetooth"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1802
    :cond_0
    const/4 v0, 0x1

    .line 1804
    :cond_1
    return v0
.end method

.method private showClockOnNoneLauncherWindow()V
    .locals 4

    .prologue
    const v3, 0x7f0f0084

    const/4 v2, 0x1

    .line 2906
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2921
    :cond_0
    :goto_0
    return-void

    .line 2912
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isCurrentRunningActivityLauncher()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2913
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startClockVisibilityAnimation(Landroid/view/View;Z)V

    goto :goto_0

    .line 2915
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->shouldShowClockOnLauncher:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getKeyguardOpenNotificationShowClockFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2916
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startClockVisibilityAnimation(Landroid/view/View;Z)V

    .line 2917
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setKeyguardOpenNotificationShowClockFlag(Z)V

    goto :goto_0
.end method

.method private showDoNotDisturbOnStatusBar()V
    .locals 6

    .prologue
    const v5, 0x7f0c001d

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 755
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0f0084

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 757
    .local v0, "clock":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mThreeKeyTipsView:Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

    invoke-virtual {v1, v5}, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->setText(I)V

    .line 758
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mThreeKeyKeyguardTipsView:Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

    invoke-virtual {v1, v5}, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->setText(I)V

    .line 761
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isDoNotDisturbModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showHighlightHintOnStatusBar()Z

    move-result v1

    if-nez v1, :cond_2

    .line 762
    if-nez v0, :cond_0

    .line 775
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 765
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mThreeKeyTipsView:Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

    invoke-virtual {v1, v4}, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->setVisibility(I)V

    .line 770
    :goto_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mThreeKeyKeyguardTipsView:Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

    invoke-virtual {v1, v4}, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->setVisibility(I)V

    goto :goto_0

    .line 767
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mThreeKeyTipsView:Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->setVisibility(I)V

    goto :goto_1

    .line 772
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mThreeKeyTipsView:Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->setVisibility(I)V

    .line 773
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mThreeKeyKeyguardTipsView:Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showHighlightHintViewOnStatusBar()V
    .locals 24

    .prologue
    .line 5638
    const/4 v8, 0x0

    .line 5640
    .local v8, "diffContent":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui_ex/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    .line 5641
    .local v14, "n":Landroid/app/Notification;
    invoke-virtual {v14}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v5

    .line 5643
    .local v5, "bgColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui_ex/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v15

    .line 5646
    .local v15, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const v20, 0x7f0f0109

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 5647
    .local v12, "icon":Landroid/widget/ImageView;
    invoke-virtual {v14}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 5648
    invoke-virtual {v14}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 5649
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5650
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5655
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const v20, 0x7f0f010a

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 5656
    .local v11, "hint":Landroid/widget/TextView;
    invoke-virtual {v14}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 5657
    invoke-virtual {v14}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 5658
    .local v18, "text":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 5659
    const/4 v8, 0x1

    .line 5662
    :cond_0
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5663
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5672
    .end local v18    # "text":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const v20, 0x7f0f010b

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Chronometer;

    .line 5674
    .local v6, "chronometer":Landroid/widget/Chronometer;
    invoke-virtual {v14}, Landroid/app/Notification;->ShowChronometerOnStatusBar()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 5675
    invoke-virtual {v6}, Landroid/widget/Chronometer;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 5676
    const/4 v8, 0x1

    .line 5679
    :cond_1
    invoke-virtual {v14}, Landroid/app/Notification;->getChronometerState()I

    move-result v19

    if-nez v19, :cond_8

    .line 5680
    invoke-virtual {v14}, Landroid/app/Notification;->getChronometerBase()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 5681
    invoke-virtual {v6}, Landroid/widget/Chronometer;->start()V

    .line 5690
    :goto_2
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 5699
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 5700
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    instance-of v0, v4, Landroid/graphics/drawable/ColorDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 5701
    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v7

    .line 5703
    .local v7, "color":I
    if-eq v7, v5, :cond_2

    .line 5704
    const/4 v8, 0x1

    .line 5708
    .end local v7    # "color":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    if-nez v19, :cond_3

    if-eqz v8, :cond_4

    .line 5709
    :cond_3
    const-string v19, "PhoneStatusBar"

    const-string v20, "show highlight hint view on statusbar"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5710
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsHighlightHintRunning:Z

    .line 5711
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsLatestClockVisible:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    .line 5713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/systemui_ex/util/Utils;->getDisplayWidth(Landroid/content/Context;I)I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->setBackgroundColor(I)V

    .line 5719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setBackgroundColor(I)V

    .line 5721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 5722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintAnimation:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5726
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsHighlightAnimationRunning:Z

    .line 5727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintAnimation:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    const-wide/16 v22, 0xfa

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5732
    :cond_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideHighlightHintView:Z

    .line 5733
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsHighlightHintViewVisible:Z

    .line 5737
    .end local v5    # "bgColor":I
    .end local v6    # "chronometer":Landroid/widget/Chronometer;
    .end local v11    # "hint":Landroid/widget/TextView;
    .end local v12    # "icon":Landroid/widget/ImageView;
    .end local v14    # "n":Landroid/app/Notification;
    .end local v15    # "res":Landroid/content/res/Resources;
    :goto_4
    return-void

    .line 5652
    .restart local v5    # "bgColor":I
    .restart local v12    # "icon":Landroid/widget/ImageView;
    .restart local v14    # "n":Landroid/app/Notification;
    .restart local v15    # "res":Landroid/content/res/Resources;
    :cond_5
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5734
    .end local v5    # "bgColor":I
    .end local v12    # "icon":Landroid/widget/ImageView;
    .end local v14    # "n":Landroid/app/Notification;
    .end local v15    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v10

    .line 5735
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 5665
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "bgColor":I
    .restart local v11    # "hint":Landroid/widget/TextView;
    .restart local v12    # "icon":Landroid/widget/ImageView;
    .restart local v14    # "n":Landroid/app/Notification;
    .restart local v15    # "res":Landroid/content/res/Resources;
    :cond_6
    :try_start_1
    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v19

    if-nez v19, :cond_7

    .line 5666
    const/4 v8, 0x1

    .line 5669
    :cond_7
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 5683
    .restart local v6    # "chronometer":Landroid/widget/Chronometer;
    :cond_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui_ex/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui_ex/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 5685
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/systemui_ex/statusbar/NotificationData;->getChronomterStopTime(Ljava/lang/String;)J

    move-result-wide v16

    .line 5686
    .local v16, "stopTime":J
    invoke-virtual {v14}, Landroid/app/Notification;->getChronometerBase()J

    move-result-wide v20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    add-long v20, v20, v22

    sub-long v20, v20, v16

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 5687
    invoke-virtual {v6}, Landroid/widget/Chronometer;->stop()V

    goto/16 :goto_2

    .line 5692
    .end local v13    # "key":Ljava/lang/String;
    .end local v16    # "stopTime":J
    :cond_9
    invoke-virtual {v6}, Landroid/widget/Chronometer;->getVisibility()I

    move-result v19

    if-nez v19, :cond_a

    .line 5693
    const/4 v8, 0x1

    .line 5696
    :cond_a
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/Chronometer;->setVisibility(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private startClockVisibilityAnimation(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    const/4 v1, 0x2

    .line 3464
    if-nez p1, :cond_0

    .line 3493
    :goto_0
    return-void

    .line 3465
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibilityAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibilityAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3466
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibilityAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3468
    :cond_1
    if-eqz p2, :cond_2

    .line 3469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibility:Z

    .line 3471
    const-string v0, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibilityAnimator:Landroid/animation/ObjectAnimator;

    .line 3473
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibilityAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$34;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$34;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3489
    :goto_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibilityAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3490
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibilityAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3491
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibilityAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibilityAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 3479
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibility:Z

    .line 3481
    const-string v0, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibilityAnimator:Landroid/animation/ObjectAnimator;

    .line 3483
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClockVisibilityAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$35;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$35;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 3471
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 3481
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startGlyphRasterizeHack()V
    .locals 2

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$19;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$19;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1392
    return-void
.end method

.method private startIgnoreViewAnimation(Landroid/view/View;)Landroid/animation/Animator;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    .line 3394
    const-string v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3396
    .local v0, "anim2":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3397
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3398
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 3399
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 3400
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3401
    return-object v0

    .line 3394
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startKeyguard()V
    .locals 4

    .prologue
    .line 1403
    const-class v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .line 1404
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->registerStatusBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui_ex/statusbar/phone/ScrimController;)Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1406
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1407
    return-void
.end method

.method private startNotificationLoggingIfScreenOnAndVisible()V
    .locals 2

    .prologue
    .line 4515
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4516
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 4523
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;->onChildLocationsChanged(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V

    .line 4525
    :cond_0
    return-void
.end method

.method private stopIgnoreViewAnimation(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 3405
    if-eqz p1, :cond_0

    .line 3406
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 3408
    :cond_0
    return-void
.end method

.method private stopNotificationLogging()V
    .locals 2

    .prologue
    .line 4505
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4506
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4508
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 4510
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4511
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 4512
    return-void
.end method

.method private suspendAutohide()V
    .locals 2

    .prologue
    .line 3797
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3798
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3799
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 3800
    return-void

    .line 3799
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClearAll()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2099
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationData;->hasActiveClearableNotifications()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2102
    .local v0, "showDismissView":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateDismissView(Z)V

    .line 2103
    return-void

    .line 2099
    .end local v0    # "showDismissView":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClockSize()V
    .locals 3

    .prologue
    .line 4440
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 4445
    :cond_0
    :goto_0
    return-void

    .line 4441
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0f0084

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4442
    .local v0, "clock":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 4443
    const v1, 0x7f0d0019

    invoke-static {v0, v1}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method private updateDozing()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5857
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozingRequested:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozing:Z

    .line 5858
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateDozingState()V

    .line 5859
    return-void

    .line 5857
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDozingState()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 4955
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isDozing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4964
    :goto_0
    return-void

    .line 4959
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4960
    .local v0, "animate":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setDozing(ZZ)V

    .line 4961
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozing:Z

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOnTouchLocation:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setDark(ZZLandroid/graphics/PointF;)V

    .line 4962
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setDozing(Z)V

    .line 4963
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->setDozing(ZZ)V

    goto :goto_0

    .line 4959
    .end local v0    # "animate":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateEmptyShadeView()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2106
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2109
    .local v0, "showEmptyShade":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setShadeEmpty(Z)V

    .line 2110
    return-void

    .line 2106
    .end local v0    # "showEmptyShade":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateKeyguardState(ZZ)V
    .locals 6
    .param p1, "goingToFullShade"    # Z
    .param p2, "fromShadeLocked"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4912
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4913
    const-string v0, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateKeyguardState State ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", goingToFullShade = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  fromShadeLocked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4915
    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v2, :cond_4

    .line 4916
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 4917
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 4918
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0, v2, p2}, Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 4924
    :goto_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v5, :cond_7

    .line 4925
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    .line 4926
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BackDropView;->setVisibility(I)V

    .line 4927
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideIgnoreView:Z

    if-eqz v0, :cond_2

    .line 4929
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setDialIgnoreViewVisibility(ZZ)V

    .line 4932
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideHighlightHintView:Z

    if-eqz v0, :cond_3

    .line 4933
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setDialIgnoreViewVisibility(ZZ)V

    .line 4941
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setBarState(IZZ)V

    .line 4942
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateDozingState()V

    .line 4943
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updatePublicMode()V

    .line 4944
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateStackScrollerState(Z)V

    .line 4945
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 4946
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 4947
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 4948
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    .line 4949
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;->notifyKeyguardState(ZZ)V

    .line 4951
    return-void

    .line 4920
    :cond_4
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 4921
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    if-nez p1, :cond_5

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v5, :cond_5

    if-eqz p2, :cond_6

    :cond_5
    move v0, v2

    :goto_2
    invoke-virtual {v3, v1, v0}, Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    .line 4936
    :cond_7
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    .line 4937
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/BackDropView;->setVisibility(I)V

    .line 4938
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->shrinkHighlightHintView()V

    goto :goto_1
.end method

.method private updateNotificationIcons()V
    .locals 20

    .prologue
    .line 2173
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIconSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2176
    .local v12, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui_ex/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    .line 2177
    .local v3, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2178
    .local v2, "N":I
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2181
    .local v16, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/StatusBarIconView;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2185
    .local v11, "notificationCountIcon":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/StatusBarIconView;>;"
    const-string v17, "notification"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v10

    .line 2189
    .local v10, "mNoMan":Landroid/app/INotificationManager;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v2, :cond_5

    .line 2190
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .line 2192
    .local v6, "ent":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    iget-object v0, v6, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 2193
    .local v13, "pkgName":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    .line 2194
    .local v4, "appUid":I
    const/4 v14, 0x0

    .line 2196
    .local v14, "priority":I
    :try_start_0
    const-string v17, "com.android.systemui"

    move-object/from16 v0, v17

    invoke-interface {v10, v13, v4, v0}, Landroid/app/INotificationManager;->getPackagePriorityBySystemUI(Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    .line 2206
    :goto_1
    const/4 v8, 0x0

    .line 2207
    .local v8, "hideThisIcon":Z
    iget-object v0, v6, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 2208
    iget-object v0, v6, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2209
    .local v7, "extra":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 2210
    const-string v17, "hide_icon"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 2214
    .end local v7    # "extra":Landroid/os/Bundle;
    :cond_0
    if-eqz v8, :cond_2

    .line 2189
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2197
    .end local v8    # "hideThisIcon":Z
    :catch_0
    move-exception v5

    .line 2198
    .local v5, "e":Landroid/os/RemoteException;
    const-string v17, "PhoneStatusBar"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remote exception happens "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2200
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 2201
    .local v5, "e":Ljava/lang/SecurityException;
    const-string v17, "PhoneStatusBar"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "security exception happens "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2217
    .end local v5    # "e":Ljava/lang/SecurityException;
    .restart local v8    # "hideThisIcon":Z
    :cond_2
    iget-object v0, v6, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v17

    const/16 v18, -0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    iget-object v0, v6, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui_ex/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2223
    :cond_3
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v14, v0, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->shouldShowNotificationIcon(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2224
    :cond_4
    iget-object v0, v6, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2229
    .end local v4    # "appUid":I
    .end local v6    # "ent":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .end local v8    # "hideThisIcon":Z
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v14    # "priority":I
    :cond_5
    sget-boolean v17, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v17, :cond_6

    .line 2230
    const-string v17, "PhoneStatusBar"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "refreshing icons: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " notifications, mNotificationIcons="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :cond_6
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2237
    .local v15, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 2238
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v15, v1, v12}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->addOrDeleteNotificationIconsOnKeyguardStatusbar(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2245
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->checkOverflow(I)V

    .line 2247
    return-void

    .line 2240
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v15, v1, v12}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->addOrDeleteNotificationIconsOnStatusbar(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/widget/LinearLayout$LayoutParams;)V

    goto :goto_3
.end method

.method private updateNotificationNotifier(Lcom/android/systemui_ex/NotificationNotifierGroup;I)V
    .locals 1
    .param p1, "notifier"    # Lcom/android/systemui_ex/NotificationNotifierGroup;
    .param p2, "num"    # I

    .prologue
    .line 2250
    if-lez p2, :cond_0

    .line 2251
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui_ex/NotificationNotifierGroup;->setVisibility(I)V

    .line 2252
    invoke-virtual {p1, p2}, Lcom/android/systemui_ex/NotificationNotifierGroup;->setNotificationNumber(I)V

    .line 2253
    invoke-static {}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->isUsingDarkIcon()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui_ex/NotificationNotifierGroup;->onStatusbarColorChange(Z)V

    .line 2257
    :goto_0
    return-void

    .line 2255
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/systemui_ex/NotificationNotifierGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateNotificationShade()V
    .locals 22

    .prologue
    .line 1968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 2091
    :goto_0
    return-void

    .line 1971
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isCollapsing()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1972
    new-instance v20, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$24;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$24;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1981
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui_ex/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    .line 1982
    .local v3, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/NotificationData$Entry;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1983
    .local v17, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1984
    .local v2, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_d

    .line 1985
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .line 1986
    .local v5, "ent":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    iget-object v0, v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/Notification;->visibility:I

    move/from16 v19, v0

    .line 1988
    .local v19, "vis":I
    iget-object v0, v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v15, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1991
    .local v15, "text":Ljava/lang/CharSequence;
    iget-object v0, v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v20

    if-nez v20, :cond_7

    const/4 v6, 0x1

    .line 1993
    .local v6, "hideSensitive":Z
    :goto_2
    if-nez v19, :cond_8

    const/4 v12, 0x1

    .line 1994
    .local v12, "sensitiveNote":Z
    :goto_3
    iget-object v0, v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v13

    .line 1995
    .local v13, "sensitivePackage":Z
    if-eqz v12, :cond_2

    if-nez v6, :cond_3

    :cond_2
    if-eqz v13, :cond_9

    :cond_3
    const/4 v11, 0x1

    .line 1996
    .local v11, "sensitive":Z
    :goto_4
    if-eqz v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v20

    if-eqz v20, :cond_a

    const/4 v14, 0x1

    .line 1997
    .local v14, "showingPublic":Z
    :goto_5
    iget-object v0, v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 1998
    iget-boolean v0, v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->autoRedacted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    iget-boolean v0, v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->legacy:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 2001
    if-eqz v14, :cond_b

    .line 2002
    iget-object v0, v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 2008
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isNotificationFromPhone(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2009
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->isDisplayInKeyGuard:Z

    .line 2013
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    :cond_6
    iget-boolean v0, v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->isDisplayInKeyGuard:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 1984
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1991
    .end local v6    # "hideSensitive":Z
    .end local v11    # "sensitive":Z
    .end local v12    # "sensitiveNote":Z
    .end local v13    # "sensitivePackage":Z
    .end local v14    # "showingPublic":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1993
    .restart local v6    # "hideSensitive":Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 1995
    .restart local v12    # "sensitiveNote":Z
    .restart local v13    # "sensitivePackage":Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    .line 1996
    .restart local v11    # "sensitive":Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    .line 2004
    .restart local v14    # "showingPublic":Z
    :cond_b
    iget-object v0, v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    goto :goto_6

    .line 2017
    :cond_c
    iget-object v0, v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2020
    .end local v5    # "ent":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .end local v6    # "hideSensitive":Z
    .end local v11    # "sensitive":Z
    .end local v12    # "sensitiveNote":Z
    .end local v13    # "sensitivePackage":Z
    .end local v14    # "showingPublic":Z
    .end local v15    # "text":Ljava/lang/CharSequence;
    .end local v19    # "vis":I
    :cond_d
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2021
    .local v16, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_11

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2023
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 2025
    instance-of v0, v4, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 2021
    :cond_e
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 2029
    :cond_f
    instance-of v0, v4, Lcom/android/systemui_ex/statusbar/DismissView;

    move/from16 v20, v0

    if-nez v20, :cond_e

    .line 2033
    instance-of v0, v4, Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    move/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui_ex/statusbar/NotificationData;->showDivider()Z

    move-result v20

    if-nez v20, :cond_e

    .line 2037
    :cond_10
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2041
    .end local v4    # "child":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 2045
    :cond_12
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 2046
    .local v10, "remove":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    goto :goto_a

    .line 2049
    .end local v10    # "remove":Landroid/view/View;
    :cond_13
    const/4 v7, 0x0

    :goto_b
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_15

    .line 2050
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 2052
    .local v18, "v":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    if-nez v20, :cond_14

    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2049
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 2060
    .end local v18    # "v":Landroid/view/View;
    :cond_15
    const/4 v9, 0x0

    .line 2061
    .local v9, "j":I
    const/4 v7, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_18

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2063
    .restart local v4    # "child":Landroid/view/View;
    instance-of v0, v4, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    move/from16 v20, v0

    if-nez v20, :cond_16

    .line 2061
    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 2068
    :cond_16
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v4, v0, :cond_17

    .line 2070
    add-int/lit8 v9, v9, 0x1

    .line 2071
    goto :goto_d

    .line 2076
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2077
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 2080
    .end local v4    # "child":Landroid/view/View;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 2081
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateSpeedbump()V

    .line 2082
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateClearAll()V

    .line 2083
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateEmptyShadeView()V

    .line 2090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShadeUpdates:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$ShadeUpdates;->check()V

    goto/16 :goto_0
.end method

.method private updatePublicMode()V
    .locals 1

    .prologue
    .line 4905
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setLockscreenPublicMode(Z)V

    .line 4909
    return-void

    .line 4905
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateShowSearchHoldoff()V
    .locals 2

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 1965
    return-void
.end method

.method private updateSpeedbump()V
    .locals 7

    .prologue
    .line 2113
    const/4 v4, -0x1

    .line 2115
    .local v4, "speedbumpIndex":I
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/NotificationData;->showDivider()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2116
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/NotificationData;->getDividerIndex()I

    move-result v2

    .line 2117
    .local v2, "dividerIndex":I
    const/4 v1, 0x0

    .line 2119
    .local v1, "counter":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 2120
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2121
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_4

    .line 2122
    add-int/lit8 v1, v1, 0x1

    .line 2124
    if-ne v1, v2, :cond_4

    .line 2125
    add-int/lit8 v4, v3, 0x1

    .line 2127
    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLastSpeedbumpIndex:I

    if-ne v5, v4, :cond_1

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 2148
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "counter":I
    .end local v2    # "dividerIndex":I
    .end local v3    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 2132
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "counter":I
    .restart local v2    # "dividerIndex":I
    .restart local v3    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/SpeedBumpView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v5, :cond_2

    .line 2133
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 2136
    :cond_2
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/SpeedBumpView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2137
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/SpeedBumpView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2140
    :cond_3
    iput v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLastSpeedbumpIndex:I

    .line 2141
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 2142
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex(I)V

    goto :goto_1

    .line 2119
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private updateStatusbarIconColor()V
    .locals 3

    .prologue
    .line 4300
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;

    .line 4301
    .local v1, "s":Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;
    if-eqz v1, :cond_0

    .line 4302
    invoke-static {}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->isUsingDarkIconOnNormalStatusbar()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;->onStatusbarColorChange(Z)V

    goto :goto_0

    .line 4305
    .end local v1    # "s":Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;
    :cond_1
    return-void
.end method

.method private updateWallpaper()V
    .locals 5

    .prologue
    .line 2724
    const-string v2, "PhoneStatusBar"

    const-string v3, "updateWallpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    const/4 v0, 0x0

    .line 2726
    .local v0, "wallpaper":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v3, "wallpaper"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 2728
    .local v1, "wm":Landroid/app/WallpaperManager;
    if-eqz v1, :cond_0

    .line 2729
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getKeyguardBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2732
    :cond_0
    if-eqz v0, :cond_1

    .line 2733
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWallpaperView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2738
    :goto_0
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/plugin/LSState;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    .line 2739
    return-void

    .line 2735
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWallpaperView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private userAutohide()V
    .locals 4

    .prologue
    .line 3822
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 3823
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3824
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 3962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 9
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 1674
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->SPEW:Z

    if-eqz v3, :cond_0

    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addIcon slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " viewIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " icon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_0
    const-string v3, "com.android.systemui"

    iget-object v4, p4, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1682
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->getSystemDisplayMetricDensity(Landroid/content/Context;)F

    move-result v1

    .line 1683
    .local v1, "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 1684
    .local v0, "iconPadding":I
    new-instance v2, Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v8}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1685
    .local v2, "view":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    invoke-virtual {v2, v0, v7, v0, v7}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->setPadding(IIII)V

    .line 1686
    invoke-virtual {v2, p4}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1687
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, p3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1690
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    .line 1691
    new-instance v2, Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    .end local v2    # "view":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v8}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1692
    .restart local v2    # "view":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    invoke-virtual {v2, v0, v7, v0, v7}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->setPadding(IIII)V

    .line 1694
    invoke-virtual {v2, p4}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1695
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, p3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1697
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    .line 1701
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->checkOverflow(I)V

    .line 1703
    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v7, 0x1

    .line 1810
    sget-boolean v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addNotification key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1812
    sget-boolean v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "PhoneStatusBar"

    const-string v5, "launching notification in heads up mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_1
    new-instance v1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui_ex/statusbar/StatusBarIconView;)V

    .line 1814
    .local v1, "interruptionCandidate":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1815
    .local v0, "holder":Landroid/view/ViewGroup;
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->inflateViewsForHeadsUp(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1817
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v4, v1}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z

    .line 1874
    .end local v0    # "holder":Landroid/view/ViewGroup;
    .end local v1    # "interruptionCandidate":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :cond_2
    :goto_0
    return-void

    .line 1824
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v3

    .line 1825
    .local v3, "shadeEntry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    if-eqz v3, :cond_2

    .line 1829
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v5, v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1833
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isNotificationFromPhone(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1838
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1839
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1840
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->isDisplayInKeyGuard:Z

    .line 1851
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_9

    .line 1854
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    .line 1857
    sget-boolean v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "PhoneStatusBar"

    const-string v5, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1870
    :cond_6
    :goto_2
    invoke-virtual {p0, v3, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->addNotificationViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1872
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1873
    const/16 v4, -0x2710

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_0

    .line 1842
    .restart local v2    # "pm":Landroid/os/PowerManager;
    :cond_7
    iput-boolean v7, v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->isDisplayInKeyGuard:Z

    goto :goto_1

    .line 1847
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_8
    iput-boolean v7, v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->isDisplayInKeyGuard:Z

    goto :goto_1

    .line 1866
    :cond_9
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v4

    if-nez v4, :cond_6

    .line 1867
    invoke-virtual {p0, p1, v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    goto :goto_2

    .line 1860
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 4769
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4770
    return-void
.end method

.method public animateCollapsePanels()V
    .locals 1

    .prologue
    .line 3143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3144
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 3158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 3159
    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 8
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    const/16 v7, 0x403

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/16 v5, 0x3fc

    const/4 v0, 0x1

    .line 3163
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v2, :cond_0

    .line 3164
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->resetSingleHandNotificationState()V

    .line 3167
    :cond_0
    if-nez p2, :cond_3

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v2, v0, :cond_1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v6, :cond_3

    .line 3169
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 3198
    :cond_2
    :goto_0
    return-void

    .line 3172
    :cond_3
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->SPEW:Z

    if-eqz v2, :cond_4

    .line 3173
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateCollapse(): mExpandedVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    :cond_4
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_5

    .line 3179
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v2, v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3180
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v2, v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3181
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v2, v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3185
    :cond_5
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_6

    .line 3186
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v2, v7}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3187
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v2, v7}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3190
    :cond_6
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    if-eqz v2, :cond_2

    .line 3192
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 3194
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    .line 3195
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v3, v0, :cond_7

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v3, v6, :cond_7

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public animateCollapseQuickSettings()V
    .locals 2

    .prologue
    .line 3307
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v0, :cond_0

    .line 3308
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3310
    :cond_0
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3257
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateExpand: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3287
    :cond_1
    :goto_0
    return-void

    .line 3262
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3263
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v3, :cond_1

    .line 3264
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3265
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mControlPanel:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    if-eqz v0, :cond_3

    .line 3266
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mControlPanel:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->handleHideControlPanel()V

    .line 3268
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->expand()V

    .line 3269
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3271
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->simulateSignalClick()V

    goto :goto_0

    .line 3275
    :cond_4
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->collapse(Z)V

    goto :goto_0
.end method

.method public animateExpandSettingsPanel()V
    .locals 3

    .prologue
    .line 3292
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateExpand: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3304
    :cond_1
    :goto_0
    return-void

    .line 3298
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    if-eqz v0, :cond_1

    .line 3300
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->expand()V

    .line 3301
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->openQs()V

    goto :goto_0
.end method

.method public buzzBeepBlinked()V
    .locals 1

    .prologue
    .line 3571
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3572
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireBuzzBeepBlinked()V

    .line 3574
    :cond_0
    return-void
.end method

.method public calculateGoingToFullShadeDelay()J
    .locals 4

    .prologue
    .line 4876
    iget-wide v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    iget-wide v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public changeKGNotificationsFlag()V
    .locals 13

    .prologue
    .line 1745
    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v8

    .line 1746
    .local v8, "numChildren":I
    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v11}, Lcom/android/systemui_ex/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 1749
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/NotificationData$Entry;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_3

    .line 1750
    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1752
    .local v2, "child":Landroid/view/View;
    instance-of v11, v2, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v11, :cond_1

    .line 1754
    :try_start_0
    iget-object v11, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    check-cast v2, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .end local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui_ex/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v9

    .line 1756
    .local v9, "obj":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    const/4 v6, 0x0

    .line 1758
    .local v6, "isFind":Z
    sget-object v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->FOREVER_DISPLAY_APP:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v10, v1, v5

    .line 1759
    .local v10, "pkgName":Ljava/lang/String;
    iget-object v11, v9, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1760
    const/4 v6, 0x1

    .line 1765
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_0
    iput-boolean v6, v9, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->isDisplayInKeyGuard:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1749
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "isFind":Z
    .end local v7    # "len$":I
    .end local v9    # "obj":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1758
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "isFind":Z
    .restart local v7    # "len$":I
    .restart local v9    # "obj":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .restart local v10    # "pkgName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1768
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "isFind":Z
    .end local v7    # "len$":I
    .end local v9    # "obj":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .end local v10    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1769
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "PhoneStatusBar"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1780
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method public createAndAddWindows()V
    .locals 0

    .prologue
    .line 4120
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->addStatusBarWindow()V

    .line 4121
    return-void
.end method

.method protected createHandler()Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
    .locals 2

    .prologue
    .line 2979
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4636
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->destroy()V

    .line 4637
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_0

    .line 4638
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4639
    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    .line 4641
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 4642
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4643
    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    .line 4645
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4647
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4648
    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    .line 4649
    return-void
.end method

.method public disable(IZ)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 2785
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    .line 2786
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->adjustDisableFlags(I)I

    move-result p1

    .line 2787
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 2788
    .local v2, "old":I
    xor-int v0, p1, v2

    .line 2789
    .local v0, "diff":I
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 2791
    sget-boolean v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2792
    const-string v4, "PhoneStatusBar"

    const-string v5, "disable: 0x%08x -> 0x%08x (diff: 0x%08x)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2797
    .local v1, "flagdbg":Ljava/lang/StringBuilder;
    const-string v4, "disable: < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2798
    const/high16 v4, 0x10000

    and-int/2addr v4, p1

    if-eqz v4, :cond_b

    const-string v4, "EXPAND"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2799
    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_c

    const-string v4, "* "

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    const/high16 v4, 0x20000

    and-int/2addr v4, p1

    if-eqz v4, :cond_d

    const-string v4, "ICONS"

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2801
    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-eqz v4, :cond_e

    const-string v4, "* "

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2803
    const/high16 v4, 0x20000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1

    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    .line 2805
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable icons ,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    :cond_1
    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_f

    const-string v4, "ALERTS"

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_10

    const-string v4, "* "

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-eqz v4, :cond_11

    const-string v4, "SYSTEM_INFO"

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2811
    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-eqz v4, :cond_12

    const-string v4, "* "

    :goto_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2812
    const/high16 v4, 0x400000

    and-int/2addr v4, p1

    if-eqz v4, :cond_13

    const-string v4, "BACK"

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2813
    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    if-eqz v4, :cond_14

    const-string v4, "* "

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2814
    const/high16 v4, 0x200000

    and-int/2addr v4, p1

    if-eqz v4, :cond_15

    const-string v4, "HOME"

    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2815
    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_16

    const-string v4, "* "

    :goto_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2816
    const/high16 v4, 0x1000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_17

    const-string v4, "RECENT"

    :goto_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2817
    const/high16 v4, 0x1000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_18

    const-string v4, "* "

    :goto_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2818
    const/high16 v4, 0x800000

    and-int/2addr v4, p1

    if-eqz v4, :cond_19

    const-string v4, "CLOCK"

    :goto_e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2819
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1a

    const-string v4, "* "

    :goto_f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    const/high16 v4, 0x2000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1b

    const-string v4, "SEARCH"

    :goto_10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2821
    const/high16 v4, 0x2000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1c

    const-string v4, "* "

    :goto_11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    const-string v4, "PhoneStatusBar"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mControlPanel:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    if-eqz v4, :cond_2

    .line 2826
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2827
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mControlPanel:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->setNotificationPanelExpanded(Z)V

    .line 2833
    :cond_2
    :goto_12
    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    .line 2834
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2836
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isSystemHidingClock:Z

    .line 2837
    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1e

    .line 2838
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateStatusBarHide(Landroid/view/View;Z)V

    .line 2839
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    .line 2840
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isSystemHidingClock:Z

    .line 2849
    :cond_3
    :goto_13
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 2850
    const/high16 v4, 0x800000

    and-int/2addr v4, p1

    if-nez v4, :cond_1f

    const/4 v3, 0x1

    .line 2855
    .local v3, "show":Z
    :goto_14
    if-eqz v3, :cond_20

    .line 2856
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isClockShowPostponed:Z

    .line 2857
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showClockOnNoneLauncherWindow()V

    .line 2863
    .end local v3    # "show":Z
    :cond_4
    :goto_15
    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_5

    .line 2864
    const/high16 v4, 0x10000

    and-int/2addr v4, p1

    if-eqz v4, :cond_5

    .line 2865
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 2869
    :cond_5
    const/high16 v4, 0x3600000

    and-int/2addr v4, v0

    if-eqz v4, :cond_7

    .line 2874
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, p1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 2876
    :cond_6
    const/high16 v4, 0x1000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_7

    .line 2878
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    const/16 v5, 0x3fc

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2879
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    const/16 v5, 0x3fc

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2883
    :cond_7
    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-eqz v4, :cond_9

    .line 2884
    const/high16 v4, 0x20000

    and-int/2addr v4, p1

    if-eqz v4, :cond_21

    .line 2885
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_8

    .line 2886
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 2888
    :cond_8
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-direct {p0, v4, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateStatusBarHide(Landroid/view/View;Z)V

    .line 2894
    :cond_9
    :goto_16
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_a

    .line 2895
    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    :goto_17
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisableNotificationAlerts:Z

    .line 2897
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2901
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getNotificationStackScrollLayout()Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onSingleHandDisabled()V

    .line 2902
    return-void

    .line 2798
    :cond_b
    const-string v4, "expand"

    goto/16 :goto_0

    .line 2799
    :cond_c
    const-string v4, " "

    goto/16 :goto_1

    .line 2800
    :cond_d
    const-string v4, "icons"

    goto/16 :goto_2

    .line 2801
    :cond_e
    const-string v4, " "

    goto/16 :goto_3

    .line 2808
    :cond_f
    const-string v4, "alerts"

    goto/16 :goto_4

    .line 2809
    :cond_10
    const-string v4, " "

    goto/16 :goto_5

    .line 2810
    :cond_11
    const-string v4, "system_info"

    goto/16 :goto_6

    .line 2811
    :cond_12
    const-string v4, " "

    goto/16 :goto_7

    .line 2812
    :cond_13
    const-string v4, "back"

    goto/16 :goto_8

    .line 2813
    :cond_14
    const-string v4, " "

    goto/16 :goto_9

    .line 2814
    :cond_15
    const-string v4, "home"

    goto/16 :goto_a

    .line 2815
    :cond_16
    const-string v4, " "

    goto/16 :goto_b

    .line 2816
    :cond_17
    const-string v4, "recent"

    goto/16 :goto_c

    .line 2817
    :cond_18
    const-string v4, " "

    goto/16 :goto_d

    .line 2818
    :cond_19
    const-string v4, "clock"

    goto/16 :goto_e

    .line 2819
    :cond_1a
    const-string v4, " "

    goto/16 :goto_f

    .line 2820
    :cond_1b
    const-string v4, "search"

    goto/16 :goto_10

    .line 2821
    :cond_1c
    const-string v4, " "

    goto/16 :goto_11

    .line 2829
    :cond_1d
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mControlPanel:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->setNotificationPanelExpanded(Z)V

    goto/16 :goto_12

    .line 2842
    :cond_1e
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateStatusBarShow(Landroid/view/View;Z)V

    .line 2843
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isClockShowPostponed:Z

    .line 2844
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showClockOnNoneLauncherWindow()V

    goto/16 :goto_13

    .line 2850
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_14

    .line 2859
    .restart local v3    # "show":Z
    :cond_20
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    goto/16 :goto_15

    .line 2890
    .end local v3    # "show":Z
    :cond_21
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-direct {p0, v4, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateStatusBarShow(Landroid/view/View;Z)V

    goto/16 :goto_16

    .line 2895
    :cond_22
    const/4 v4, 0x0

    goto :goto_17
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 1
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .prologue
    .line 4331
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4332
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 4336
    :goto_0
    return-void

    .line 4334
    :cond_0
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    goto :goto_0
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 4657
    iget-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_0

    .line 4658
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sysui_demo_allowed"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    .line 4661
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_3

    .line 4714
    :cond_1
    :goto_1
    return-void

    .line 4658
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 4662
    :cond_3
    const-string v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 4663
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 4671
    :cond_4
    :goto_2
    const-string v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_5
    const/4 v3, 0x1

    .line 4672
    .local v3, "modeChange":Z
    :goto_3
    if-nez v3, :cond_6

    const-string v7, "clock"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4673
    :cond_6
    const v7, 0x7f0f0084

    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4675
    :cond_7
    if-nez v3, :cond_8

    const-string v7, "battery"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4676
    :cond_8
    const v7, 0x7f0f002f

    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4678
    :cond_9
    if-nez v3, :cond_a

    const-string v7, "status"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4679
    :cond_a
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;

    if-nez v7, :cond_b

    .line 4680
    new-instance v7, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    iget v9, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v7, v8, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;

    .line 4682
    :cond_b
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v7, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4684
    :cond_c
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    if-eqz v7, :cond_e

    if-nez v3, :cond_d

    const-string v7, "network"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4685
    :cond_d
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v7, p1, p2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4687
    :cond_e
    if-nez v3, :cond_f

    const-string v7, "notifications"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 4688
    :cond_f
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    if-nez v7, :cond_15

    const/4 v4, 0x0

    .line 4690
    .local v4, "notifications":Landroid/view/View;
    :goto_4
    if-eqz v4, :cond_10

    .line 4691
    const-string v7, "visible"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4692
    .local v6, "visible":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-eqz v7, :cond_16

    const-string v7, "false"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v5, 0x4

    .line 4693
    .local v5, "vis":I
    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4696
    .end local v4    # "notifications":Landroid/view/View;
    .end local v5    # "vis":I
    .end local v6    # "visible":Ljava/lang/String;
    :cond_10
    const-string v7, "bars"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4697
    const-string v7, "mode"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4698
    .local v2, "mode":Ljava/lang/String;
    const-string v7, "opaque"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v1, 0x0

    .line 4704
    .local v1, "barMode":I
    :goto_6
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 4705
    const/4 v0, 0x1

    .line 4706
    .local v0, "animate":Z
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    if-eqz v7, :cond_11

    .line 4707
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui_ex/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui_ex/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 4709
    :cond_11
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v7, :cond_1

    .line 4710
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui_ex/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui_ex/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    goto/16 :goto_1

    .line 4664
    .end local v0    # "animate":Z
    .end local v1    # "barMode":I
    .end local v2    # "mode":Ljava/lang/String;
    .end local v3    # "modeChange":Z
    :cond_12
    const-string v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 4665
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 4666
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    goto/16 :goto_2

    .line 4667
    :cond_13
    iget-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-nez v7, :cond_4

    .line 4669
    const-string v7, "enter"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 4671
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 4688
    .restart local v3    # "modeChange":Z
    :cond_15
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v8, 0x7f0f00ec

    invoke-virtual {v7, v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_4

    .line 4692
    .restart local v4    # "notifications":Landroid/view/View;
    .restart local v6    # "visible":Ljava/lang/String;
    :cond_16
    const/4 v5, 0x0

    goto :goto_5

    .line 4698
    .end local v4    # "notifications":Landroid/view/View;
    .end local v6    # "visible":Ljava/lang/String;
    .restart local v2    # "mode":Ljava/lang/String;
    :cond_17
    const-string v7, "translucent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v1, 0x2

    goto :goto_6

    :cond_18
    const-string v7, "semi-transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v1, 0x1

    goto :goto_6

    :cond_19
    const-string v7, "transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v1, 0x4

    goto :goto_6

    :cond_1a
    const-string v7, "warning"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const/4 v1, 0x5

    goto :goto_6

    :cond_1b
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public displayNotificationFromHeadsUp(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1877
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1878
    .local v0, "shadeEntry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 1890
    :goto_0
    return-void

    .line 1881
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->setInterruption()V

    .line 1884
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->isDisplayInKeyGuard:Z

    .line 1886
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->addNotificationViews(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1888
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1889
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3967
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3968
    :try_start_0
    const-string v3, "Current Status Bar state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3969
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mExpandedVisible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mTrackingPosition="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3972
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mBouncerShowing="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mWaitingForKeyguardExit="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", is SimPinLocked="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3976
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTickerEnabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3977
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v3, :cond_0

    .line 3978
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTicking="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTicking:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTickerView: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3981
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTracking="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisplayMetrics="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3983
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStackScroller: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStackScroller: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " scroll "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getScrollX()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getScrollY()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3987
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3989
    const-string v3, "  mInteractingWindows="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3990
    const-string v3, "  mStatusBarWindowState="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3991
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    invoke-static {v3}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3992
    const-string v3, "  mStatusBarMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3993
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3994
    const-string v3, "  mDozing="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3995
    const-string v3, "  mZenMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3996
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mZenMode:I

    invoke-static {v3}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3997
    const-string v3, "  mUseHeadsUp="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3998
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3999
    const-string v3, "  interrupting package: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4000
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hunStateToString(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4001
    const-string v3, "mStatusBarView"

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui_ex/statusbar/phone/BarTransitions;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui_ex/statusbar/phone/BarTransitions;)V

    .line 4002
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v3, :cond_1

    .line 4003
    const-string v3, "  mNavigationBarWindowState="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4004
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    invoke-static {v3}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4005
    const-string v3, "  mNavigationBarMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4006
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4007
    const-string v3, "mNavigationBarView"

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui_ex/statusbar/phone/BarTransitions;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui_ex/statusbar/phone/BarTransitions;)V

    .line 4010
    :cond_1
    const-string v3, "  mNavigationBarView="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4011
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-nez v3, :cond_5

    .line 4012
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4017
    :goto_0
    const-string v3, "  mMediaSessionManager="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4018
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4019
    const-string v3, "  mMediaNotificationKey="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4020
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4021
    const-string v3, "  mMediaController="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4022
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4023
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_2

    .line 4024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4026
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4027
    const-string v3, "  mMediaMetadata="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4028
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4029
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v3, :cond_3

    .line 4030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v5, "android.media.metadata.TITLE"

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4032
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4034
    const-string v3, "  Panels: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4035
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    if-eqz v3, :cond_4

    .line 4036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    mNotificationPanel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4038
    const-string v3, "      "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4039
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4042
    :cond_4
    invoke-static {p2}, Lcom/android/systemui_ex/doze/DozeLog;->dump(Ljava/io/PrintWriter;)V

    .line 4045
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    monitor-enter v4

    .line 4046
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    const-string v5, "  "

    invoke-virtual {v3, p2, v5}, Lcom/android/systemui_ex/statusbar/NotificationData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4047
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4049
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 4050
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  system icons: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4051
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 4052
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    .line 4053
    .local v2, "ic":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4051
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3987
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "ic":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4014
    :cond_5
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4047
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 4076
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4077
    const/4 v1, 0x0

    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 4078
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v3, :cond_7

    .line 4079
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, p1, p2, p3, v1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 4077
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4083
    :cond_8
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    if-eqz v3, :cond_9

    .line 4084
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4087
    :cond_9
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    if-eqz v3, :cond_a

    .line 4088
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4090
    :cond_a
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    if-eqz v3, :cond_b

    .line 4091
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4093
    :cond_b
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    if-eqz v3, :cond_c

    .line 4094
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4096
    :cond_c
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    if-eqz v3, :cond_d

    .line 4097
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/policy/BatteryController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4099
    :cond_d
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;

    if-eqz v3, :cond_e

    .line 4100
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4102
    :cond_e
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    if-eqz v3, :cond_f

    .line 4103
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4105
    :cond_f
    return-void
.end method

.method public declared-synchronized extendHighlightHintView()V
    .locals 3

    .prologue
    .line 5831
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 5832
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1, v2}, Lcom/android/systemui_ex/util/Utils;->getDisplayWidth(Landroid/content/Context;I)I

    move-result v0

    .line 5835
    .local v0, "screenWidth":I
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v0, :cond_0

    .line 5836
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5837
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 5838
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5841
    .end local v0    # "screenWidth":I
    :cond_0
    monitor-exit p0

    return-void

    .line 5831
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "beforeFading"    # Ljava/lang/Runnable;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 4786
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 4787
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 4788
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)V

    .line 4811
    .local v0, "hideRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4812
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    .line 4816
    :goto_0
    return-void

    .line 4814
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public findAndUpdateMediaNotifications()V
    .locals 21

    .prologue
    .line 2458
    const/4 v11, 0x0

    .line 2460
    .local v11, "metaDataChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2461
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui_ex/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v5

    .line 2462
    .local v5, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2463
    .local v3, "N":I
    const/4 v10, 0x0

    .line 2464
    .local v10, "mediaNotification":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    const/4 v6, 0x0

    .line 2465
    .local v6, "controller":Landroid/media/session/MediaController;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_1

    .line 2466
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .line 2467
    .local v7, "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isMediaNotification(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2468
    iget-object v0, v7, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v19, "android.mediaSession"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/media/session/MediaSession$Token;

    .line 2470
    .local v16, "token":Landroid/media/session/MediaSession$Token;
    if-eqz v16, :cond_0

    .line 2471
    new-instance v6, Landroid/media/session/MediaController;

    .end local v6    # "controller":Landroid/media/session/MediaController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v6, v0, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 2472
    .restart local v6    # "controller":Landroid/media/session/MediaController;
    if-eqz v6, :cond_0

    .line 2474
    move-object v10, v7

    .line 2465
    .end local v16    # "token":Landroid/media/session/MediaSession$Token;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2480
    .end local v7    # "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :cond_1
    if-nez v10, :cond_4

    .line 2485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v14

    .line 2491
    .local v14, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    :sswitch_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;

    .line 2492
    .local v4, "aController":Landroid/media/session/MediaController;
    if-eqz v4, :cond_2

    .line 2493
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v15

    .line 2494
    .local v15, "state":Landroid/media/session/PlaybackState;
    if-eqz v15, :cond_2

    .line 2495
    invoke-virtual {v15}, Landroid/media/session/PlaybackState;->getState()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 2501
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 2503
    .local v13, "pkg":Ljava/lang/String;
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_2

    .line 2504
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .line 2505
    .restart local v7    # "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    iget-object v0, v7, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2507
    const-string v17, "PhoneStatusBar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DEBUG_MEDIA: found controller matching "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    move-object v6, v4

    .line 2511
    move-object v10, v7

    .line 2512
    goto :goto_1

    .line 2503
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2520
    .end local v4    # "aController":Landroid/media/session/MediaController;
    .end local v7    # "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    .end local v15    # "state":Landroid/media/session/PlaybackState;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 2525
    const-string v17, "PhoneStatusBar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DEBUG_MEDIA: Disconnecting from old controller: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2529
    :cond_5
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    .line 2531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2535
    const-string v17, "PhoneStatusBar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DEBUG_MEDIA: insert listener, receive metadata: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    if-nez v10, :cond_8

    const/4 v12, 0x0

    .line 2543
    .local v12, "notificationKey":Ljava/lang/String;
    :goto_3
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 2546
    :cond_6
    const-string v17, "PhoneStatusBar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DEBUG_MEDIA: Found new media notification: key="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " controller="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    .line 2556
    .end local v12    # "notificationKey":Ljava/lang/String;
    :cond_7
    :goto_4
    const/4 v11, 0x1

    .line 2564
    :goto_5
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2566
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    .line 2567
    return-void

    .line 2539
    :cond_8
    :try_start_1
    iget-object v0, v10, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 2552
    :cond_9
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2553
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    goto :goto_4

    .line 2564
    .end local v3    # "N":I
    .end local v5    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/NotificationData$Entry;>;"
    .end local v6    # "controller":Landroid/media/session/MediaController;
    .end local v8    # "i":I
    .end local v10    # "mediaNotification":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 2561
    .restart local v3    # "N":I
    .restart local v5    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/NotificationData$Entry;>;"
    .restart local v6    # "controller":Landroid/media/session/MediaController;
    .restart local v8    # "i":I
    .restart local v10    # "mediaNotification":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :cond_a
    :try_start_2
    const-string v17, "PhoneStatusBar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DEBUG_MEDIA: Continuing media notification: key="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 2495
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public finishKeyguardFadingAway()V
    .locals 1

    .prologue
    .line 4901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    .line 4902
    return-void
.end method

.method public getBarState()I
    .locals 1

    .prologue
    .line 4728
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method public getCameraIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCameraIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getGauseShadow()Landroid/view/View;
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mGauseShadow:Landroid/view/View;

    return-object v0
.end method

.method public getGestureRecorder()Lcom/android/systemui_ex/statusbar/GestureRecorder;
    .locals 1

    .prologue
    .line 3535
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui_ex/statusbar/GestureRecorder;

    return-object v0
.end method

.method public getKeyguardBackdropView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

    return-object v0
.end method

.method public getKeyguardChargeAnimationView()Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;
    .locals 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0f00f2

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    return-object v0
.end method

.method public getKeyguardFadingAwayDelay()J
    .locals 2

    .prologue
    .line 5266
    iget-wide v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .locals 2

    .prologue
    .line 5270
    iget-wide v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method public getKeyguardMediaWallpaperView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getKeyguardStatusView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusView:Landroid/view/View;

    return-object v0
.end method

.method public getKeyguardWallpaperView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWallpaperView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getMaxKeyguardNotifications()I
    .locals 1

    .prologue
    .line 5154
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    return v0
.end method

.method public getNavigationBarView()Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;
    .locals 1

    .prologue
    .line 5158
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method public getNotificationIconAreaWidth()I
    .locals 1

    .prologue
    .line 5806
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    if-nez v0, :cond_1

    .line 5808
    :cond_0
    const/16 v0, 0x1a4

    .line 5812
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x26

    goto :goto_0
.end method

.method public getNotificationStackScrollLayout()Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, -0x1

    .line 1453
    const/4 v6, 0x0

    .line 1454
    .local v6, "opaque":Z
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x820100

    if-eqz v6, :cond_1

    move v5, v1

    :goto_0
    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1462
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1463
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1465
    :cond_0
    const v1, 0x800053

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1466
    const-string v1, "SearchPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1467
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1469
    return-object v0

    .line 1454
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v5, -0x3

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 1508
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 1509
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1510
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 1513
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    return v1
.end method

.method protected getStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method public getStatusBarWindow()Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method public getStatusIconsCount()I
    .locals 6

    .prologue
    .line 5793
    const/4 v1, 0x0

    .line 5794
    .local v1, "count":I
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 5795
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5796
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    .line 5797
    .local v3, "ic":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 5798
    add-int/lit8 v1, v1, 0x1

    .line 5795
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5801
    .end local v3    # "ic":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    :cond_1
    return v1
.end method

.method public goToKeyguard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5251
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5252
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onGoToKeyguard()V

    .line 5253
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5254
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5256
    :cond_0
    return-void
.end method

.method public goToLockedShade(Landroid/view/View;)V
    .locals 6
    .param p1, "expandView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5212
    const/4 v1, 0x0

    .line 5213
    .local v1, "row":Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
    instance-of v4, p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 5214
    check-cast v1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .line 5215
    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 5217
    :cond_0
    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-nez v4, :cond_3

    :cond_1
    move v0, v3

    .line 5219
    .local v0, "fullShadeNeedsBouncer":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 5220
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5221
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showBouncer()V

    .line 5222
    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .line 5231
    :cond_2
    :goto_1
    return-void

    .end local v0    # "fullShadeNeedsBouncer":Z
    :cond_3
    move v0, v2

    .line 5217
    goto :goto_0

    .line 5224
    .restart local v0    # "fullShadeNeedsBouncer":Z
    :cond_4
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 5225
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5226
    invoke-direct {p0, v2, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5227
    if-eqz v1, :cond_2

    .line 5228
    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    goto :goto_1
.end method

.method protected haltTicker()V
    .locals 1

    .prologue
    .line 4575
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v0, :cond_0

    .line 4576
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui_ex/statusbar/phone/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/Ticker;->halt()V

    .line 4578
    :cond_0
    return-void
.end method

.method public hasActiveNotifications()Z
    .locals 1

    .prologue
    .line 5415
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideKeyguard()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4849
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4850
    .local v0, "staying":Z
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 4851
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v1, :cond_2

    .line 4852
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4853
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 4854
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 4855
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v4}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 4856
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .line 4862
    :cond_0
    :goto_0
    const-string v1, "PhoneStatusBar"

    const-string v2, "hideKeyguard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4864
    invoke-direct {p0, v0, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 4868
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    if-eqz v1, :cond_1

    .line 4869
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui_ex/qs/QSPanel;->refreshAllTiles()V

    .line 4871
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 4872
    return v0

    .line 4859
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->instantCollapseNotificationPanel()V

    goto :goto_0
.end method

.method public hideNotification()V
    .locals 0

    .prologue
    .line 5244
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 5245
    return-void
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 5375
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5376
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5377
    invoke-super {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->hideRecents(ZZ)V

    .line 5378
    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 4986
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3505
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->SPEW:Z

    if-eqz v3, :cond_3

    .line 3506
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch: rawY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDisabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTracking="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-nez v3, :cond_2

    .line 3522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_4

    :cond_1
    move v0, v2

    .line 3525
    .local v0, "upOrCancel":Z
    :goto_1
    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v3, :cond_5

    .line 3526
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3531
    .end local v0    # "upOrCancel":Z
    :cond_2
    :goto_2
    return v1

    .line 3508
    :cond_3
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->CHATTY:Z

    if-eqz v3, :cond_0

    .line 3509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 3510
    const-string v3, "PhoneStatusBar"

    const-string v4, "panel: %s at (%f, %f) mDisabled=0x%08x"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 3522
    goto :goto_1

    .line 3528
    .restart local v0    # "upOrCancel":Z
    :cond_5
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    goto :goto_2
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 4765
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v0

    return v0
.end method

.method public isDoNotDisturbModeEnabled()Z
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isDoNotDisturbModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 3019
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return v0
.end method

.method public isExpandedVisible()Z
    .locals 1

    .prologue
    .line 3139
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    return v0
.end method

.method public isFalsingThresholdNeeded()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3013
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 3015
    .local v0, "onKeyguard":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    return v1

    .end local v0    # "onKeyguard":Z
    :cond_1
    move v0, v2

    .line 3013
    goto :goto_0

    .restart local v0    # "onKeyguard":Z
    :cond_2
    move v1, v2

    .line 3015
    goto :goto_1
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    .prologue
    .line 3001
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    return v0
.end method

.method public isInLaunchTransition()Z
    .locals 1

    .prologue
    .line 4773
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardFadingAway()Z
    .locals 1

    .prologue
    .line 4894
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    return v0
.end method

.method public isKeyguardMethodSecure()Z
    .locals 1

    .prologue
    .line 5430
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    return v0
.end method

.method isMSim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 784
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQsExpanded()Z
    .locals 1

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    return v0
.end method

.method public isScreenOnComingFromTouch()Z
    .locals 1

    .prologue
    .line 3009
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    return v0
.end method

.method public isScrimSrcModeEnabled()Z
    .locals 1

    .prologue
    .line 3028
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    return v0
.end method

.method public launchInCallUI()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 3337
    const-string v0, "PhoneStatusBar"

    const-string v1, "launchInCallUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3339
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3340
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideIgnoreView:Z

    .line 3341
    sput-boolean v2, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsDialIgnoreViewVisible:Z

    .line 3342
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3343
    return-void
.end method

.method protected loadDimens()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4447
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4449
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x1050011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 4452
    const v3, 0x7f0d0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4455
    .local v1, "newIconSize":I
    const v3, 0x7f0d0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4458
    .local v0, "newIconHPadding":I
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIconSize:I

    if-eq v1, v3, :cond_1

    .line 4460
    :cond_0
    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 4461
    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 4465
    :cond_1
    const/high16 v3, 0x7f0d0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 4467
    const v3, 0x7f0a0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 4468
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    if-gtz v3, :cond_2

    .line 4469
    const v3, 0x800033

    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 4472
    :cond_2
    const v3, 0x7f0d0032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabelHeight:I

    .line 4473
    const v3, 0x7f0d002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarHeaderHeight:I

    .line 4475
    const v3, 0x7f0d0034

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 4476
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 4477
    :cond_3
    iput v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 4480
    :cond_4
    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    .line 4481
    const v3, 0x7f0d001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mRowMinHeight:I

    .line 4482
    const v3, 0x7f0d001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mRowMaxHeight:I

    .line 4484
    const v3, 0x7f0a0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    .line 4486
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "PhoneStatusBar"

    const-string v4, "updateResources"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4487
    :cond_5
    return-void
.end method

.method makeExpandedInvisible()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3412
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeExpandedInvisible: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideIgnoreView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideIgnoreView:Z

    if-eqz v0, :cond_0

    .line 3416
    invoke-virtual {p0, v4, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setDialIgnoreViewVisibility(ZZ)V

    .line 3419
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideHighlightHintView:Z

    if-eqz v0, :cond_1

    .line 3420
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setDialIgnoreViewVisibility(ZZ)V

    .line 3423
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    if-nez v0, :cond_3

    .line 3455
    :cond_2
    :goto_0
    return-void

    .line 3428
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3431
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3432
    :cond_4
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3434
    :cond_5
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setVisibility(I)V

    .line 3435
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setVisibility(I)V

    .line 3437
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 3439
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3440
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_6

    .line 3441
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3442
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3445
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setStatusBarExpanded(Z)V

    .line 3446
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    .line 3449
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 3451
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 3452
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3453
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showBouncer()V

    .line 3454
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    goto :goto_0
.end method

.method makeExpandedVisible(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3111
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->SPEW:Z

    if-eqz v2, :cond_0

    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Make expanded visible: expanded visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    :cond_0
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3136
    :cond_1
    :goto_0
    return-void

    .line 3116
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3117
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v2, :cond_3

    .line 3118
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3120
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 3122
    const/16 v2, -0x2710

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 3126
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setStatusBarExpanded(Z)V

    .line 3127
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    .line 3129
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3130
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 3131
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    if-nez p1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 3132
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3133
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3134
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTaskManager:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->refreshTaskManagerView()V

    goto :goto_0
.end method

.method protected makeStatusBarView()Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;
    .locals 35

    .prologue
    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 793
    .local v19, "context":Landroid/content/Context;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 795
    .local v25, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 798
    const v3, 0x7f0d0018

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 800
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 801
    const v3, 0x7f04002e

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    .line 808
    :goto_0
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLSState:Lcom/android/systemui_ex/plugin/LSState;

    .line 809
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLSState:Lcom/android/systemui_ex/plugin/LSState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/systemui_ex/plugin/LSState;->init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v0, v3, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    new-instance v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$10;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f00e9

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    .line 830
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0100

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mGauseShadow:Landroid/view/View;

    .line 831
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0101

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCameraIcon:Landroid/widget/ImageView;

    .line 832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0104

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui_ex/statusbar/phone/PanelHolder;

    .line 840
    .local v21, "holder":Lcom/android/systemui_ex/statusbar/phone/PanelHolder;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->setPanelHolder(Lcom/android/systemui_ex/statusbar/phone/PanelHolder;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f00f1

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 846
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    if-nez v3, :cond_0

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    new-instance v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$FastColorDrawable;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$FastColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 852
    :cond_0
    const v3, 0x7f040005

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->setBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 863
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    .line 866
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v28

    .line 867
    .local v28, "showNav":Z
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasNavigationBar="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_1
    if-eqz v28, :cond_2

    .line 869
    const v3, 0x7f040030

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    .line 872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setBar(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    new-instance v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$11;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    new-instance v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$12;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    .end local v28    # "showNav":Z
    :cond_2
    :goto_3
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mPixelFormat:I

    .line 898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f00ee

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f00a3

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f0180

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f00ed

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f00a0

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    .line 904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f011c

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/NotificationNotifierGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationNotifier:Lcom/android/systemui_ex/NotificationNotifierGroup;

    .line 905
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationNotifier:Lcom/android/systemui_ex/NotificationNotifierGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/NotificationNotifierGroup;->setVisibility(I)V

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f009f

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->setPhoneStatusBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f00eb

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/RelativeLayout;

    .line 913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f00f8

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getNotificationLongClicker()Lcom/android/systemui_ex/SwipeHelper$LongPressListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setLongPressListener(Lcom/android/systemui_ex/SwipeHelper$LongPressListener;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setPhoneStatusBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040056

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->setOnActivatedListener(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mOverflowClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040058

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    .line 927
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setSpeedBumpView(Lcom/android/systemui_ex/statusbar/SpeedBumpView;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040053

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setEmptyShadeView(Lcom/android/systemui_ex/statusbar/EmptyShadeView;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040055

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/DismissView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    .line 933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    new-instance v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$13;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/DismissView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setDismissView(Lcom/android/systemui_ex/statusbar/DismissView;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f00fb

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/BackDropView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f00fd

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackDropMedia:Landroid/widget/FrameLayout;

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

    const v4, 0x7f0f00fc

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWallpaperView:Landroid/widget/ImageView;

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

    const v4, 0x7f0f00ff

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    .line 946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

    const v4, 0x7f0f00fe

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

    if-eqz v3, :cond_3

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/BackDropView;->setVisibility(I)V

    .line 951
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateWallpaper()V

    .line 953
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0102

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui_ex/statusbar/ScrimView;

    .line 954
    .local v26, "scrimBehind":Lcom/android/systemui_ex/statusbar/ScrimView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0105

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/android/systemui_ex/statusbar/ScrimView;

    .line 956
    .local v27, "scrimInFront":Lcom/android/systemui_ex/statusbar/ScrimView;
    new-instance v3, Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui_ex/statusbar/ScrimView;Lcom/android/systemui_ex/statusbar/ScrimView;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    .line 958
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setBackDropView(Lcom/android/systemui_ex/statusbar/BackDropView;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setBackDropBackView(Landroid/widget/ImageView;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->setScrimController(Lcom/android/systemui_ex/statusbar/phone/ScrimController;)V

    .line 961
    new-instance v3, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    move-object/from16 v0, v19

    invoke-direct {v3, v4, v0}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;-><init>(Lcom/android/systemui_ex/statusbar/phone/ScrimController;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    .line 963
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f014b

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .line 964
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setActivityStarter(Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f009b

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    .line 966
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f0180

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f00a3

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardSystemIcons:Landroid/widget/LinearLayout;

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f00a0

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f011c

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/NotificationNotifierGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifier:Lcom/android/systemui_ex/NotificationNotifierGroup;

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifier:Lcom/android/systemui_ex/NotificationNotifierGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/NotificationNotifierGroup;->setVisibility(I)V

    .line 977
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f009f

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardMoreIcon:Landroid/view/View;

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardMoreIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->setPhoneStatusBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f00a7

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusView:Landroid/view/View;

    .line 983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0047

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    .line 985
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setActivityStarter(Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;)V

    .line 986
    new-instance v6, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0048

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0f00f2

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v8, 0x7f0f00f3

    invoke-virtual {v5, v8}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v6, v7, v3, v4, v5}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setKeyguardIndicationController(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V

    .line 992
    const v3, 0x7f090015

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    .line 993
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v3, :cond_4

    .line 994
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f00ef

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/view/ViewStub;

    .line 995
    .local v33, "tickerStub":Landroid/view/ViewStub;
    if-eqz v33, :cond_4

    .line 996
    invoke-virtual/range {v33 .. v33}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    .line 997
    new-instance v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui_ex/statusbar/phone/Ticker;

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f017c

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Lcom/android/systemui_ex/statusbar/phone/TickerView;

    .line 1000
    .local v34, "tickerView":Lcom/android/systemui_ex/statusbar/phone/TickerView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui_ex/statusbar/phone/Ticker;

    move-object/from16 v0, v34

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui_ex/statusbar/phone/Ticker;

    .line 1004
    .end local v33    # "tickerStub":Landroid/view/ViewStub;
    .end local v34    # "tickerView":Lcom/android/systemui_ex/statusbar/phone/TickerView;
    :cond_4
    const/high16 v3, 0x7f0d0000

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1010
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "PhoneStatusBar"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1011
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1014
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/LocationControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui_ex/statusbar/policy/LocationControllerImpl;

    .line 1021
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/VPNControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/VPNControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVPNController:Lcom/android/systemui_ex/statusbar/policy/VPNControllerImpl;

    .line 1023
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    .line 1024
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    new-instance v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$14;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 1037
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;

    .line 1038
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    .line 1039
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    .line 1040
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1041
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/RotationLockControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui_ex/statusbar/policy/RotationLockControllerImpl;

    .line 1043
    :cond_5
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/UserInfoController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/UserInfoController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui_ex/statusbar/policy/UserInfoController;

    .line 1044
    const-class v3, Lcom/android/systemui_ex/volume/VolumeComponent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/volume/VolumeComponent;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui_ex/volume/VolumeComponent;

    .line 1045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui_ex/volume/VolumeComponent;

    invoke-interface {v3}, Lcom/android/systemui_ex/volume/VolumeComponent;->getZenController()Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    .line 1046
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    .line 1050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0107

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreView:Landroid/widget/TextView;

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0106

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreBackgroundView:Landroid/view/View;

    .line 1053
    new-instance v3, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DialIgnoreViewGestureDetector;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DialIgnoreViewGestureDetector;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;)V

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDialIgnoreViewGestureDetector:Landroid/view/GestureDetector;

    .line 1054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDialIgnoreViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1058
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f00c3

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;

    .line 1061
    .local v29, "signalCluster":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f00c3

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;

    .line 1063
    .local v30, "signalClusterKeyguard":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_9

    .line 1064
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->addSignalCluster(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->addSignalCluster(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 1063
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 804
    .end local v21    # "holder":Lcom/android/systemui_ex/statusbar/phone/PanelHolder;
    .end local v22    # "i":I
    .end local v26    # "scrimBehind":Lcom/android/systemui_ex/statusbar/ScrimView;
    .end local v27    # "scrimInFront":Lcom/android/systemui_ex/statusbar/ScrimView;
    .end local v29    # "signalCluster":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    .end local v30    # "signalClusterKeyguard":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    :cond_6
    const v3, 0x7f040061

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    goto/16 :goto_0

    .line 828
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f014a

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    goto/16 :goto_1

    .line 838
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0182

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui_ex/statusbar/phone/PanelHolder;

    .restart local v21    # "holder":Lcom/android/systemui_ex/statusbar/phone/PanelHolder;
    goto/16 :goto_2

    .line 1067
    .restart local v22    # "i":I
    .restart local v26    # "scrimBehind":Lcom/android/systemui_ex/statusbar/ScrimView;
    .restart local v27    # "scrimInFront":Lcom/android/systemui_ex/statusbar/ScrimView;
    .restart local v29    # "signalCluster":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    .restart local v30    # "signalClusterKeyguard":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->setNetworkController(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->setNetworkController(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->setSecurityController(Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->setSecurityController(Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->addEmergencyLabelView(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->addSimOperatorCallback(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0032

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    .line 1078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0181

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSubsLabel:Landroid/widget/TextView;

    .line 1079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 1081
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carrierlabel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "operator label="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSubsLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    if-eqz v3, :cond_b

    .line 1084
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->hasMobileDataFeature()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1089
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->addMobileLabelView(Landroid/widget/TextView;)V

    .line 1093
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSubsLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1152
    .end local v22    # "i":I
    .end local v29    # "signalCluster":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    .end local v30    # "signalClusterKeyguard":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->getFlashlightController(Landroid/content/Context;)Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setFlashlightController(Lcom/android/systemui_ex/statusbar/policy/FlashlightController;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setPhoneStatusBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 1155
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAccessibilityController:Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;

    .line 1156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAccessibilityController:Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setAccessibilityController(Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;)V

    .line 1157
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;

    .line 1158
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    invoke-direct {v3}, Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    .line 1159
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .line 1161
    new-instance v2, Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0f00f9

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    .line 1167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0126

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/qs/QSPanel;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    .line 1168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    if-eqz v3, :cond_c

    .line 1170
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1171
    new-instance v2, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui_ex/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVPNController:Lcom/android/systemui_ex/statusbar/policy/VPNControllerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui_ex/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui_ex/volume/VolumeComponent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v17, v0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v17}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/policy/BluetoothController;Lcom/android/systemui_ex/statusbar/policy/LocationController;Lcom/android/systemui_ex/statusbar/policy/VPNController;Lcom/android/systemui_ex/statusbar/policy/RotationLockController;Lcom/android/systemui_ex/statusbar/policy/NetworkController;Lcom/android/systemui_ex/statusbar/policy/ZenModeController;Lcom/android/systemui_ex/volume/VolumeComponent;Lcom/android/systemui_ex/statusbar/policy/HotspotController;Lcom/android/systemui_ex/statusbar/policy/CastController;Lcom/android/systemui_ex/statusbar/policy/FlashlightController;Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V

    .line 1185
    .local v2, "qsh":Lcom/android/systemui_ex/statusbar/phone/QSTileHost;
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-virtual {v3, v2}, Lcom/android/systemui_ex/qs/QSPanel;->setHost(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 1187
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/qs/QSPanel;->setBrightnessMirror(Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setQSPanel(Lcom/android/systemui_ex/qs/QSPanel;)V

    .line 1190
    new-instance v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$15;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->setCallback(Lcom/android/systemui_ex/qs/QSTile$Host$Callback;)V

    .line 1199
    .end local v2    # "qsh":Lcom/android/systemui_ex/statusbar/phone/QSTileHost;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0127

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTaskManagerPanel:Landroid/widget/LinearLayout;

    .line 1202
    new-instance v3, Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTaskManagerPanel:Landroid/widget/LinearLayout;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTaskManager:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    .line 1203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTaskManager:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->setActivityStarter(Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    const v4, 0x7f0f014d

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTaskManagerButton:Landroid/widget/ImageButton;

    .line 1205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTaskManagerButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$16;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$16;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1215
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui_ex/statusbar/policy/UserInfoController;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setUserInfoController(Lcom/android/systemui_ex/statusbar/policy/UserInfoController;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui_ex/statusbar/policy/UserInfoController;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setUserInfoController(Lcom/android/systemui_ex/statusbar/policy/UserInfoController;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui_ex/statusbar/policy/UserInfoController;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/UserInfoController;->reloadUserInfo()V

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setBatteryController(Lcom/android/systemui_ex/statusbar/policy/BatteryController;)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setBatteryController(Lcom/android/systemui_ex/statusbar/policy/BatteryController;)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f00a5

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/BatteryIconGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarBatteryIconGroup:Lcom/android/systemui_ex/BatteryIconGroup;

    .line 1225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarBatteryIconGroup:Lcom/android/systemui_ex/BatteryIconGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/BatteryIconGroup;->setBatteryController(Lcom/android/systemui_ex/statusbar/policy/BatteryController;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarBatteryIconGroup:Lcom/android/systemui_ex/BatteryIconGroup;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setNextAlarmController(Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/PowerManager;

    .line 1230
    .local v24, "pm":Landroid/os/PowerManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "android.intent.action.SCREEN_ON"

    :goto_a
    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1233
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    .line 1235
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f00c3

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;

    .line 1238
    .local v32, "signalClusterViewColorObserver":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    .end local v32    # "signalClusterViewColorObserver":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f0084

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui_ex/statusbar/policy/Clock;

    .line 1246
    .local v18, "clockColorObserver":Lcom/android/systemui_ex/statusbar/policy/Clock;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v5, 0x7f0f00a5

    invoke-virtual {v3, v5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/BatteryIconGroup;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    const v5, 0x7f0f00a5

    invoke-virtual {v3, v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/BatteryIconGroup;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationNotifier:Lcom/android/systemui_ex/NotificationNotifierGroup;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifier:Lcom/android/systemui_ex/NotificationNotifierGroup;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f009e

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mThreeKeyTipsView:Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

    .line 1258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f009e

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mThreeKeyKeyguardTipsView:Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

    .line 1259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mThreeKeyTipsView:Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mThreeKeyKeyguardTipsView:Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    new-instance v20, Landroid/content/IntentFilter;

    invoke-direct/range {v20 .. v20}, Landroid/content/IntentFilter;-><init>()V

    .line 1263
    .local v20, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1264
    const-string v3, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1265
    const-string v3, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1266
    const-string v3, "android.intent.action.KEYGUARD_WALLPAPER_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1270
    const-string v3, "com.android.systemui.demo"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1271
    const-string v3, "com.android.keyguard.back"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1273
    const-string v3, "com.oneplus.intent.action.PHONE_IGNORE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1275
    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1278
    const-class v3, Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mControlPanel:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .line 1280
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 1281
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startGlyphRasterizeHack()V

    .line 1284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0108

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    .line 1287
    new-instance v3, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$HighlightHintViewGestureDetector;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$HighlightHintViewGestureDetector;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;)V

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintGestureDetector:Landroid/view/GestureDetector;

    .line 1288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    return-object v3

    .line 1079
    .end local v18    # "clockColorObserver":Lcom/android/systemui_ex/statusbar/policy/Clock;
    .end local v20    # "filter":Landroid/content/IntentFilter;
    .end local v24    # "pm":Landroid/os/PowerManager;
    .restart local v22    # "i":I
    .restart local v29    # "signalCluster":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    .restart local v30    # "signalClusterKeyguard":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 1084
    :cond_f
    const/4 v3, 0x4

    goto/16 :goto_6

    .line 1091
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_7

    .line 1104
    .end local v22    # "i":I
    .end local v29    # "signalCluster":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    .end local v30    # "signalClusterKeyguard":Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    :cond_11
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    .line 1105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f00a4

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/systemui_ex/statusbar/SignalClusterView;

    .line 1107
    .local v29, "signalCluster":Lcom/android/systemui_ex/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f00a4

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/android/systemui_ex/statusbar/SignalClusterView;

    .line 1109
    .local v30, "signalClusterKeyguard":Lcom/android/systemui_ex/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    const v4, 0x7f0f00a4

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/android/systemui_ex/statusbar/SignalClusterView;

    .line 1111
    .local v31, "signalClusterQs":Lcom/android/systemui_ex/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v23

    .line 1122
    .local v23, "isAPhone":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->addSimOperatorCallback(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;)V

    .line 1124
    if-eqz v23, :cond_12

    .line 1125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->addEmergencyLabelView(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)V

    .line 1128
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0032

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    .line 1129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 1130
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_13

    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carrierlabel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    if-eqz v3, :cond_b

    .line 1132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    if-eqz v3, :cond_15

    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->hasMobileDataFeature()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->addMobileLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 1129
    :cond_14
    const/4 v3, 0x0

    goto :goto_c

    .line 1132
    :cond_15
    const/4 v3, 0x4

    goto :goto_d

    .line 1139
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 1178
    .end local v23    # "isAPhone":Z
    .end local v29    # "signalCluster":Lcom/android/systemui_ex/statusbar/SignalClusterView;
    .end local v30    # "signalClusterKeyguard":Lcom/android/systemui_ex/statusbar/SignalClusterView;
    .end local v31    # "signalClusterQs":Lcom/android/systemui_ex/statusbar/SignalClusterView;
    :cond_17
    new-instance v2, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui_ex/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVPNController:Lcom/android/systemui_ex/statusbar/policy/VPNControllerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui_ex/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui_ex/volume/VolumeComponent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v17, v0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v17}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/policy/BluetoothController;Lcom/android/systemui_ex/statusbar/policy/LocationController;Lcom/android/systemui_ex/statusbar/policy/VPNController;Lcom/android/systemui_ex/statusbar/policy/RotationLockController;Lcom/android/systemui_ex/statusbar/policy/NetworkController;Lcom/android/systemui_ex/statusbar/policy/ZenModeController;Lcom/android/systemui_ex/volume/VolumeComponent;Lcom/android/systemui_ex/statusbar/policy/HotspotController;Lcom/android/systemui_ex/statusbar/policy/CastController;Lcom/android/systemui_ex/statusbar/policy/FlashlightController;Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V

    .restart local v2    # "qsh":Lcom/android/systemui_ex/statusbar/phone/QSTileHost;
    goto/16 :goto_9

    .line 1230
    .end local v2    # "qsh":Lcom/android/systemui_ex/statusbar/phone/QSTileHost;
    .restart local v24    # "pm":Landroid/os/PowerManager;
    :cond_18
    const-string v3, "android.intent.action.SCREEN_OFF"

    goto/16 :goto_a

    .line 1240
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f00a4

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/android/systemui_ex/statusbar/SignalClusterView;

    .line 1242
    .local v32, "signalClusterViewColorObserver":Lcom/android/systemui_ex/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusbarColorObservers:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 891
    .end local v24    # "pm":Landroid/os/PowerManager;
    .end local v26    # "scrimBehind":Lcom/android/systemui_ex/statusbar/ScrimView;
    .end local v27    # "scrimInFront":Lcom/android/systemui_ex/statusbar/ScrimView;
    .end local v32    # "signalClusterViewColorObserver":Lcom/android/systemui_ex/statusbar/SignalClusterView;
    :catch_0
    move-exception v3

    goto/16 :goto_3
.end method

.method public notificationLightOff()V
    .locals 2

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3579
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNotificationLight(Z)V

    .line 3581
    :cond_0
    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 2
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 3585
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3586
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNotificationLight(Z)V

    .line 3588
    :cond_0
    return-void
.end method

.method public onActivated(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    .prologue
    .line 5079
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 5080
    .local v0, "previousView":Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;
    if-eqz v0, :cond_0

    .line 5081
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 5083
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V

    .line 5084
    instance-of v1, p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    .line 5085
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->showActivatedNotificationOnKeyguard(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V

    .line 5087
    :cond_1
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    .prologue
    .line 5113
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5114
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 5115
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V

    .line 5117
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 5001
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLSState:Lcom/android/systemui_ex/plugin/LSState;

    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/LSState;->onBackPressed()V

    .line 5003
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5005
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getKeyguardChargeAnimationView()Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->setAlpha(F)V

    .line 5026
    :goto_0
    return v0

    .line 5009
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5010
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5011
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->closeQsDetail()V

    goto :goto_0

    .line 5013
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->animateCloseQs()V

    goto :goto_0

    .line 5017
    :cond_2
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_3

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v2, :cond_3

    .line 5018
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 5022
    :cond_3
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v2, :cond_4

    .line 5023
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    .line 5026
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClosingFinished()V
    .locals 0

    .prologue
    .line 5124
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 5125
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 4341
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4343
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4344
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4346
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 4348
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 4349
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateClockSize()V

    .line 4350
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    .line 4351
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 4352
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    .line 4353
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 4354
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenPinningRequest:Lcom/android/systemui_ex/recent/ScreenPinningRequest;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recent/ScreenPinningRequest;->onConfigurationChanged()V

    .line 4355
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/plugin/LSState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4356
    return-void
.end method

.method public onHeadsUpDismissed()V
    .locals 1

    .prologue
    .line 4392
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->dismiss()V

    .line 4393
    return-void
.end method

.method public onHintFinished()V
    .locals 4

    .prologue
    .line 5133
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 5134
    return-void
.end method

.method public onMenuPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4992
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->onMenuPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4993
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 4996
    :cond_0
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->onMenuPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5288
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    .line 5289
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    .line 5290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOnTouchLocation:Landroid/graphics/PointF;

    .line 5291
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5292
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateVisibleToUser()V

    .line 5294
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->cancelWallpaperAnimate()V

    .line 5295
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/BackDropView;->setTranslationY(F)V

    .line 5296
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 5297
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWallpaperView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 5298
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->onScreenTurnedOff()V

    .line 5299
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsKeyguardWallpaperAnimating:Z

    .line 5300
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5303
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    .line 5304
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5305
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->onScreenTurnedOn()V

    .line 5306
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 5307
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateVisibleToUser()V

    .line 5308
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->shrinkHighlightHintView()V

    .line 5309
    return-void
.end method

.method public onSpacePressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5030
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 5032
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 5035
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onStatusbarColorChange(Z)V
    .locals 1
    .param p1, "isUsingDarkColor"    # Z

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    .line 3035
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemIcons:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    .line 3037
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardSystemIcons:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    .line 3039
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    .line 3040
    return-void
.end method

.method public onTrackingStarted()V
    .locals 0

    .prologue
    .line 5120
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 5121
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 5145
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5146
    :cond_0
    if-nez p1, :cond_1

    .line 5147
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showBouncer()V

    .line 5150
    :cond_1
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 5391
    if-eqz p1, :cond_0

    .line 5392
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5396
    :goto_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5397
    return-void

    .line 5394
    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method public onVolumePressed(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    .line 5039
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 5040
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLSState:Lcom/android/systemui_ex/plugin/LSState;

    invoke-virtual {v0}, Lcom/android/systemui_ex/plugin/LSState;->onVolumeUpPressed()V

    .line 5042
    :cond_0
    return-void
.end method

.method panelsEnabled()Z
    .locals 2

    .prologue
    .line 3107
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postAnimateCollapsePanels()V
    .locals 2

    .prologue
    .line 3154
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 3155
    return-void
.end method

.method public postStartSettingsActivity(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delay"    # I

    .prologue
    .line 4588
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$43;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$43;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4594
    return-void
.end method

.method public refreshAllStatusBarIcons()V
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1656
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1657
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1659
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardNotifications:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1661
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    .line 1959
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->refreshAllStatusBarIcons()V

    .line 1960
    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 1730
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeIcon slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " viewIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1732
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1735
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->checkOverflow(I)V

    .line 1737
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 1925
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1927
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->clear()V

    .line 1930
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1931
    .local v0, "old":Landroid/service/notification/StatusBarNotification;
    sget-boolean v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->SPEW:Z

    if-eqz v1, :cond_1

    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_1
    if-eqz v0, :cond_3

    .line 1935
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v1, :cond_2

    .line 1936
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui_ex/statusbar/phone/Ticker;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/phone/Ticker;->removeEntry(Landroid/service/notification/StatusBarNotification;)V

    .line 1940
    :cond_2
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1942
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1944
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v1, :cond_4

    .line 1945
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 1951
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1952
    return-void

    .line 1946
    :cond_4
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1947
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0
.end method

.method public resetHeadsUpDecayTimer()V
    .locals 5

    .prologue
    const/16 v4, 0x407

    .line 1895
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1896
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1900
    :cond_0
    return-void
.end method

.method public scheduleHeadsUpClose()V
    .locals 2

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    const/16 v1, 0x405

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1910
    return-void
.end method

.method public scheduleHeadsUpEscalation()V
    .locals 2

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    const/16 v1, 0x406

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1915
    return-void
.end method

.method public scheduleHeadsUpOpen()V
    .locals 2

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1905
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 10

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2424
    sget-boolean v7, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->SPEW:Z

    if-eqz v7, :cond_0

    .line 2425
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v7}, Lcom/android/systemui_ex/statusbar/NotificationData;->hasActiveClearableNotifications()Z

    move-result v7

    if-eqz v7, :cond_3

    move v0, v3

    .line 2427
    .local v0, "clearable":Z
    :goto_0
    const-string v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setAreThereNotifications: N="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui_ex/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " any="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " clearable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    .end local v0    # "clearable":Z
    :cond_0
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v8, 0x7f0f00ea

    invoke-virtual {v7, v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2433
    .local v1, "nlo":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v7

    if-nez v7, :cond_4

    move v2, v3

    .line 2434
    .local v2, "showDot":Z
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v7

    cmpl-float v7, v7, v5

    if-nez v7, :cond_5

    :goto_2
    if-eq v2, v3, :cond_2

    .line 2435
    if-eqz v2, :cond_1

    .line 2436
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2437
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2439
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-eqz v2, :cond_6

    move v3, v5

    :goto_3
    invoke-virtual {v7, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v2, :cond_7

    const-wide/16 v6, 0x2ee

    :goto_4
    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v5, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2452
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->findAndUpdateMediaNotifications()V

    .line 2454
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 2455
    return-void

    .end local v1    # "nlo":Landroid/view/View;
    .end local v2    # "showDot":Z
    :cond_3
    move v0, v4

    .line 2425
    goto/16 :goto_0

    .restart local v1    # "nlo":Landroid/view/View;
    :cond_4
    move v2, v4

    .line 2433
    goto :goto_1

    .restart local v2    # "showDot":Z
    :cond_5
    move v3, v4

    .line 2434
    goto :goto_2

    :cond_6
    move v3, v6

    .line 2439
    goto :goto_3

    :cond_7
    const-wide/16 v6, 0xfa

    goto :goto_4

    :cond_8
    new-instance v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$26;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$26;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    goto :goto_5
.end method

.method public setBarState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 5093
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBarState to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5095
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, p1, :cond_0

    .line 5096
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showClockOnNoneLauncherWindow()V

    .line 5099
    :cond_0
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    .line 5100
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setStatusBarState(I)V

    .line 5102
    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->setStatusbarState(I)V

    .line 5103
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateStatusbarIconColor()V

    .line 5104
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_1

    .line 5105
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->resetSingleHandNotificationState()V

    .line 5108
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateDozing()V

    .line 5109
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 2
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 5283
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->setBouncerShowing(Z)V

    .line 5284
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 5285
    return-void
.end method

.method public setCameraLauchingInProgress(Z)V
    .locals 1
    .param p1, "inProgress"    # Z

    .prologue
    .line 5818
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    .line 5819
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setCameraLauchingInProgress(Z)V

    .line 5821
    :cond_0
    return-void
.end method

.method public setDialIgnoreViewVisibility(ZZ)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "isDialIgnore"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3367
    if-eqz p2, :cond_2

    .line 3371
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideIgnoreView:Z

    if-eqz v0, :cond_1

    .line 3372
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3373
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3374
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideIgnoreView:Z

    .line 3375
    sput-boolean v2, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsDialIgnoreViewVisible:Z

    .line 3391
    :cond_0
    :goto_0
    return-void

    .line 3376
    :cond_1
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsDialIgnoreViewVisible:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideIgnoreView:Z

    if-nez v0, :cond_0

    .line 3377
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3378
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3379
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideIgnoreView:Z

    .line 3380
    sput-boolean v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsDialIgnoreViewVisible:Z

    goto :goto_0

    .line 3383
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideHighlightHintView:Z

    if-eqz v0, :cond_3

    .line 3384
    const-string v0, "PhoneStatusBar"

    const-string v1, "setDialIgnoreViewVisibility:: visible is true and mTempHideHighlightHintView is true, show the view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showHighlightHintViewOnStatusBar()V

    goto :goto_0

    .line 3386
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showHighlightHintOnStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideHighlightHintView:Z

    if-nez v0, :cond_0

    .line 3387
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hideHighlightHintOnStatusBar()V

    .line 3388
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideHighlightHintView:Z

    goto :goto_0
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 3861
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 3862
    .local v1, "imeShown":Z
    :goto_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 3863
    .local v0, "flags":I
    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    if-eqz v1, :cond_2

    .line 3864
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 3868
    :goto_1
    if-eqz p4, :cond_3

    .line 3869
    or-int/lit8 v0, v0, 0x2

    .line 3874
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setNavigationIconHints(I)V

    .line 3875
    return-void

    .line 3861
    .end local v0    # "flags":I
    .end local v1    # "imeShown":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3866
    .restart local v0    # "flags":I
    .restart local v1    # "imeShown":Z
    :cond_2
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 3871
    :cond_3
    and-int/lit8 v0, v0, -0x3

    goto :goto_2
.end method

.method public setIndicationControllerAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 5825
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    if-eqz v0, :cond_0

    .line 5826
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->setAlpha(F)V

    .line 5828
    :cond_0
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 2
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 3776
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    or-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    .line 3779
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    if-eqz v0, :cond_1

    .line 3780
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->suspendAutohide()V

    .line 3784
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3785
    return-void

    .line 3776
    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0

    .line 3782
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->resumeSuspendedAutohide()V

    goto :goto_1
.end method

.method public setKeyguardFadingAway(JJ)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    const/4 v1, 0x1

    .line 4886
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    .line 4887
    iput-wide p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    .line 4888
    iput-wide p3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    .line 4889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 4890
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 4891
    return-void
.end method

.method public setKeyguardWallpaperAnimating(Z)V
    .locals 0
    .param p1, "isAniamting"    # Z

    .prologue
    .line 5060
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsKeyguardWallpaperAnimating:Z

    .line 5061
    return-void
.end method

.method public setLightsOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3831
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    if-eqz p1, :cond_0

    .line 3833
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    .line 3837
    :goto_0
    return-void

    .line 3835
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    goto :goto_0
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setQsExpanded(Z)V

    .line 2998
    return-void
.end method

.method public setSystemUiVisibility(II)V
    .locals 15
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 3603
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3604
    .local v1, "oldVal":I
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, v1

    and-int v3, p1, p2

    or-int v2, v0, v3

    .line 3605
    .local v2, "newVal":I
    xor-int v7, v2, v1

    .line 3606
    .local v7, "diff":I
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBar"

    const-string v3, "setSystemUiVisibility vis=%s mask=%s oldVal=%s newVal=%s diff=%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    :cond_0
    if-eqz v7, :cond_f

    .line 3614
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, 0x4000

    if-lez v0, :cond_10

    const/4 v13, 0x1

    .line 3616
    .local v13, "wasRecentsVisible":Z
    :goto_0
    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3618
    and-int/lit8 v0, v7, 0x10

    if-eqz v0, :cond_1

    .line 3620
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_11

    .line 3621
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->changeStatusBarTint(Z)V

    .line 3627
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->clock_flag_show:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_2

    .line 3629
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->clock_flag_show:I

    and-int v0, v0, p1

    if-eqz v0, :cond_2

    .line 3631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->shouldShowClockOnLauncher:Z

    .line 3632
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isClockShowPostponed:Z

    if-eqz v0, :cond_2

    .line 3633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isClockShowPostponed:Z

    .line 3634
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f0f0084

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startClockVisibilityAnimation(Landroid/view/View;Z)V

    .line 3642
    :cond_2
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->clock_flag_hide:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_3

    .line 3645
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->clock_flag_hide:I

    and-int v0, v0, p1

    if-eqz v0, :cond_12

    .line 3646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isClockShowPostponed:Z

    .line 3647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->shouldShowClockOnLauncher:Z

    .line 3648
    const-string v0, "PhoneStatusBar"

    const-string v3, "hide clock when launcher set hide flag"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f0f0084

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startClockVisibilityAnimation(Landroid/view/View;Z)V

    .line 3661
    :cond_3
    :goto_2
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_5

    .line 3662
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_13

    const/4 v8, 0x1

    .line 3663
    .local v8, "lightsOut":Z
    :goto_3
    if-eqz v8, :cond_4

    .line 3664
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 3665
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v0, :cond_4

    .line 3666
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 3670
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 3674
    .end local v8    # "lightsOut":Z
    :cond_5
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui_ex/statusbar/phone/BarTransitions;

    move-result-object v3

    const/high16 v4, 0x4000000

    const/high16 v5, 0x40000000    # 2.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui_ex/statusbar/phone/BarTransitions;II)I

    move-result v11

    .line 3678
    .local v11, "sbMode":I
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_14

    const/4 v9, -0x1

    .line 3681
    .local v9, "nbMode":I
    :goto_4
    const/4 v0, -0x1

    if-eq v11, v0, :cond_15

    const/4 v12, 0x1

    .line 3682
    .local v12, "sbModeChanged":Z
    :goto_5
    const/4 v0, -0x1

    if-eq v9, v0, :cond_16

    const/4 v10, 0x1

    .line 3683
    .local v10, "nbModeChanged":Z
    :goto_6
    const/4 v6, 0x0

    .line 3684
    .local v6, "checkBarModes":Z
    if-eqz v12, :cond_6

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    if-eq v11, v0, :cond_6

    .line 3685
    iput v11, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    .line 3686
    const/4 v6, 0x1

    .line 3688
    :cond_6
    if-eqz v10, :cond_7

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    if-eq v9, v0, :cond_7

    .line 3689
    iput v9, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    .line 3690
    const/4 v6, 0x1

    .line 3692
    :cond_7
    if-eqz v6, :cond_8

    .line 3693
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3695
    :cond_8
    if-nez v12, :cond_9

    if-eqz v10, :cond_b

    .line 3697
    :cond_9
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_a

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_17

    .line 3698
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->scheduleAutohide()V

    .line 3705
    :cond_b
    :goto_7
    const/high16 v0, 0x10000000

    and-int v0, v0, p1

    if-eqz v0, :cond_c

    .line 3706
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v3, -0x10000001

    and-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3708
    :cond_c
    const/high16 v0, 0x20000000

    and-int v0, v0, p1

    if-eqz v0, :cond_d

    .line 3709
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v3, -0x20000001

    and-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3713
    :cond_d
    if-eqz v13, :cond_e

    .line 3714
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3718
    :cond_e
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 3721
    .end local v6    # "checkBarModes":Z
    .end local v9    # "nbMode":I
    .end local v10    # "nbModeChanged":Z
    .end local v11    # "sbMode":I
    .end local v12    # "sbModeChanged":Z
    .end local v13    # "wasRecentsVisible":Z
    :cond_f
    return-void

    .line 3614
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3623
    .restart local v13    # "wasRecentsVisible":Z
    :cond_11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->changeStatusBarTint(Z)V

    goto/16 :goto_1

    .line 3651
    :cond_12
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isSystemHidingClock:Z

    if-nez v0, :cond_3

    .line 3652
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f0f0084

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startClockVisibilityAnimation(Landroid/view/View;Z)V

    goto/16 :goto_2

    .line 3662
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 3678
    .restart local v11    # "sbMode":I
    :cond_14
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui_ex/statusbar/phone/BarTransitions;

    move-result-object v3

    const/high16 v4, 0x8000000

    const/high16 v5, -0x80000000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui_ex/statusbar/phone/BarTransitions;II)I

    move-result v9

    goto/16 :goto_4

    .line 3681
    .restart local v9    # "nbMode":I
    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 3682
    .restart local v12    # "sbModeChanged":Z
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 3700
    .restart local v6    # "checkBarModes":Z
    .restart local v10    # "nbModeChanged":Z
    :cond_17
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    goto :goto_7
.end method

.method public setWindowState(II)V
    .locals 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3551
    if-nez p2, :cond_2

    move v0, v1

    .line 3552
    .local v0, "showing":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    if-eqz v3, :cond_0

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-eq v1, p2, :cond_0

    .line 3555
    iput p2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 3557
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v1, :cond_0

    .line 3558
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3561
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    if-eq v1, p2, :cond_1

    .line 3564
    iput p2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 3567
    :cond_1
    return-void

    .end local v0    # "showing":Z
    :cond_2
    move v0, v2

    .line 3551
    goto :goto_0
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1396
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->setZenMode(I)V

    .line 1397
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->setZenMode(I)V

    .line 1400
    :cond_0
    return-void
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 2

    .prologue
    .line 4582
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBackdrop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 5234
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5235
    const-string v0, "PhoneStatusBar"

    const-string v1, "showBackdrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 5238
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWallpaperView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 5239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5240
    invoke-direct {p0, v3, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5241
    return-void
.end method

.method public showBouncer()V
    .locals 3

    .prologue
    .line 5046
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5047
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBouncer State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5049
    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5050
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 5051
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsKeyguardWallpaperAnimating:Z

    if-nez v0, :cond_2

    .line 5052
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 5055
    :cond_2
    return-void
.end method

.method public showClock(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2743
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isClockShowPostponed:Z

    .line 2745
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    if-nez v3, :cond_0

    .line 2758
    :goto_0
    return-void

    .line 2746
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f0084

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2747
    .local v0, "clock":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2748
    move v1, p1

    .line 2749
    .local v1, "toShow":Z
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsHighlightHintRunning:Z

    if-eqz v3, :cond_1

    .line 2750
    const/4 v1, 0x0

    .line 2752
    :cond_1
    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2755
    .end local v1    # "toShow":Z
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsLatestClockVisible:Z

    .line 2757
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showDoNotDisturbOnStatusBar()V

    goto :goto_0

    .line 2752
    .restart local v1    # "toShow":Z
    :cond_3
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public showHighlightHintOnStatusBar()Z
    .locals 1

    .prologue
    .line 5787
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/NotificationData;->showNotificationOnStatusBar()Z

    move-result v0

    return v0
.end method

.method public showKeyguard()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4732
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    if-eqz v0, :cond_0

    .line 4733
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4734
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4735
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->runLaunchTransitionEndRunnable()V

    .line 4736
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    .line 4738
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 4739
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 4740
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 4741
    const-string v0, "PhoneStatusBar"

    const-string v1, "showKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4743
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 4744
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    if-nez v0, :cond_2

    .line 4749
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v4}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 4751
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->instantExpandNotificationsPanel()V

    .line 4752
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4753
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_3

    .line 4754
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 4755
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 4756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .line 4759
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/BackDropView;->setTranslationY(F)V

    .line 4760
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 4761
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWallpaperView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 4762
    return-void
.end method

.method protected showRecents(Z)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 5367
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5368
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5369
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->showRecents(Z)V

    .line 5370
    return-void
.end method

.method public showScreenPinningRequest()V
    .locals 1

    .prologue
    .line 5401
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5407
    :goto_0
    return-void

    .line 5406
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(Z)V

    goto :goto_0
.end method

.method public showScreenPinningRequest(Z)V
    .locals 1
    .param p1, "allowCancel"    # Z

    .prologue
    .line 5410
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenPinningRequest:Lcom/android/systemui_ex/recent/ScreenPinningRequest;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recent/ScreenPinningRequest;->showPrompt(Z)V

    .line 5411
    return-void
.end method

.method public showSearchPanel()V
    .locals 3

    .prologue
    .line 1482
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->showSearchPanel()V

    .line 1483
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1486
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/SearchPanelView;->setSystemUiVisibility(I)V

    .line 1488
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    .line 1489
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1491
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1492
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1494
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public declared-synchronized shrinkHighlightHintView()V
    .locals 3

    .prologue
    .line 5844
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 5845
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1, v2}, Lcom/android/systemui_ex/util/Utils;->getDisplayWidth(Landroid/content/Context;I)I

    move-result v0

    .line 5848
    .local v0, "screenWidth":I
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v0, :cond_0

    .line 5849
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    div-int/lit8 v2, v0, 0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5850
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 5851
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5854
    .end local v0    # "screenWidth":I
    :cond_0
    monitor-exit p0

    return-void

    .line 5844
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 701
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    .line 703
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 704
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    .line 707
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    .line 708
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$9;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$9;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->addCallback(Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;)V

    .line 715
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->start()V

    .line 717
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 722
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->addNavigationBar()V

    .line 725
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/CastController;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    .line 726
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 728
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 730
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "heads_up_notifications_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 733
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ticker_gets_heads_up"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 737
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    .line 738
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startKeyguard()V

    .line 740
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    .line 741
    const-class v0, Lcom/android/systemui_ex/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 742
    const-class v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 744
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setControllerUsers()V

    .line 749
    new-instance v0, Lcom/android/systemui_ex/recent/ScreenPinningRequest;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/recent/ScreenPinningRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenPinningRequest:Lcom/android/systemui_ex/recent/ScreenPinningRequest;

    .line 751
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.ctaSwitch.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsCta:Z

    .line 752
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z

    .prologue
    .line 2985
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.NotificationAppListSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isKeyguardShowingAndOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2987
    const/4 p2, 0x0

    .line 2989
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 2990
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z

    .prologue
    .line 4160
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4190
    :goto_0
    return-void

    .line 4161
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-static {v0, p1, v1}, Lcom/android/systemui_ex/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    .line 4163
    .local v3, "afterKeyguardGone":Z
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    .line 4164
    .local v2, "keyguardShowing":Z
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$39;

    move-object v1, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$39;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;ZZLandroid/content/Intent;Z)V

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    goto :goto_0
.end method

.method public startLaunchTransitionTimeout()V
    .locals 4

    .prologue
    .line 4824
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 4826
    return-void
.end method

.method protected tick(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 2
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "firstTime"    # Z

    .prologue
    .line 3879
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-nez v0, :cond_1

    .line 3901
    :cond_0
    :goto_0
    return-void

    .line 3882
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3885
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3888
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3894
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3896
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0xa0000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3898
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui_ex/statusbar/phone/Ticker;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/Ticker;->addEntry(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0
.end method

.method protected toggleRecents()V
    .locals 1

    .prologue
    .line 5383
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    xor-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5384
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5385
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->toggleRecents()V

    .line 5386
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .param p1, "showMenu"    # Z

    .prologue
    .line 3847
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3848
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    const-string v0, "showing"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " the MENU button"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3851
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    .line 3855
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setLightsOn(Z)V

    .line 3856
    :cond_2
    return-void

    .line 3848
    :cond_3
    const-string v0, "hiding"

    goto :goto_0
.end method

.method protected updateCarrierLabelVisibility(Z)V
    .locals 9
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2364
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    if-nez v3, :cond_1

    .line 2419
    :cond_0
    :goto_0
    return-void

    .line 2367
    :cond_1
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->SPEW:Z

    if-eqz v3, :cond_2

    .line 2368
    const-string v3, "PhoneStatusBar"

    const-string v5, "stackScrollerh=%d scrollh=%d carrierh=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x2

    iget v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabelHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    :cond_2
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f09000e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2380
    .local v0, "emergencyCallsShownElsewhere":Z
    const/4 v1, 0x0

    .line 2381
    .local v1, "isEmergencyOnly":Z
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2382
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->isEmergencyOnly()Z

    move-result v1

    .line 2387
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    if-nez v1, :cond_9

    :cond_4
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabelHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarHeaderHeight:I

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_9

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v3, v2, :cond_9

    .line 2394
    .local v2, "makeVisible":Z
    :goto_2
    if-nez p1, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    if-eq v3, v2, :cond_0

    .line 2395
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    .line 2396
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 2397
    const-string v5, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "making carrier label "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_a

    const-string v3, "visible"

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :cond_6
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2400
    if-eqz v2, :cond_7

    .line 2401
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2403
    :cond_7
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v2, :cond_b

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v2, :cond_c

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 2384
    .end local v2    # "makeVisible":Z
    :cond_8
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v1

    goto/16 :goto_1

    :cond_9
    move v2, v4

    .line 2387
    goto :goto_2

    .line 2397
    .restart local v2    # "makeVisible":Z
    :cond_a
    const-string v3, "invisible"

    goto :goto_3

    .line 2403
    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    :cond_c
    new-instance v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$25;

    invoke-direct {v3, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$25;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    goto :goto_5
.end method

.method updateDisplaySize()V
    .locals 2

    .prologue
    .line 4150
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4151
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4156
    return-void
.end method

.method public updateExpandedViewPos(I)V
    .locals 4
    .param p1, "thingy"    # I

    .prologue
    .line 4135
    sget-boolean v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->SPEW:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneStatusBar"

    const-string v2, "updateExpandedViewPos"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4138
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setMinimumHeight(I)V

    .line 4141
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4142
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4143
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4145
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 4146
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 4
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 1708
    const-string v1, "com.android.systemui"

    iget-object v2, p5, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1713
    :cond_0
    sget-boolean v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->SPEW:Z

    if-eqz v1, :cond_1

    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIcon slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " viewIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    .line 1716
    .local v0, "view":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1718
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    .line 1719
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    check-cast v0, Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    .line 1720
    .restart local v0    # "view":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1721
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    .line 1725
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->checkOverflow(I)V

    .line 1727
    return-void
.end method

.method public updateMediaMetaData(Z)V
    .locals 10
    .param p1, "metaDataChanged"    # Z

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 2597
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui_ex/statusbar/BackDropView;

    if-nez v5, :cond_1

    .line 2598
    const-string v3, "PhoneStatusBar"

    const-string v4, "called too early, backdrop == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    :cond_0
    :goto_0
    return-void

    .line 2603
    :cond_1
    const-string v5, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DEBUG_MEDIA: updating album art for notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " metadata="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " metaDataChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    const/4 v0, 0x0

    .line 2610
    .local v0, "artWorkBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v5, :cond_2

    .line 2611
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v6, "android.media.metadata.ART"

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2612
    if-nez v0, :cond_2

    .line 2613
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v6, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2618
    :cond_2
    if-eqz v0, :cond_4

    move v2, v3

    .line 2619
    .local v2, "hasArtWork":Z
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardShowingMedia:Z

    .line 2621
    if-nez v2, :cond_5

    .line 2687
    :cond_3
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackDropMedia:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eq v3, v9, :cond_0

    .line 2689
    const-string v3, "PhoneStatusBar"

    const-string v4, "DEBUG_MEDIA: Fading out album artwork"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackDropMedia:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2693
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2694
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2695
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 2711
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    if-eqz v3, :cond_0

    .line 2712
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackDropMedia:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .end local v2    # "hasArtWork":Z
    :cond_4
    move v2, v4

    .line 2618
    goto :goto_1

    .line 2621
    .restart local v2    # "hasArtWork":Z
    :cond_5
    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v5, v3, :cond_6

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 2625
    :cond_6
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackDropMedia:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_7

    .line 2626
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackDropMedia:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2630
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackDropMedia:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2631
    const/4 p1, 0x1

    .line 2633
    const-string v3, "PhoneStatusBar"

    const-string v5, "DEBUG_MEDIA: Fading in album artwork"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :cond_7
    if-eqz p1, :cond_0

    .line 2638
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 2639
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2640
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2641
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    if-eqz v3, :cond_8

    .line 2642
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 2644
    :cond_8
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2645
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2659
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2660
    const-string v3, "PhoneStatusBar"

    const-string v4, "DEBIG_MEDIA: set album artwork"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2672
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEBUG_MEDIA: Crossfading album artwork from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 2647
    :cond_9
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1920
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 1921
    return-void
.end method

.method protected updateNotifications()V
    .locals 3

    .prologue
    .line 2153
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    if-nez v1, :cond_1

    .line 2170
    :cond_0
    :goto_0
    return-void

    .line 2155
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationData;->filterAndSort()V

    .line 2157
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    .line 2158
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    .line 2160
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showHighlightHintOnStatusBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2161
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 2163
    .local v0, "n":Landroid/app/Notification;
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideHighlightHintView:Z

    if-nez v1, :cond_0

    .line 2164
    const-string v1, "PhoneStatusBar"

    const-string v2, "updateNotifications:: showHighlightHintOnStatusBar() is true, and !mTempHideHighlightHintView, show the view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showHighlightHintViewOnStatusBar()V

    goto :goto_0

    .line 2168
    .end local v0    # "n":Landroid/app/Notification;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hideHighlightHintOnStatusBar()V

    goto :goto_0
.end method

.method updateResources()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4404
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 4405
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/qs/QSPanel;->updateResources()V

    .line 4408
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 4409
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 4412
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_1

    .line 4413
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateResources()V

    .line 4416
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_2

    .line 4417
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->updateResources()V

    .line 4420
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_3

    .line 4421
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;->updateResources()V

    .line 4424
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 4425
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4429
    :cond_4
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_6

    .line 4430
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setDialIgnoreViewVisibility(ZZ)V

    .line 4437
    :cond_5
    :goto_0
    return-void

    .line 4432
    :cond_6
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHighlightHintView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showHighlightHintOnStatusBar()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4433
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setDialIgnoreViewVisibility(ZZ)V

    .line 4434
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setDialIgnoreViewVisibility(ZZ)V

    goto :goto_0
.end method

.method protected updateRowStates()V
    .locals 1

    .prologue
    .line 2358
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateRowStates()V

    .line 2359
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->notifyVisibleChildrenChanged()V

    .line 2360
    return-void
.end method

.method protected updateSearchPanel()V
    .locals 2

    .prologue
    .line 1474
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateSearchPanel()V

    .line 1475
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setDelegateView(Landroid/view/View;)V

    .line 1478
    :cond_0
    return-void
.end method

.method public updateStackScrollerState(Z)V
    .locals 6
    .param p1, "goingToFullShade"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4967
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    if-nez v4, :cond_1

    .line 4977
    :cond_0
    :goto_0
    return-void

    .line 4968
    :cond_1
    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 4969
    .local v1, "onKeyguard":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setHideSensitive(ZZ)V

    .line 4970
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 4971
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setExpandingEnabled(Z)V

    .line 4972
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 4973
    .local v0, "activatedChild":Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V

    .line 4974
    if-eqz v0, :cond_0

    .line 4975
    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_0

    .end local v0    # "activatedChild":Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;
    .end local v1    # "onKeyguard":Z
    :cond_2
    move v1, v3

    .line 4968
    goto :goto_1

    .restart local v1    # "onKeyguard":Z
    :cond_3
    move v2, v3

    .line 4971
    goto :goto_2
.end method

.method public userActivity()V
    .locals 2

    .prologue
    .line 4980
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4981
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 4983
    :cond_0
    return-void
.end method

.method public userSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 4361
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 4362
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 4363
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 4364
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setControllerUsers()V

    .line 4365
    return-void
.end method

.method vibrate()V
    .locals 4

    .prologue
    .line 4550
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 4552
    .local v0, "vib":Landroid/os/Vibrator;
    const-wide/16 v2, 0xfa

    sget-object v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 4553
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 4493
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mVisible:Z

    .line 4494
    if-eqz p1, :cond_0

    .line 4495
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startNotificationLoggingIfScreenOnAndVisible()V

    .line 4499
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 4500
    return-void

    .line 4497
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->stopNotificationLogging()V

    goto :goto_0
.end method

.method public wakeUpIfDozing(JLandroid/view/MotionEvent;)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5419
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5420
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5421
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 5422
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    .line 5423
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOnTouchLocation:Landroid/graphics/PointF;

    .line 5424
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 5426
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
