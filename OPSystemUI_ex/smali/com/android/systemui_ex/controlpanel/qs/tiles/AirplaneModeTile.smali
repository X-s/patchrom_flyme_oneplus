.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;
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
.field private mAirplaneModeObserver:Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 40
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mAirplaneModeObserver:Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;

    .line 41
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mAirplaneModeObserver:Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;->startObserving()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->refreshState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private setAirplaneMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 91
    .local v0, "mgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 92
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleClick()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->setAirplaneMode(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->refreshState()V

    .line 63
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 67
    const v0, 0x7f020146

    iput v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    .line 68
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mAirplaneModeObserver:Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile$AirplaneModeObserver;->isAirplaneModeOn()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 69
    iget-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 77
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00bc

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
    .line 31
    check-cast p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected isShortcutTile()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method protected newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/AirplaneModeTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 57
    return-void
.end method
