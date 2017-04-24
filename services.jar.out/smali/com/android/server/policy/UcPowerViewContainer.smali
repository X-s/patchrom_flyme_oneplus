.class public Lcom/android/server/policy/UcPowerViewContainer;
.super Landroid/widget/FrameLayout;
.source "UcPowerViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/UcPowerViewContainer$OnKeyListener;,
        Lcom/android/server/policy/UcPowerViewContainer$OnBackListener;,
        Lcom/android/server/policy/UcPowerViewContainer$OnMyTouchListener;,
        Lcom/android/server/policy/UcPowerViewContainer$OnAttachedToWindowListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UcPowerViewContainer"


# instance fields
.field private isDraw:Z

.field private mBackListener:Lcom/android/server/policy/UcPowerViewContainer$OnBackListener;

.field private mToWindowListener:Lcom/android/server/policy/UcPowerViewContainer$OnAttachedToWindowListener;

.field private mTouchListener:Lcom/android/server/policy/UcPowerViewContainer$OnMyTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/UcPowerViewContainer;->isDraw:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/UcPowerViewContainer;->isDraw:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/UcPowerViewContainer;->isDraw:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/UcPowerViewContainer;->isDraw:Z

    .line 54
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0xbb

    if-ne v1, v2, :cond_3

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/server/policy/UcPowerViewContainer;->removePowerView()V

    goto :goto_0

    .line 86
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 69
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
    .line 59
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 60
    iget-boolean v0, p0, Lcom/android/server/policy/UcPowerViewContainer;->isDraw:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/UcPowerViewContainer;->mToWindowListener:Lcom/android/server/policy/UcPowerViewContainer$OnAttachedToWindowListener;

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/UcPowerViewContainer;->isDraw:Z

    .line 62
    iget-object v0, p0, Lcom/android/server/policy/UcPowerViewContainer;->mToWindowListener:Lcom/android/server/policy/UcPowerViewContainer$OnAttachedToWindowListener;

    invoke-interface {v0}, Lcom/android/server/policy/UcPowerViewContainer$OnAttachedToWindowListener;->OnAttachedToWindowBack()V

    .line 64
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/policy/UcPowerViewContainer;->mTouchListener:Lcom/android/server/policy/UcPowerViewContainer$OnMyTouchListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/server/policy/UcPowerViewContainer;->mTouchListener:Lcom/android/server/policy/UcPowerViewContainer$OnMyTouchListener;

    invoke-interface {v0, p1}, Lcom/android/server/policy/UcPowerViewContainer$OnMyTouchListener;->OnTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 115
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
    .line 91
    if-eqz p0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/policy/UcPowerViewContainer;->mBackListener:Lcom/android/server/policy/UcPowerViewContainer$OnBackListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/server/policy/UcPowerViewContainer;->mBackListener:Lcom/android/server/policy/UcPowerViewContainer$OnBackListener;

    invoke-interface {v0}, Lcom/android/server/policy/UcPowerViewContainer$OnBackListener;->OnBack()V

    .line 96
    :cond_0
    return-void
.end method

.method public setOnAttachedToWindowListener(Lcom/android/server/policy/UcPowerViewContainer$OnAttachedToWindowListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/policy/UcPowerViewContainer$OnAttachedToWindowListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/policy/UcPowerViewContainer;->mToWindowListener:Lcom/android/server/policy/UcPowerViewContainer$OnAttachedToWindowListener;

    .line 108
    return-void
.end method

.method public setOnBackListener(Lcom/android/server/policy/UcPowerViewContainer$OnBackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/policy/UcPowerViewContainer$OnBackListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/policy/UcPowerViewContainer;->mBackListener:Lcom/android/server/policy/UcPowerViewContainer$OnBackListener;

    .line 100
    return-void
.end method

.method public setOnMyTouchListener(Lcom/android/server/policy/UcPowerViewContainer$OnMyTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/policy/UcPowerViewContainer$OnMyTouchListener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/server/policy/UcPowerViewContainer;->mTouchListener:Lcom/android/server/policy/UcPowerViewContainer$OnMyTouchListener;

    .line 104
    return-void
.end method
