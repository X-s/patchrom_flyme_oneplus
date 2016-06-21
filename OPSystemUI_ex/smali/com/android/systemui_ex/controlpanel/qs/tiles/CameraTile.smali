.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/CameraTile;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.source "CameraTile.java"


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
.field private final DEFAULT_CAMERA_PACKAGE_NAME:Ljava/lang/String;

.field private final ONEPLUS_CAMERA_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 12
    const-string v0, "com.android.camera2"

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/CameraTile;->DEFAULT_CAMERA_PACKAGE_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "com.oneplus.camera"

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/CameraTile;->ONEPLUS_CAMERA_PACKAGE_NAME:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method protected handleClick()V
    .locals 5

    .prologue
    .line 36
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/CameraTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v3, v3, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 37
    .local v1, "newState":Z
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/controlpanel/qs/tiles/CameraTile;->refreshState(Ljava/lang/Object;)V

    .line 39
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/CameraTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 42
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.android.camera2"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.oneplus.camera"

    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/CameraTile;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/systemui_ex/util/Utils;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const-string v3, "com.oneplus.camera"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/CameraTile;->mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    invoke-interface {v3, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 48
    return-void

    .line 36
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "newState":Z
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 52
    const v0, 0x7f020149

    iput v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    .line 53
    const-string v0, "camera"

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 54
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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/CameraTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected isShortcutTile()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method protected newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/CameraTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 27
    return-void
.end method
