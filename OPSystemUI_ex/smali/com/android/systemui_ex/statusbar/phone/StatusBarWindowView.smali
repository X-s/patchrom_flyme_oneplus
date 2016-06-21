.class public Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "StatusBarWindowView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mBrightnessMirror:Landroid/view/View;

.field mDownFirst:Z

.field private mDragDownHelper:Lcom/android/systemui_ex/statusbar/DragDownHelper;

.field mFingerprintUnlock:Lcom/android/keyguard/FingerprintUnlock;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

.field mPowerManager:Landroid/os/PowerManager;

.field mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field private mStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

.field private final mTransparentSrcPaint:Landroid/graphics/Paint;

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mDownFirst:Z

    .line 79
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->setMotionEventSplittingEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 83
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mPowerManager:Landroid/os/PowerManager;

    .line 87
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 88
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintUnlockInstance()Lcom/android/keyguard/FingerprintUnlock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mFingerprintUnlock:Lcom/android/keyguard/FingerprintUnlock;

    .line 91
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 92
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method public cancelExpandHelper()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->cancelExpandHelper()V

    .line 346
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 155
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 156
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 205
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 208
    :cond_1
    :goto_2
    return v1

    .line 155
    .end local v0    # "down":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    .restart local v0    # "down":Z
    :sswitch_0
    if-nez v0, :cond_3

    .line 159
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->onBackPressed()Z

    goto :goto_2

    .line 162
    :cond_3
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->onBackKeyDown()V

    goto :goto_2

    .line 168
    :sswitch_1
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    if-nez v0, :cond_4

    .line 173
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->onMenuPressed()Z

    move-result v1

    goto :goto_2

    .line 176
    :cond_4
    :sswitch_2
    if-nez v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->onSpacePressed()Z

    move-result v1

    goto :goto_2

    .line 183
    :sswitch_3
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isDozing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 184
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_2

    .line 186
    :cond_5
    if-nez v0, :cond_6

    .line 187
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->onVolumePressed(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 189
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_0

    .line 190
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->onVolumeUpKeyDown()V

    goto :goto_1

    .line 196
    :sswitch_4
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mFingerprintUnlock:Lcom/android/keyguard/FingerprintUnlock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mFingerprintUnlock:Lcom/android/keyguard/FingerprintUnlock;

    invoke-virtual {v2}, Lcom/android/keyguard/FingerprintUnlock;->isFingerprintEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mFingerprintUnlock:Lcom/android/keyguard/FingerprintUnlock;

    invoke-virtual {v2}, Lcom/android/keyguard/FingerprintUnlock;->isIgnoreFingerPrint()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardBouncer()Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    const-string v2, "StatusBarWindowView"

    const-string v3, "fingerprint is over trial and force show bouncer "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mFingerprintUnlock:Lcom/android/keyguard/FingerprintUnlock;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/FingerprintUnlock;->forBouncerShowMessage(Z)V

    .line 200
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    goto/16 :goto_1

    .line 208
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_2

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x3e -> :sswitch_2
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 247
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getFitsSystemWindows()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 103
    .local v0, "changed":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 104
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->setPadding(IIII)V

    .line 106
    :cond_1
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 107
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 108
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 118
    :cond_2
    :goto_1
    return v1

    .end local v0    # "changed":Z
    :cond_3
    move v0, v1

    .line 99
    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v2

    if-eqz v2, :cond_6

    .line 114
    .restart local v0    # "changed":Z
    :cond_5
    :goto_2
    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->setPadding(IIII)V

    goto :goto_1

    .end local v0    # "changed":Z
    :cond_6
    move v0, v1

    .line 110
    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 123
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 125
    const v3, 0x7f0f00f8

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    .line 127
    const v3, 0x7f0f00f1

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    .line 128
    new-instance v3, Lcom/android/systemui_ex/statusbar/DragDownHelper;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {v3, v6, p0, v7, v8}, Lcom/android/systemui_ex/statusbar/DragDownHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui_ex/ExpandHelper$Callback;Lcom/android/systemui_ex/statusbar/DragDownHelper$DragDownCallback;)V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui_ex/statusbar/DragDownHelper;

    .line 129
    const v3, 0x7f0f0103

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 134
    .local v1, "root":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isScrimSrcModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 143
    .local v2, "windowToken":Landroid/os/IBinder;
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 144
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 147
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->setWillNotDraw(Z)V

    .line 151
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "windowToken":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 149
    :cond_1
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->DEBUG:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->setWillNotDraw(Z)V

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 214
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const-string v1, "StatusBarWindowView"

    const-string v2, "onDoubleTap to sleep"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isScrimSrcModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v2

    sub-int v8, v0, v2

    .line 317
    .local v8, "paddedBottom":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v2

    sub-int v9, v0, v2

    .line 318
    .local v9, "paddedRight":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    int-to-float v2, v8

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 328
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    int-to-float v3, v9

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    int-to-float v6, v8

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 333
    .end local v8    # "paddedBottom":I
    .end local v9    # "paddedRight":I
    :cond_3
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 334
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 335
    .local v5, "pt":Landroid/graphics/Paint;
    const v0, -0x7f000100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 337
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 338
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 340
    .end local v5    # "pt":Landroid/graphics/Paint;
    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 256
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui_ex/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui_ex/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->disPatchTouchEvent(Landroid/view/MotionEvent;)V

    move v1, v2

    .line 287
    :cond_0
    :goto_0
    return v1

    .line 261
    :cond_1
    const/4 v1, 0x0

    .line 264
    .local v1, "intercept":Z
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isQsExpanded()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2

    .line 274
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->wakeUpIfDozing(JLandroid/view/MotionEvent;)V

    .line 277
    :cond_2
    if-nez v1, :cond_3

    .line 278
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 280
    :cond_3
    if-eqz v1, :cond_0

    .line 281
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 282
    .local v0, "cancellation":Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 283
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 284
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 285
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 292
    const/4 v1, 0x0

    .line 299
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 300
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 302
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 303
    .local v0, "action":I
    if-nez v1, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 304
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 306
    :cond_2
    return v1
.end method
