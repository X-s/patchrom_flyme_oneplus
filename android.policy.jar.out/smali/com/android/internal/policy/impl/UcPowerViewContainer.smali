.class public Lcom/android/internal/policy/impl/UcPowerViewContainer;
.super Landroid/widget/FrameLayout;
.source "UcPowerViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UcPowerViewContainer$OnKeyListener;,
        Lcom/android/internal/policy/impl/UcPowerViewContainer$OnBackListener;,
        Lcom/android/internal/policy/impl/UcPowerViewContainer$OnMyTouchListener;,
        Lcom/android/internal/policy/impl/UcPowerViewContainer$OnAttachedToWindowListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UcPowerViewContainer"


# instance fields
.field private isDraw:Z

.field private mBackListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnBackListener;

.field private mKeyListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnKeyListener;

.field private mToWindowListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnAttachedToWindowListener;

.field private mTouchListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnMyTouchListener;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->isDraw:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->isDraw:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->isDraw:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->isDraw:Z

    .line 78
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 98
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    .line 100
    .local v3, "state":Landroid/view/KeyEvent$DispatcherState;
    if-nez v3, :cond_1

    .line 101
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 123
    .end local v3    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v4

    .line 103
    .restart local v3    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 104
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    if-nez v0, :cond_2

    .line 105
    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {v3, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 110
    invoke-virtual {v3, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 111
    .local v2, "isTracking":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    .line 112
    .local v1, "isCanceled":Z
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    if-eqz p0, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerViewContainer;->removePowerView()V

    goto :goto_0

    .line 117
    .end local v1    # "isCanceled":Z
    .end local v2    # "isTracking":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 118
    .end local v0    # "count":I
    .end local v3    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x18

    if-eq v5, v6, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x19

    if-ne v5, v6, :cond_6

    .line 119
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->mKeyListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnKeyListener;

    invoke-interface {v5, p1}, Lcom/android/internal/policy/impl/UcPowerViewContainer$OnKeyListener;->onKey(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 123
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 93
    const-string v0, "UcPowerViewContainer"

    const-string v1, "zll ------ onAttachedToWindow eeeeee"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 83
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 84
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->isDraw:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->mToWindowListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnAttachedToWindowListener;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->isDraw:Z

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->mToWindowListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnAttachedToWindowListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/UcPowerViewContainer$OnAttachedToWindowListener;->OnAttachedToWindowBack()V

    .line 88
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->mTouchListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnMyTouchListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->mTouchListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnMyTouchListener;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/UcPowerViewContainer$OnMyTouchListener;->OnTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public removePowerView()V
    .locals 1

    .prologue
    .line 132
    if-eqz p0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->mBackListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnBackListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->mBackListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnBackListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/UcPowerViewContainer$OnBackListener;->OnBack()V

    .line 138
    :cond_0
    return-void
.end method

.method public setOnAttachedToWindowListener(Lcom/android/internal/policy/impl/UcPowerViewContainer$OnAttachedToWindowListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/policy/impl/UcPowerViewContainer$OnAttachedToWindowListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->mToWindowListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnAttachedToWindowListener;

    .line 154
    return-void
.end method

.method public setOnBackListener(Lcom/android/internal/policy/impl/UcPowerViewContainer$OnBackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/policy/impl/UcPowerViewContainer$OnBackListener;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->mBackListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnBackListener;

    .line 142
    return-void
.end method

.method public setOnKeyListener(Lcom/android/internal/policy/impl/UcPowerViewContainer$OnKeyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/policy/impl/UcPowerViewContainer$OnKeyListener;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->mKeyListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnKeyListener;

    .line 146
    return-void
.end method

.method public setOnMyTouchListener(Lcom/android/internal/policy/impl/UcPowerViewContainer$OnMyTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/policy/impl/UcPowerViewContainer$OnMyTouchListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->mTouchListener:Lcom/android/internal/policy/impl/UcPowerViewContainer$OnMyTouchListener;

    .line 150
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;)V
    .locals 0
    .param p1, "mWm"    # Landroid/view/WindowManager;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcPowerViewContainer;->mWindowManager:Landroid/view/WindowManager;

    .line 129
    return-void
.end method
