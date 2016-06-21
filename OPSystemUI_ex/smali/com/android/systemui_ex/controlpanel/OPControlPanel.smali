.class public Lcom/android/systemui_ex/controlpanel/OPControlPanel;
.super Lcom/android/systemui_ex/SystemUI;
.source "OPControlPanel.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;
    }
.end annotation


# static fields
.field private static mGestureMoveY:F


# instance fields
.field private final ACTION_SETTINGS_HIDE_CONTROL_CENTER:Ljava/lang/String;

.field private final PHONE_STATE_KEY:Ljava/lang/String;

.field private final PHONE_STATE_RINGING:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private filter:Landroid/content/IntentFilter;

.field private mAlphaDelta:F

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAppIntent:Landroid/content/Intent;

.field private mBackgroundMask:Landroid/view/View;

.field private mDetailAnimator:Landroid/animation/ValueAnimator;

.field private mDetailCallback:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;

.field private mDetailContentCallback:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;

.field private mDetailPanel:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

.field private mDetailPanelBackgroundMask:Landroid/view/View;

.field private mDetailPanelCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

.field private mDetailView:Landroid/view/View;

.field private mDisplayHeight:I

.field private mEndPanelY:F

.field private mFlingVelocity:F

.field private mGestureAreaHeight:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureParams:Landroid/view/WindowManager$LayoutParams;

.field mGestureTouchListener:Landroid/view/View$OnTouchListener;

.field private mGestureView:Landroid/widget/FrameLayout;

.field private mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

.field private mHandler:Landroid/os/Handler;

.field private mHintLp:Landroid/view/WindowManager$LayoutParams;

.field private mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

.field mHintViewCallback:Lcom/android/systemui_ex/controlpanel/HintView$Callback;

.field private mIsDetailPanelShow:Z

.field private mIsWizard:Z

.field private mKeyguardShow:Z

.field private mOberver:Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;

.field private mOberverHandler:Landroid/os/Handler;

.field private mPanelLayout:Landroid/widget/FrameLayout;

.field private mPanelParams:Landroid/view/WindowManager$LayoutParams;

.field private mPanelStatus:I

.field mPanelTouchListener:Landroid/view/View$OnTouchListener;

.field private mQSCloseThreadHold:F

.field private mQSCloseY:F

.field private mQSOpenThreadHold:F

.field private mQSOpenY:F

.field private mQSPanelHeight:I

.field mQSTileCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

