.class public Lcom/android/systemui_ex/qs/tiles/HotspotTile;
.super Lcom/android/systemui_ex/qs/QSTile;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/qs/tiles/HotspotTile$APChangedReceiver;,
        Lcom/android/systemui_ex/qs/tiles/HotspotTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui_ex/qs/QSTile",
        "<",
        "Lcom/android/systemui_ex/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui_ex/qs/tiles/HotspotTile$Callback;

.field private final mController:Lcom/android/systemui_ex/statusbar/policy/HotspotController;

.field private final mDisable:Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui_ex/qs/QSTile",
            "<",
            "Lcom/android/systemui_ex/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnable:Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui_ex/qs/QSTile",
            "<",
            "Lcom/android/systemui_ex/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mUsageTracker:Lcom/android/systemui_ex/qs/UsageTracker;


# direct methods
.method static synthetic access$100(Lcom/android/systemui_ex/qs/tiles/HotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/tiles/HotspotTile;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/qs/tiles/HotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/tiles/HotspotTile;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)Lcom/android/systemui_ex/qs/UsageTracker;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->newUsageTracker(Landroid/content/Context;)Lcom/android/systemui_ex/qs/UsageTracker;

    move-result-object v0

    return-object v0
.end method

.method private static newUsageTracker(Landroid/content/Context;)Lcom/android/systemui_ex/qs/UsageTracker;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    new-instance v0, Lcom/android/systemui_ex/qs/UsageTracker;

    const-class v1, Lcom/android/systemui_ex/qs/tiles/HotspotTile;

    const v2, 0x7f0a0035

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui_ex/qs/UsageTracker;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    return-object v0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mState:Lcom/android/systemui_ex/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 70
    iget-object v1, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mState:Lcom/android/systemui_ex/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui_ex/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui_ex/qs/QSTile$BooleanState;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 71
    .local v0, "isEnabled":Z
    iget-object v3, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mController:Lcom/android/systemui_ex/statusbar/policy/HotspotController;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v3, v1}, Lcom/android/systemui_ex/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 72
    iget-object v1, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 73
    iget-object v1, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 74
    return-void

    .line 71
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/systemui_ex/qs/QSTile;->handleDestroy()V

    .line 51
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mUsageTracker:Lcom/android/systemui_ex/qs/UsageTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/qs/UsageTracker;->setListening(Z)V

    .line 52
    return-void
.end method

.method protected handleLongClick()V
    .locals 6

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mState:Lcom/android/systemui_ex/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui_ex/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui_ex/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0c018f

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mState:Lcom/android/systemui_ex/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui_ex/qs/QSTile$BooleanState;

    iget-object v1, v1, Lcom/android/systemui_ex/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mUsageTracker:Lcom/android/systemui_ex/qs/UsageTracker;

    new-instance v2, Lcom/android/systemui_ex/qs/tiles/HotspotTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui_ex/qs/tiles/HotspotTile;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui_ex/qs/UsageTracker;->showResetConfirmation(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui_ex/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mController:Lcom/android/systemui_ex/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mUsageTracker:Lcom/android/systemui_ex/qs/UsageTracker;

    invoke-virtual {v0}, Lcom/android/systemui_ex/qs/UsageTracker;->isRecentlyUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui_ex/qs/QSTile$BooleanState;->visible:Z

    .line 92
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0124

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mController:Lcom/android/systemui_ex/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui_ex/qs/QSTile$BooleanState;->value:Z

    .line 95
    iget-boolean v0, p1, Lcom/android/systemui_ex/qs/QSTile$BooleanState;->visible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui_ex/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;

    :goto_1
    iput-object v0, p1, Lcom/android/systemui_ex/qs/QSTile$BooleanState;->icon:Lcom/android/systemui_ex/qs/QSTile$Icon;

    .line 96
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui_ex/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/android/systemui_ex/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui_ex/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui_ex/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mController:Lcom/android/systemui_ex/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui_ex/qs/tiles/HotspotTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/HotspotController;->addCallback(Lcom/android/systemui_ex/statusbar/policy/HotspotController$Callback;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mController:Lcom/android/systemui_ex/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui_ex/qs/tiles/HotspotTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/HotspotController;->removeCallback(Lcom/android/systemui_ex/statusbar/policy/HotspotController$Callback;)V

    goto :goto_0
.end method
