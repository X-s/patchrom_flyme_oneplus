.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.source "FlashlightTile.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
        "<",
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 37
    invoke-interface {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    .line 38
    invoke-interface {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->getFlashlightController()Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    .line 39
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->addListener(Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 71
    .local v0, "newState":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    const/4 v0, 0x0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    goto :goto_0

    .line 70
    .end local v0    # "newState":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleDestroy()V

    .line 50
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->removeListener(Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 51
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f02014c

    const/4 v4, 0x0

    .line 81
    iput-boolean v6, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->enabled:Z

    .line 82
    iput v5, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    .line 84
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->isFlashlightEnabled()Z

    move-result v1

    .line 85
    .local v1, "isFlashlightEnabled":Z
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result v0

    .line 87
    .local v0, "isCameraAvailable":Z
    if-nez v0, :cond_0

    .line 88
    iput-boolean v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->enabled:Z

    .line 89
    iput-boolean v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 90
    iput v5, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    .line 99
    :goto_0
    iget-boolean v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-eqz v3, :cond_2

    const v2, 0x7f0c00d3

    .line 102
    .local v2, "onOrOffId":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 103
    return-void

    .line 91
    .end local v2    # "onOrOffId":I
    :cond_0
    if-eqz v1, :cond_1

    .line 92
    iput-boolean v6, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 93
    const v3, 0x7f02014d

    iput v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    goto :goto_0

    .line 95
    :cond_1
    iput-boolean v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 96
    iput v5, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    goto :goto_0

    .line 99
    :cond_2
    const v2, 0x7f0c00d2

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected isShortcutTile()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method protected newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onFlashlightAvailabilityChanged(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->refreshState()V

    .line 127
    return-void
.end method

.method public onFlashlightError()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public onFlashlightOff()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 61
    return-void
.end method
