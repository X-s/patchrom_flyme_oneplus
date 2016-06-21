.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.source "VPNTile.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/policy/VPNController$VPNStateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
        "<",
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui_ex/controlpanel/policy/VPNController$VPNStateChangedCallback;"
    }
.end annotation


# static fields
.field private static final VPN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mController:Lcom/android/systemui_ex/controlpanel/policy/VPNController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.name.action.OPTIONSFRAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;->VPN_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 19
    invoke-interface {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->getVPNController()Lcom/android/systemui_ex/controlpanel/policy/VPNController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;->mController:Lcom/android/systemui_ex/controlpanel/policy/VPNController;

    .line 20
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;->mController:Lcom/android/systemui_ex/controlpanel/policy/VPNController;

    invoke-interface {v0, p0}, Lcom/android/systemui_ex/controlpanel/policy/VPNController;->addVPNStateChangedCallback(Lcom/android/systemui_ex/controlpanel/policy/VPNController$VPNStateChangedCallback;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected handleClick()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;->mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    sget-object v1, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;->VPN_SETTINGS:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v1, 0x7f0c0105

    .line 44
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;->mController:Lcom/android/systemui_ex/controlpanel/policy/VPNController;

    invoke-interface {v0}, Lcom/android/systemui_ex/controlpanel/policy/VPNController;->isVPNEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 45
    const v0, 0x7f020052

    iput v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    .line 47
    iget-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ca

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
    .line 10
    check-cast p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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
    .line 34
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onStateChanged()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/VPNTile;->refreshState()V

    .line 63
    return-void
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "isListening"    # Z

    .prologue
    .line 30
    return-void
.end method
