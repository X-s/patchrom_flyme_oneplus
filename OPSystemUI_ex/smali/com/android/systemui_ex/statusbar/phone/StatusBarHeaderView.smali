.class public Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;
.super Landroid/widget/RelativeLayout;
.source "StatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui_ex/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;
.implements Lcom/android/systemui_ex/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;
    }
.end annotation


# instance fields
.field private isOpOneSimMissed:Z

.field private isOpTwoSimMissed:Z

.field private mActivityStarter:Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

.field private mAlarmShowing:Z

.field private mAlarmStatus:Landroid/widget/TextView;

.field private mAmPm:Landroid/widget/TextView;

.field private mAvatarCollapsedScaleFactor:F

.field private mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mCaptureValues:Z

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClock:Landroid/view/View;

.field private mClockCollapsedScaleFactor:F

.field private mClockCollapsedSize:I

.field private mClockExpandedSize:I

.field private mClockMarginBottomCollapsed:I

.field private mClockMarginBottomExpanded:I

.field private mCollapsedHeight:I

.field private final mCollapsedValues:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mCurrentT:F

.field private final mCurrentValues:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mDateCollapsed:Landroid/widget/TextView;

.field private mDateExpanded:Landroid/widget/TextView;

.field private mDateGroup:Landroid/view/View;

.field private mEmergencyCallsOnly:Landroid/widget/TextView;

.field private mExpanded:Z

.field private mExpandedHeight:I

.field private final mExpandedValues:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mIsCta:Z

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserCollapsedMargin:I

.field private mMultiUserExpandedMargin:I

.field private mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

.field private mMultiUserSwitchWidthCollapsed:I

.field private mMultiUserSwitchWidthExpanded:I

.field private mNetOperator1:Landroid/widget/TextView;

.field private mNetOperator2:Landroid/widget/TextView;

