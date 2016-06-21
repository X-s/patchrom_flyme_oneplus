.class public Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui_ex/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field mBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field private final mBarTransitions:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;

.field mLastFullyOpenedPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

.field mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

.field private mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;

    .line 47
    return-void
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 2
    .param p1, "pv"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    .line 69
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f0f00f1

    if-ne v0, v1, :cond_0

    .line 70
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .line 72
    :cond_0
    return-void
.end method

.method public getBarTransitions()Lcom/android/systemui_ex/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;

    return-object v0
.end method

.method public onAllPanelsCollapsed()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    .line 113
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .line 120
    return-void
.end method

.method public onClosingFinished()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 156
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->onClosingFinished()V

    .line 157
    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 168
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->onExpandingFinished()V

    .line 169
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->init()V

    .line 64
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public onPanelFullyOpened(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 1
    .param p1, "openPanel"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    if-eq p1, v0, :cond_0

    .line 126
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .line 129
    return-void
.end method

.method public onPanelPeeked()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 105
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    .line 106
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 86
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 88
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 89
    const/4 v1, 0x1

    .line 91
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 143
    .local v0, "barConsumedEvent":Z
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTrackingStarted(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 1
    .param p1, "panel"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onTrackingStarted(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->onTrackingStarted()V

    .line 150
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->onTrackingStarted()V

    .line 151
    return-void
.end method

.method public onTrackingStopped(Lcom/android/systemui_ex/statusbar/phone/PanelView;Z)V
    .locals 1
    .param p1, "panel"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .param p2, "expand"    # Z

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onTrackingStopped(Lcom/android/systemui_ex/statusbar/phone/PanelView;Z)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->onTrackingStopped(Z)V

    .line 163
    return-void
.end method

.method public panelExpansionChanged(Lcom/android/systemui_ex/statusbar/phone/PanelView;FZ)V
    .locals 2
    .param p1, "panel"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .param p2, "frac"    # F
    .param p3, "expanded"    # Z

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui_ex/statusbar/phone/PanelView;FZ)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setPanelExpansion(F)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 181
    return-void
.end method

.method public panelsEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .locals 2
    .param p1, "touch"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    goto :goto_0
.end method

.method public setBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .line 55
    return-void
.end method

.method public setScrimController(Lcom/android/systemui_ex/statusbar/phone/ScrimController;)V
    .locals 0
    .param p1, "scrimController"    # Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    .line 59
    return-void
.end method
