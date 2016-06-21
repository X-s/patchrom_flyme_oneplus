.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.source "LocationTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$1;,
        Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
        "<",
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;

.field private final mController:Lcom/android/systemui_ex/statusbar/policy/LocationController;

.field private final mKeyguard:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 30
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;

    .line 35
    invoke-interface {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->getLocationController()Lcom/android/systemui_ex/statusbar/policy/LocationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mController:Lcom/android/systemui_ex/statusbar/policy/LocationController;

    .line 36
    invoke-interface {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    .line 38
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mController:Lcom/android/systemui_ex/statusbar/policy/LocationController;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/LocationController;->addSettingsChangedCallback(Lcom/android/systemui_ex/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->refreshState()V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v0, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 65
    .local v0, "wasEnabled":Z
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mController:Lcom/android/systemui_ex/statusbar/policy/LocationController;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Lcom/android/systemui_ex/statusbar/policy/LocationController;->setLocationEnabled(Z)Z

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mController:Lcom/android/systemui_ex/statusbar/policy/LocationController;

    invoke-interface {v1}, Lcom/android/systemui_ex/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v0

    .line 71
    .local v0, "locationEnabled":Z
    iput-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 72
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0104

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 73
    const v1, 0x7f020150

    iput v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    .line 74
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected isShortcutTile()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mController:Lcom/android/systemui_ex/statusbar/policy/LocationController;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/LocationController;->addSettingsChangedCallback(Lcom/android/systemui_ex/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;->addCallback(Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor$Callback;)V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mController:Lcom/android/systemui_ex/statusbar/policy/LocationController;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/LocationController;->removeSettingsChangedCallback(Lcom/android/systemui_ex/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/tiles/LocationTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;->removeCallback(Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor$Callback;)V

    goto :goto_0
.end method
