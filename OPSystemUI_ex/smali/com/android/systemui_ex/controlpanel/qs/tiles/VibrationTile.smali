.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.source "VibrationTile.java"


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
.field private final mCallback:Lcom/android/systemui_ex/statusbar/policy/VibrationController$Callback;

.field private final mController:Lcom/android/systemui_ex/statusbar/policy/VibrationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 52
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile$1;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->mCallback:Lcom/android/systemui_ex/statusbar/policy/VibrationController$Callback;

    .line 14
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->mController:Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    .line 15
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->mController:Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->mCallback:Lcom/android/systemui_ex/statusbar/policy/VibrationController$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->addCallback(Lcom/android/systemui_ex/statusbar/policy/VibrationController$Callback;)V

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->refreshState()V

    return-void
.end method


# virtual methods
.method protected handleClick()V
    .locals 2

    .prologue
    .line 34
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->mController:Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->setVibration(Z)V

    .line 35
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->mController:Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->getVibration()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 40
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0132

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 41
    const v0, 0x7f020155

    iput v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    .line 43
    iget-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 7
    check-cast p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected isShortcutTile()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method protected newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/VibrationTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 25
    return-void
.end method
