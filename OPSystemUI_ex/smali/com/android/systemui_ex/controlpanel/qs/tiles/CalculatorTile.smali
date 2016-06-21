.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/CalculatorTile;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.source "CalculatorTile.java"


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
.field private final CALCULATOR_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 7
    const-string v0, "com.oneplus.calculator"

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/CalculatorTile;->CALCULATOR_PACKAGE_NAME:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method protected handleClick()V
    .locals 4

    .prologue
    .line 30
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/CalculatorTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 31
    .local v0, "newState":Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/CalculatorTile;->refreshState(Ljava/lang/Object;)V

    .line 33
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/CalculatorTile;->mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/CalculatorTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.oneplus.calculator"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 35
    return-void

    .line 30
    .end local v0    # "newState":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 39
    const v0, 0x7f020148

    iput v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    .line 40
    const-string v0, "calculator"

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 6
    check-cast p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/CalculatorTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected isShortcutTile()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method protected newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/CalculatorTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 21
    return-void
.end method