.field mQSTileHostCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStartPanelY:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureMoveY:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui_ex/SystemUI;-><init>()V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;

    .line 60
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureAreaHeight:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAlphaDelta:F

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsWizard:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mKeyguardShow:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsDetailPanelShow:Z

    .line 95
    iput v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I

    .line 252
    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureTouchListener:Landroid/view/View$OnTouchListener;

    .line 552
    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelTouchListener:Landroid/view/View$OnTouchListener;

    .line 680
    const-string v0, "com.android.settings.intent.action.HIDE_CONTROL_CENTER"

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->ACTION_SETTINGS_HIDE_CONTROL_CENTER:Ljava/lang/String;

    .line 681
    const-string v0, "state"

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->PHONE_STATE_KEY:Ljava/lang/String;

    .line 682
    const-string v0, "RINGING"

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->PHONE_STATE_RINGING:Ljava/lang/String;

    .line 685
    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$10;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$10;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 747
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mOberverHandler:Landroid/os/Handler;

    .line 748
    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mOberverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mOberver:Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;

    .line 868
    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$11;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$11;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSTileHostCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;

    .line 887
    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSTileCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    .line 936
    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$13;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$13;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintViewCallback:Lcom/android/systemui_ex/controlpanel/HintView$Callback;

    .line 957
    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHandler:Landroid/os/Handler;

    .line 999
    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$15;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$15;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailContentCallback:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;

    .line 1008
    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$16;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$16;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    .line 1019
    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$17;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$17;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailCallback:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mFlingVelocity:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSPanelHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mFlingVelocity:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # F

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->getOffsetY(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAlphaDelta:F

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAlphaDelta:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->onHideDetailPanel()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # F

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->updateStatus(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenThreadHold:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;FFFFFJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # J

    .prologue
    .line 49
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->drawerAnimation(FFFFFJ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsDetailPanelShow:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsDetailPanelShow:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mStartPanelY:F

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mStartPanelY:F

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # F

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->getNavOffsetY(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mEndPanelY:F

    return v0
.end method

.method static synthetic access$2702(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mEndPanelY:F

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseThreadHold:F

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui_ex/controlpanel/OPControlPanel;FFFFJZ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # J
    .param p7, "x6"    # Z

    .prologue
    .line 49
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->showDetailAnimation(FFFFJZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->updateWizardEnable()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I

    return p1
.end method

.method static synthetic access$3102(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAppIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Lcom/android/systemui_ex/controlpanel/HintView;)Lcom/android/systemui_ex/controlpanel/HintView;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # Lcom/android/systemui_ex/controlpanel/HintView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintLp:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintLp:Landroid/view/WindowManager$LayoutParams;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/systemui_ex/controlpanel/OPControlPanel;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # [I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->setHintView([I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->showHintView()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hideHintView()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanel:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$600()F
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureMoveY:F

    return v0
.end method

.method static synthetic access$602(F)F
    .locals 0
    .param p0, "x0"    # F

    .prologue
    .line 49
    sput p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureMoveY:F

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsWizard:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mKeyguardShow:Z

    return v0
.end method

.method private drawerAnimation(FFFFFJ)V
    .locals 8
    .param p1, "sY"    # F
    .param p2, "eY"    # F
    .param p3, "disY"    # F
    .param p4, "startAlpha"    # F
    .param p5, "disAlpha"    # F
    .param p6, "duration"    # J

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 426
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-gez v0, :cond_1

    .line 427
    const-wide/16 p6, 0x0

    .line 430
    :cond_1
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 431
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    .line 435
    .local v2, "startY":F
    :goto_1
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    .line 436
    iget v6, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    .line 440
    .local v6, "endY":F
    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;

    .line 441
    iget-object v7, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;

    move-object v1, p0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;FFFF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui_ex/controlpanel/OPControlPanel$6;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$6;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 472
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 473
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 433
    .end local v2    # "startY":F
    .end local v6    # "endY":F
    :cond_2
    move v2, p1

    .restart local v2    # "startY":F
    goto :goto_1

    .line 438
    :cond_3
    move v6, p2

    .restart local v6    # "endY":F
    goto :goto_2

    .line 440
    :array_0
    .array-data 4
        0x0
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method private getGestureAreaHeight(I)I
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/16 v1, 0xa

    const/16 v2, 0x19

    .line 225
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->getDeviceTag()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "project":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v1

    .line 230
    :cond_1
    const-string v3, "14001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 231
    goto :goto_0

    .line 232
    :cond_2
    const-string v3, "14049"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 233
    goto :goto_0

    .line 234
    :cond_3
    const-string v3, "15055"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 239
    goto :goto_0
.end method

.method private getNavOffsetY(F)F
    .locals 2
    .param p1, "moveY"    # F

    .prologue
    .line 361
    const/high16 v1, 0x428c0000    # 70.0f

    sub-float v0, p1, v1

    .line 362
    .local v0, "offsetY":F
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 363
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    .line 368
    :cond_0
    :goto_0
    return v0

    .line 364
    :cond_1
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 365
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    goto :goto_0
.end method

.method private getOffsetY(F)F
    .locals 3
    .param p1, "moveY"    # F

    .prologue
    .line 372
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDisplayHeight:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->getOpenOffset(F)F

    move-result v2

    sub-float v0, v1, v2

    .line 373
    .local v0, "offsetY":F
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 374
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    .line 379
    :cond_0
    :goto_0
    return v0

    .line 375
    :cond_1
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 376
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    goto :goto_0
.end method

.method private getOpenOffset(F)F
    .locals 6
    .param p1, "moveY"    # F

    .prologue
    .line 383
    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    add-float v2, v3, p1

    .line 384
    .local v2, "posY":F
    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenThreadHold:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    .line 385
    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    sub-float v0, v3, v2

    .line 386
    .local v0, "numerator":F
    const/high16 v3, 0x42fa0000    # 125.0f

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    iget v5, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenThreadHold:F

    sub-float/2addr v4, v5

    div-float v1, v3, v4

    .line 392
    .end local v0    # "numerator":F
    .local v1, "openOffsetY":F
    :goto_0
    return v1

    .line 387
    .end local v1    # "openOffsetY":F
    :cond_0
    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenThreadHold:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 388
    const/high16 v1, 0x42fa0000    # 125.0f

    .restart local v1    # "openOffsetY":F
    goto :goto_0

    .line 390
    .end local v1    # "openOffsetY":F
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "openOffsetY":F
    goto :goto_0
.end method

.method private hideHintView()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/HintView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    .line 997
    :cond_0
    return-void
.end method

.method private hidePanelLayout()V
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->updateStatus(F)V

    .line 745
    return-void
.end method

.method private onHideDetailPanel()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsDetailPanelShow:Z

    .line 545
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanel:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->clearDetailContent()V

    .line 546
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 548
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 550
    return-void
.end method

.method private resetGesturePosY()V
    .locals 1

    .prologue
    .line 865
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureMoveY:F

    .line 866
    return-void
.end method

.method private setHintView([I)V
    .locals 4
    .param p1, "resIds"    # [I

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui_ex/controlpanel/HintView;->setHintContent(III)V

    .line 948
    :cond_0
    return-void
.end method

.method private showDetailAnimation(FFFFJZ)V
    .locals 9
    .param p1, "sY"    # F
    .param p2, "eY"    # F
    .param p3, "startAlpha"    # F
    .param p4, "disAlpha"    # F
    .param p5, "duration"    # J
    .param p7, "hideBackgroundMask"    # Z

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 482
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gez v0, :cond_1

    .line 483
    const-wide/16 p5, 0x0

    .line 486
    :cond_1
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 487
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    .line 491
    .local v2, "startY":F
    :goto_1
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    .line 492
    iget v7, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    .line 496
    .local v7, "endY":F
    :goto_2
    sub-float v3, v7, v2

    .line 497
    .local v3, "disY":F
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailAnimator:Landroid/animation/ValueAnimator;

    .line 498
    iget-object v8, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;

    move-object v1, p0

    move/from16 v4, p7

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;FFZFF)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;

    invoke-direct {v1, p0, v7}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 540
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 489
    .end local v2    # "startY":F
    .end local v3    # "disY":F
    .end local v7    # "endY":F
    :cond_2
    move v2, p1

    .restart local v2    # "startY":F
    goto :goto_1

    .line 494
    :cond_3
    move v7, p2

    .restart local v7    # "endY":F
    goto :goto_2

    .line 497
    nop

    :array_0
    .array-data 4
        0x0
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method private showHintView()V
    .locals 3

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/HintView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 953
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/HintView;->setVisibility(I)V

    .line 955
    :cond_0
    return-void
.end method

.method private updateResources(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    .line 811
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui_ex/util/Utils;->getDisplayHeight(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDisplayHeight:I

    .line 812
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    invoke-virtual {v1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->getQSPanelHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSPanelHeight:I

    .line 813
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setBrightnessBarHeight(I)V

    .line 814
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSPanelHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    .line 815
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDisplayHeight:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    .line 816
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenThreadHold:F

    .line 817
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseThreadHold:F

    .line 818
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->getGestureAreaHeight(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureAreaHeight:I

    .line 820
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureView:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDisplayHeight:I

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureAreaHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setY(F)V

    .line 824
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 825
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_1

    .line 826
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSPanelHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 828
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 829
    if-eqz v0, :cond_2

    .line 830
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSPanelHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 832
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_3

    .line 833
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureAreaHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 834
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDisplayHeight:I

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureAreaHeight:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 836
    :cond_3
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailView:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 837
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 838
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanel:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    invoke-virtual {v1}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->updateResources()V

    .line 839
    return-void
.end method

.method private updateStatus(F)V
    .locals 3
    .param p1, "positionY"    # F

    .prologue
    const/4 v2, 0x0

    .line 396
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 397
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I

    .line 398
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setTranslationY(F)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 400
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setListening(Z)V

    .line 418
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 419
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setListening(Z)V

    goto :goto_0

    .line 408
    :cond_2
    iput v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I

    .line 409
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setTranslationY(F)V

    .line 411
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAppIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAppIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Utils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAppIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 414
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAppIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAppIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateWizardEnable()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 776
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsWizard:Z

    .line 779
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWizardEnable: mIsWizardHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsWizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 676
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mOberver:Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;->register(Z)V

    .line 677
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 678
    return-void
.end method

.method public handleHideControlPanel()V
    .locals 2

    .prologue
    .line 882
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 883
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 885
    :cond_0
    return-void
.end method

.method public hidePanelView(Z)V
    .locals 21
    .param p1, "showAnimation"    # Z

    .prologue
    .line 727
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->resetGesturePosY()V

    .line 729
    if-eqz p1, :cond_1

    .line 730
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    .line 731
    .local v3, "startY":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    .local v4, "endY":F
    sub-float v5, v4, v3

    .line 732
    .local v5, "disY":F
    const v20, 0x3f19999a    # 0.6f

    .local v20, "startAlpha":F
    const/16 v19, 0x0

    .local v19, "endAlpha":F
    const v10, -0x40e66666    # -0.6f

    .line 733
    .local v10, "disAlpha":F
    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F

    sub-float/2addr v6, v7

    div-float/2addr v2, v6

    float-to-long v8, v2

    .line 734
    .local v8, "duration":J
    const v6, 0x3f19999a    # 0.6f

    const v7, -0x40e66666    # -0.6f

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->drawerAnimation(FFFFFJ)V

    .line 735
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsDetailPanelShow:Z

    if-eqz v2, :cond_0

    .line 736
    const v14, 0x3f19999a    # 0.6f

    const v15, -0x40e66666    # -0.6f

    const/16 v18, 0x1

    move-object/from16 v11, p0

    move v12, v3

    move v13, v4

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->showDetailAnimation(FFFFJZ)V

    .line 741
    .end local v3    # "startY":F
    .end local v4    # "endY":F
    .end local v5    # "disY":F
    .end local v8    # "duration":J
    .end local v10    # "disAlpha":F
    .end local v19    # "endAlpha":F
    .end local v20    # "startAlpha":F
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelLayout()V

    goto :goto_0
.end method

.method public notifyKeyguardShowHide(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyKeyguardShowHide: show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iput-boolean p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mKeyguardShow:Z

    .line 858
    if-eqz p1, :cond_0

    .line 859
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    .line 860
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hideHintView()V

    .line 862
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 784
    invoke-super {p0, p1}, Lcom/android/systemui_ex/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 785
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 789
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 790
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    .line 792
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->refreshAllTiles()V

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 796
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->updateResources(I)V

    .line 800
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/HintView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 804
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 805
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/HintView;->updateResources()V

    .line 806
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/controlpanel/HintView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 808
    :cond_2
    return-void
.end method

.method public resumeBackgroundTransparency()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 849
    return-void
.end method

.method public setBackgroundTransparent()V
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 844
    return-void
.end method

.method public setNotificationPanelExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;

    const-string v1, "setNotificationPanelExpanded:mGestureView is GONE"

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;

    const-string v1, "setNotificationPanelExpanded:mGestureView is VISIBLE"

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public start()V
    .locals 9

    .prologue
    .line 110
    const-class v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->getGestureAreaHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureAreaHeight:I

    .line 113
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui_ex/controlpanel/OPControlPanel$1;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$1;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 123
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsWizard:Z

    .line 126
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: mIsWizard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsWizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->filter:Landroid/content/IntentFilter;

    .line 128
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.intent.action.HIDE_CONTROL_CENTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mWindowManager:Landroid/view/WindowManager;

    .line 137
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureView:Landroid/widget/FrameLayout;

    .line 142
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    new-instance v0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    .line 146
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailContentCallback:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setDetailContentCallback(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setDetailPanelCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSTileHostCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setQSTileHostCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSTileCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setQSTileCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setBackgroundTransparencyCallback(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;)V

    .line 152
    new-instance v0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanel:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    .line 153
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanel:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    invoke-virtual {v1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->getQSPanel()Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->setQSPanel(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanel:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailCallback:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->setCallback(Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;)V

    .line 156
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanel:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->getDetailView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailView:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanel:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->getDetailButtonDone()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui_ex/controlpanel/OPControlPanel$2;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$2;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->updateResources(I)V

    .line 174
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureAreaHeight:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureAreaHeight:I

    sub-int/2addr v4, v5

    const/16 v5, 0x7de

    const/16 v6, 0x8

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureParams:Landroid/view/WindowManager$LayoutParams;

    .line 180
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "Control Center Gesture Area"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7de

    const/high16 v6, 0x1020000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelParams:Landroid/view/WindowManager$LayoutParams;

    .line 189
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "Control Center Panel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    new-instance v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$3;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$3;-><init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;

    .line 205
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSPanelHeight:I

    invoke-direct {v8, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 208
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    invoke-virtual {v0, v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;

    invoke-virtual {v0, v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailView:Landroid/view/View;

    invoke-virtual {v0, v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setTranslationY(F)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mOberver:Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;->register(Z)V

    .line 222
    return-void

    .line 123
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
