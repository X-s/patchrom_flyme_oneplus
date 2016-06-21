.class public Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;
.super Ljava/lang/Object;
.source "StatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;
    }
.end annotation


# instance fields
.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field public final mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

.field private final mKeyguardScreenRotation:Z

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mStatusBarView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    .line 49
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    .line 50
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 51
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    .line 52
    return-void
.end method

.method private adjustScreenOrientation(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0
.end method

.method private apply(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->applyKeyguardFlags(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->applyFocusableFlag(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->adjustScreenOrientation(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->applyHeight(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->applyUserActivityTimeout(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->applyInputFeatures(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->applyFitsSystemWindows(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    :cond_0
    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 141
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applyFocusableFlag(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    const v2, -0x20001

    .line 116
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 119
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    if-eqz v0, :cond_2

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 122
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 125
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private applyHeight(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->statusBarExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 132
    .local v0, "expanded":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 133
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 137
    :goto_1
    return-void

    .line 130
    .end local v0    # "expanded":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    .restart local v0    # "expanded":Z
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1
.end method

.method private applyInputFeatures(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0
.end method

.method private applyKeyguardFlags(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 94
    iget-boolean v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 99
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0
.end method

.method private applyUserActivityTimeout(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-wide v2, p1, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_0
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f09002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public add(Landroid/view/View;I)V
    .locals 6
    .param p1, "statusBarView"    # Landroid/view/View;
    .param p2, "barHeight"    # I

    .prologue
    .line 71
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 81
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 82
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 83
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 84
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    .line 87
    iput p2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    .line 88
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 90
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 91
    return-void
.end method

.method public getCurrentState()Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    return-object v0
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    .line 211
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 212
    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1
    .param p1, "keyguardFadingAway"    # Z

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 217
    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    .line 190
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 191
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    .line 185
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 186
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    .line 180
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 181
    return-void
.end method

.method public setKeyguardUserActivityTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    iput-wide p1, v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    .line 206
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 207
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    .line 221
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 222
    return-void
.end method

.method public setStatusBarExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->statusBarExpanded:Z

    .line 195
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    .line 196
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 197
    return-void
.end method

.method public setStatusBarFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    .line 201
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 202
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    iput p1, v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    .line 229
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)V

    .line 230
    return-void
.end method
