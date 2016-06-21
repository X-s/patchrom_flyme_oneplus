.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.source "DoNotDisturbTile.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
        "<",
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;"
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 11
    const-string v0, "DoNotDisturbTile"

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;->TAG:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->showLogs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;->DEBUG:Z

    .line 19
    invoke-interface {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    .line 20
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->addCallback(Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected handleClick()V
    .locals 4

    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 41
    .local v0, "newState":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DoNotDisturbTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle onClick, set new state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->setDoNotDisturb(Z)V

    .line 43
    return-void

    .line 40
    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isDoNotDisturbModeEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 48
    const v0, 0x7f02014b

    iput v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c001e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 52
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "DoNotDisturbTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DoNotDisturbTile::update state isDisturbModeEnabled() ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected isShortcutTile()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method protected newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onStateChanged(Z)V
    .locals 0
    .param p1, "showThreeKeyPanel"    # Z

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/DoNotDisturbTile;->refreshState()V

    .line 60
    return-void
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 31
    return-void
.end method
