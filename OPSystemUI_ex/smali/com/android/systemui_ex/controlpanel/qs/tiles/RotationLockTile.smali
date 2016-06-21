.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.source "RotationLockTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
        "<",
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui_ex/statusbar/policy/RotationLockController$RotationLockControllerCallback;

.field private final mController:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 109
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile$1;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui_ex/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .line 34
    invoke-interface {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->getRotationLockController()Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->refreshState()V

    return-void
.end method

.method private getAccessibilityString(III)Ljava/lang/String;
    .locals 4
    .param p1, "idWhenPortrait"    # I
    .param p2, "idWhenLandscape"    # I
    .param p3, "idWhenOff"    # I

    .prologue
    .line 91
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 94
    .local v0, "portrait":Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, p1

    .line 98
    .end local v0    # "portrait":Z
    .local v1, "stringID":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 92
    .end local v1    # "stringID":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "portrait":Z
    :cond_1
    move v1, p2

    .line 94
    goto :goto_1

    .line 96
    .end local v0    # "portrait":Z
    :cond_2
    move v1, p3

    .restart local v1    # "stringID":I
    goto :goto_1
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    const v0, 0x7f0c00f1

    const v1, 0x7f0c00f0

    const v2, 0x7f0c00ef

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->getAccessibilityString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 72
    iget-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020095

    :goto_1
    iput v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    .line 74
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 75
    const v0, 0x7f0c00ee

    const v1, 0x7f0c00ed

    const v2, 0x7f0c00ec

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->getAccessibilityString(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_1
    const v0, 0x7f0200b1

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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected isShortcutTile()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui_ex/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/RotationLockController;->addRotationLockControllerCallback(Lcom/android/systemui_ex/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui_ex/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui_ex/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/RotationLockController;->removeRotationLockControllerCallback(Lcom/android/systemui_ex/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    goto :goto_0
.end method

.method public showDisabledCross()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