.field private mNetOperatorName:[Ljava/lang/String;

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;

.field private mOperator1:Landroid/widget/TextView;

.field private mOperator2:Landroid/widget/TextView;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

.field private mQsDetailHeader:Landroid/view/View;

.field private mQsDetailHeaderProgress:Landroid/widget/ImageView;

.field private mQsDetailHeaderSwitch:Landroid/widget/Switch;

.field private mQsDetailHeaderTitle:Landroid/widget/TextView;

.field private final mQsPanelCallback:Lcom/android/systemui_ex/qs/QSPanel$Callback;

.field private mSettingsButton:Landroid/view/View;

.field private mShowEmergencyCallsOnly:Z

.field private mShowingDetail:Z

.field private mSignalCluster:Landroid/view/View;

.field private mSignalClusterDetached:Z

.field private mSystemIcons:Landroid/widget/LinearLayout;

.field private mSystemIconsContainer:Landroid/view/ViewGroup;

.field private mSystemIconsSuperContainer:Landroid/view/View;

.field private mTaskManagerButton:Landroid/view/View;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mIsCta:Z

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 129
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 130
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 844
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsPanelCallback:Lcom/android/systemui_ex/qs/QSPanel$Callback;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.ctaSwitch.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mIsCta:Z

    .line 140
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;
    .param p1, "x1"    # F

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setClipping(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private applyAlpha(Landroid/view/View;F)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 717
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 721
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 723
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 724
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private applyLayoutValues(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;)V
    .locals 5
    .param p1, "values"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 729
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 730
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 731
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 736
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 737
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 738
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarX:F

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 739
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarY:F

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 740
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 741
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 745
    :goto_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 746
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_6

    .line 747
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_5

    .line 748
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 754
    :goto_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 766
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->taskManagerTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 770
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    if-nez v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->alarmStatusAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 775
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 776
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 777
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->taskManagerAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 779
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 780
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v0, :cond_3

    .line 781
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 782
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 784
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    .line 785
    return-void

    .line 743
    :cond_4
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 751
    :cond_5
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 757
    :cond_6
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 759
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_2
.end method

.method private captureLayoutValues(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;)V
    .locals 4
    .param p1, "target"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 679
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    .line 680
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    .line 681
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    .line 682
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    .line 683
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->alarmStatusAlpha:F

    .line 684
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    .line 685
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    .line 686
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    .line 687
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarX:F

    .line 688
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarY:F

    .line 689
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 690
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    .line 696
    :goto_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    .line 697
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    .line 698
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->taskManagerAlpha:F

    .line 699
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsAlpha:F

    .line 700
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsTranslation:F

    .line 703
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 704
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_3
    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->taskManagerTranslation:F

    .line 708
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    .line 709
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v0, :cond_2

    const/high16 v2, 0x42b40000    # 90.0f

    :cond_2
    iput v2, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsRotation:F

    .line 710
    return-void

    .line 679
    :cond_3
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    goto/16 :goto_0

    .line 693
    :cond_4
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    goto :goto_1

    .line 700
    :cond_5
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_2

    .line 704
    :cond_6
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_3
.end method

.method private getAlphaForVisibility(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 713
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimMissed(I)Z
    .locals 5
    .param p1, "slotid"    # I

    .prologue
    const/4 v2, 0x1

    .line 464
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mPhone:Landroid/telephony/TelephonyManager;

    .line 465
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 466
    .local v0, "simState":I
    if-ne v0, v2, :cond_0

    .line 467
    const-string v1, "StatusBarHeaderView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slotid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is ABSENT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 470
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadDimens()V
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserExpandedMargin:I

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserCollapsedMargin:I

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomExpanded:I

    .line 292
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateClockCollapsedMargin()V

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthCollapsed:I

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthExpanded:I

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    .line 302
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    .line 304
    return-void
.end method

.method private reattachSignalCluster()V
    .locals 3

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 400
    return-void
.end method

.method private requestCaptureValues()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->requestLayout()V

    .line 280
    return-void
.end method

.method private setClipping(F)V
    .locals 5
    .param p1, "height"    # F

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    float-to-int v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 610
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 611
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->invalidateOutline()V

    .line 612
    return-void
.end method

.method private startBatteryActivity()V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 646
    return-void
.end method

.method private startSettingsActivity()V
    .locals 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NotificationAppListSettings"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 641
    return-void
.end method

.method private updateAmPmTranslation()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 447
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 448
    .local v0, "rtl":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getScaleX()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 449
    return-void

    .line 447
    .end local v0    # "rtl":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 448
    .restart local v0    # "rtl":Z
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private updateAvatarScale()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 428
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method

.method private updateClickTargets()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->setFocusable(Z)V

    .line 550
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 551
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 552
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 553
    return-void

    .line 552
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClockCollapsedMargin()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 268
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0d009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 269
    .local v2, "padding":I
    const v4, 0x7f0d009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 271
    .local v1, "largePadding":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v4, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v6

    const v5, 0x3e999998    # 0.29999995f

    div-float v0, v4, v5

    .line 273
    .local v0, "largeFactor":F
    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomCollapsed:I

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->requestLayout()V

    .line 275
    return-void
.end method

.method private updateClockLp()V
    .locals 3

    .prologue
    .line 556
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomExpanded:I

    .line 559
    .local v1, "marginBottom":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 560
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eq v1, v2, :cond_0

    .line 561
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 562
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    :cond_0
    return-void

    .line 556
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "marginBottom":I
    :cond_1
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomCollapsed:I

    goto :goto_0
.end method

.method private updateClockScale()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 438
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 443
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    .line 444
    return-void

    .line 438
    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private updateHeights()V
    .locals 3

    .prologue
    .line 359
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_1

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 360
    .local v0, "height":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 361
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_0

    .line 362
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 363
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    :cond_0
    return-void

    .line 359
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    goto :goto_0
.end method

.method private updateLayoutValues(F)V
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    if-eqz v0, :cond_0

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;->interpoloate(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;F)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->applyLayoutValues(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    goto :goto_0
.end method

.method private updateListeners()V
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mListening:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 420
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;->addStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    .line 425
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 423
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;->removeStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    goto :goto_0
.end method

.method private updateMultiUserSwitch()V
    .locals 4

    .prologue
    .line 569
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v3, :cond_2

    .line 570
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserExpandedMargin:I

    .line 571
    .local v1, "marginEnd":I
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthExpanded:I

    .line 576
    .local v2, "width":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 577
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v3, v2, :cond_1

    .line 578
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 579
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 580
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    :cond_1
    return-void

    .line 573
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "marginEnd":I
    .end local v2    # "width":I
    :cond_2
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserCollapsedMargin:I

    .line 574
    .restart local v1    # "marginEnd":I
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthCollapsed:I

    .restart local v2    # "width":I
    goto :goto_0
.end method

.method private updateSignalClusterDetachment()V
    .locals 3

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    .line 387
    .local v0, "detached":Z
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    if-eq v0, v1, :cond_0

    .line 388
    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 394
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    .line 395
    return-void

    .line 391
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->reattachSignalCluster()V

    goto :goto_0
.end method

.method private updateSystemIconsLayoutParams()V
    .locals 4

    .prologue
    .line 403
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 404
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    .line 406
    .local v0, "baseId":I
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v3, :cond_1

    move v2, v0

    .line 415
    .local v2, "rule":I
    :goto_1
    return-void

    .line 404
    .end local v0    # "baseId":I
    .end local v2    # "rule":I
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_0

    .line 406
    .restart local v0    # "baseId":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getId()I

    move-result v2

    goto :goto_1
.end method

.method private updateVisibilities()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 375
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateSignalClusterDetachment()V

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    return-void

    :cond_2
    move v0, v2

    .line 375
    goto :goto_0

    .line 377
    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 382
    goto :goto_2
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 676
    return-void
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    return v0
.end method

.method public getExpandedHeight()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    return v0
.end method

.method isMSim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 144
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

.method public onBatteryLevelChanged(IZZ)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0165

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 626
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->startSettingsActivity()V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 628
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->startBatteryActivity()V

    goto :goto_0

    .line 629
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 631
    .local v0, "showIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 632
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

    invoke-interface {v1, v0}, Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v5, 0x7f0d00a3

    const v4, 0x7f0d00a2

    const v3, 0x7f0d0048

    const v2, 0x7f0d00a5

    .line 244
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    const v1, 0x7f0d00ba

    invoke-static {v0, v1}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    const v1, 0x7f0d00a4

    invoke-static {v0, v1}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 251
    const v0, 0x1020016

    invoke-static {p0, v0, v3}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 252
    const v0, 0x1020017

    invoke-static {p0, v0, v3}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 254
    const v0, 0x7f0f0149

    invoke-static {p0, v0, v5}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    const v1, 0x10403dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    .line 260
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    .line 262
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    .line 263
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateClockCollapsedMargin()V

    .line 264
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 150
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 151
    const v1, 0x7f0f00a1

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    .line 152
    const v1, 0x7f0f00a2

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    .line 153
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v1, 0x7f0f014f

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    .line 156
    const v1, 0x7f0f0151

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mOperator1:Landroid/widget/TextView;

    .line 160
    const v1, 0x7f0f0152

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mOperator2:Landroid/widget/TextView;

    .line 163
    const v1, 0x7f0f0153

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator1:Landroid/widget/TextView;

    .line 164
    const v1, 0x7f0f0154

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator2:Landroid/widget/TextView;

    .line 166
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mOperator1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mOperator2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->isMSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator2:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 176
    .local v0, "numPhones":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperatorName:[Ljava/lang/String;

    .line 177
    const v1, 0x7f0f0084

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    .line 178
    const v1, 0x7f0f0147

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    .line 179
    const v1, 0x7f0f0148

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    .line 180
    const v1, 0x7f0f009c

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    .line 181
    const v1, 0x7f0f009d

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 182
    const v1, 0x7f0f0155

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    .line 183
    const v1, 0x7f0f0156

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    .line 184
    const v1, 0x7f0f014c

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    .line 185
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const v1, 0x7f0f014d

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mTaskManagerButton:Landroid/view/View;

    .line 189
    :cond_0
    const v1, 0x7f0f0123

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    .line 190
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 191
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 192
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const v2, 0x1020017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    .line 193
    const v1, 0x7f0f0158

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    .line 194
    const v1, 0x7f0f014e

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    .line 195
    const v1, 0x7f0f0030

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    .line 196
    const v1, 0x7f0f0157

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    .line 197
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v1, 0x7f0f00a4

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    .line 199
    const v1, 0x7f0f00a3

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 200
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->loadDimens()V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    .line 202
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    .line 203
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateAvatarScale()V

    .line 204
    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 218
    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$2;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 224
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 225
    return-void

    .line 172
    .end local v0    # "numPhones":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 229
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 230
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    if-eqz v0, :cond_0

    .line 231
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->captureLayoutValues(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    .line 236
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    .line 237
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCurrentT:F

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateLayoutValues(F)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 240
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->captureLayoutValues(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    goto :goto_0
.end method

.method public onNetworkStateChangedBySlotId(ILjava/lang/String;)V
    .locals 5
    .param p1, "slotid"    # I
    .param p2, "operatorName"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0c0013

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 495
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperatorName:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 498
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mIsCta:Z

    if-eqz v0, :cond_2

    .line 499
    if-nez p1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    if-ne v3, p1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 508
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->isOpOneSimMissed:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->isOpTwoSimMissed:Z

    if-eqz v0, :cond_3

    .line 509
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 511
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->isOpOneSimMissed:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->isOpTwoSimMissed:Z

    if-nez v0, :cond_4

    .line 512
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperatorName:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperatorName:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 515
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->isOpOneSimMissed:Z

    if-eqz v0, :cond_5

    .line 516
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperatorName:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 519
    :cond_5
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperatorName:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator2:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 2
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 539
    if-eqz p1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    .line 543
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 544
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 545
    return-void

    .line 542
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPowerSaveChanged()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public onSimStateChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "operatorName"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNetOperator1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    return-void
.end method

.method public onSimStateChangedBySlotId(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotid"    # I
    .param p2, "operatorName"    # Ljava/lang/String;

    .prologue
    .line 475
    if-nez p1, :cond_2

    .line 476
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->isSimMissed(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->isOpOneSimMissed:Z

    .line 477
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->isOpOneSimMissed:Z

    if-nez v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mOperator1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mOperator1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 482
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 483
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->isSimMissed(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->isOpTwoSimMissed:Z

    .line 484
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->isOpTwoSimMissed:Z

    if-nez v0, :cond_3

    .line 485
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mOperator2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mOperator2:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setActivityStarter(Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

    .line 308
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui_ex/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    .line 312
    const v0, 0x7f0f002f

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/BatteryMeterView;->setBatteryController(Lcom/android/systemui_ex/statusbar/policy/BatteryController;)V

    .line 313
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 336
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 337
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    .line 338
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 341
    :cond_0
    return-void

    .line 336
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpansion(F)V
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 585
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v1, :cond_0

    .line 586
    const/4 p1, 0x0

    .line 588
    :cond_0
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCurrentT:F

    .line 589
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 590
    .local v0, "height":F
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 591
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v0, v1

    .line 593
    :cond_1
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 594
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    int-to-float v0, v1

    .line 596
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setClipping(F)V

    .line 597
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateLayoutValues(F)V

    .line 598
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mListening:Z

    .line 332
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateListeners()V

    goto :goto_0
.end method

.method public setNextAlarmController(Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;)V
    .locals 0
    .param p1, "nextAlarmController"    # Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui_ex/statusbar/policy/NextAlarmController;

    .line 317
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui_ex/qs/QSPanel;)V
    .locals 2
    .param p1, "qsp"    # Lcom/android/systemui_ex/qs/QSPanel;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    .line 650
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQsPanelCallback:Lcom/android/systemui_ex/qs/QSPanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/qs/QSPanel;->setCallback(Lcom/android/systemui_ex/qs/QSPanel$Callback;)V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui_ex/qs/QSPanel;)V

    .line 654
    return-void
.end method

.method public setShowEmergencyCallsOnly(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 662
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mShowEmergencyCallsOnly:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 663
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 664
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mShowEmergencyCallsOnly:Z

    .line 665
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 667
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 670
    :cond_0
    return-void

    .line 662
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserInfoController(Lcom/android/systemui_ex/statusbar/policy/UserInfoController;)V
    .locals 1
    .param p1, "userInfoController"    # Lcom/android/systemui_ex/statusbar/policy/UserInfoController;

    .prologue
    .line 615
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$3;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui_ex/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui_ex/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 621
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x1

    return v0
.end method

.method public updateEverything()V
    .locals 2

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateHeights()V

    .line 345
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    .line 346
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateSystemIconsLayoutParams()V

    .line 347
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateClickTargets()V

    .line 348
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateMultiUserSwitch()V

    .line 349
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui_ex/qs/QSPanel;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/qs/QSPanel;->setExpanded(Z)V

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    .line 353
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateAvatarScale()V

    .line 354
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateClockLp()V

    .line 355
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 356
    return-void
.end method
