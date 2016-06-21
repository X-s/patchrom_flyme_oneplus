.class public Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
.super Landroid/view/ViewGroup;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;,
        Lcom/android/systemui_ex/controlpanel/qs/QSPanel$LauncherColorControllerCallback;,
        Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;,
        Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;,
        Lcom/android/systemui_ex/controlpanel/qs/QSPanel$H;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private final SHORTCUT_TILE_COUNT:I

.field private mBluetoothController:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

.field private mBrightnessHeight:I

.field private mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

.field private final mContext:Landroid/content/Context;

.field private mControlPanelHeight:I

.field private final mDetail:Landroid/view/View;

.field private mDetailCallback:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;

.field private final mDetailContent:Landroid/view/ViewGroup;

.field private mDetailRecord:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;

.field private mFirstShortcutTileMarginLeft:I

.field private mFirstSwitchTileMarginLeft:I

.field private mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

.field private final mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$H;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

.field private mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

.field private mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

.field private mListening:Z

.field private mLocationController:Lcom/android/systemui_ex/statusbar/policy/LocationControllerImpl;

.field private mNetworkController:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

.field private mNumOfColumns:I

.field private mOrientation:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRotationLockController:Lcom/android/systemui_ex/statusbar/policy/RotationLockControllerImpl;

.field private mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

.field private mShortcutTileViewHeight:I

.field private mSwitchTileMarginCenter:I

.field private mSwitchTileMarginTop:I

.field private mVPNController:Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    .line 42
    new-instance v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$H;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$H;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;)V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$H;

    .line 59
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->SHORTCUT_TILE_COUNT:I

    .line 60
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mOrientation:I

    .line 84
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 86
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$H;

    invoke-static {v1, v2}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    .line 87
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    new-instance v2, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$LauncherColorControllerCallback;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$LauncherColorControllerCallback;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->startObserving(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorChangeCallback;)V

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040038

    invoke-virtual {v1, v2, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mDetail:Landroid/view/View;

    .line 90
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mDetail:Landroid/view/View;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    .line 92
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->initController()V

    .line 93
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mBluetoothController:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mLocationController:Lcom/android/systemui_ex/statusbar/policy/LocationControllerImpl;

    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mVPNController:Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;

    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRotationLockController:Lcom/android/systemui_ex/statusbar/policy/RotationLockControllerImpl;

    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mNetworkController:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-object v7, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    iget-object v8, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    iget-object v9, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/BluetoothController;Lcom/android/systemui_ex/statusbar/policy/LocationController;Lcom/android/systemui_ex/controlpanel/policy/VPNController;Lcom/android/systemui_ex/statusbar/policy/RotationLockController;Lcom/android/systemui_ex/controlpanel/policy/NetworkController;Lcom/android/systemui_ex/statusbar/policy/FlashlightController;Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V

    .line 99
    .local v0, "qsh":Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setHost(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)V

    .line 100
    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 102
    new-instance v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->setCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host$Callback;)V

    .line 109
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->updateResources()V

    .line 110
    invoke-virtual {p0, v10}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setClipChildren(Z)V

    .line 111
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;ZLcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->showDetail(ZLcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
    .param p1, "x1"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;
    .param p2, "x2"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->handleShowDetail(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setBackgroundDrawableColor(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->refreshAllTileViewStates()V

    return-void
.end method

.method private addTile(Lcom/android/systemui_ex/controlpanel/qs/QSTile;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "tile":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<*>;"
    new-instance v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;)V

    .line 208
    .local v3, "r":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    iput-object p1, v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    .line 209
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->isShortcutTile()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->supportsDualTargets()Z

    move-result v6

    invoke-virtual {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->showDisabledCross()Z

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->createTileView(Landroid/content/Context;ZZZ)Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    .line 211
    iget-object v4, v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->setVisibility(I)V

    .line 212
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$2;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$2;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;)V

    .line 234
    .local v0, "callback":Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;
    iget-object v4, v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    invoke-virtual {v4, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->setCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;)V

    .line 235
    new-instance v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$3;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$3;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;)V

    .line 241
    .local v1, "iconOnClickListener":Landroid/view/View$OnClickListener;
    new-instance v2, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$4;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$4;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;)V

    .line 248
    .local v2, "labelOnClickListener":Landroid/view/View$OnClickListener;
    iget-object v4, v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    invoke-virtual {v4, v1, v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->setOnClickListetner(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v4, v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->getState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)V

    .line 250
    iget-object v4, v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->refreshState()V

    .line 251
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v4, v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 253
    return-void
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 300
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private handleShowDetail(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;Z)V
    .locals 1
    .param p1, "r"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;
    .param p2, "show"    # Z

    .prologue
    .line 256
    instance-of v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_0

    .line 257
    check-cast p1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    .end local p1    # "r":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;Z)V

    .line 261
    :goto_0
    return-void

    .line 259
    .restart local p1    # "r":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;Z)V

    goto :goto_0
.end method

.method private handleShowDetailImpl(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;Z)V
    .locals 4
    .param p1, "r"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;
    .param p2, "show"    # Z

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-ne v1, p2, :cond_1

    .line 285
    :goto_1
    return-void

    .line 274
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 276
    :cond_1
    if-eqz p2, :cond_3

    .line 277
    iget-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;

    .line 278
    .local v0, "detailAdapter":Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;->detailView:Landroid/view/View;

    .line 279
    iget-object v1, p1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;->detailView:Landroid/view/View;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must return detail view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setDetailRecord(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V

    .line 282
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mDetailCallback:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;->onShowDetailRecord(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V

    .line 284
    .end local v0    # "detailAdapter":Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;
    :cond_3
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->sendAccessibilityEvent(I)V

    goto :goto_1
.end method

.method private handleShowDetailTile(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;Z)V
    .locals 1
    .param p1, "r"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    .param p2, "show"    # Z

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne v0, p2, :cond_2

    .line 271
    :cond_0
    :goto_1
    return-void

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 266
    :cond_2
    if-eqz p2, :cond_3

    .line 267
    iget-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->getDetailAdapter()Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;

    .line 268
    iget-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;

    if-eqz v0, :cond_0

    .line 270
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;Z)V

    goto :goto_1
.end method

.method private initController()V
    .locals 3

    .prologue
    .line 393
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mHandlerThread:Landroid/os/HandlerThread;

    .line 394
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 396
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/LocationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/LocationControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mLocationController:Lcom/android/systemui_ex/statusbar/policy/LocationControllerImpl;

    .line 397
    new-instance v0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mVPNController:Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;

    .line 398
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mBluetoothController:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    .line 399
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mSecurityController:Lcom/android/systemui_ex/statusbar/policy/SecurityControllerImpl;

    .line 401
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/RotationLockControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/RotationLockControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRotationLockController:Lcom/android/systemui_ex/statusbar/policy/RotationLockControllerImpl;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->getFlashlightController(Landroid/content/Context;)Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    .line 406
    new-instance v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mNetworkController:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    .line 407
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    invoke-direct {v0}, Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    .line 408
    return-void
.end method

.method private refreshAllTileViewStates()V
    .locals 4

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    .line 187
    .local v1, "r":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    iget-object v3, v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->getState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->onStateChanged(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)V

    .line 188
    iget-object v2, v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->setAnimationEnabled(Z)V

    goto :goto_0

    .line 190
    .end local v1    # "r":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    :cond_0
    return-void
.end method

.method private setBackgroundDrawableColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 457
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 458
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    const v2, 0x7f0f01a1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 459
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 460
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 462
    .end local v1    # "layer":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private setHost(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    .line 115
    return-void
.end method

.method private setQSTileCallbackControlPanel(Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    .prologue
    .line 446
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 447
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 448
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    iget-object v2, v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    .line 449
    .local v2, "tile":Lcom/android/systemui_ex/controlpanel/qs/QSTile;
    invoke-virtual {v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->needSetCallbackControlPanel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleSetControlPanelCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;)V

    .line 447
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v2    # "tile":Lcom/android/systemui_ex/controlpanel/qs/QSTile;
    :cond_1
    return-void
.end method

.method private setTiles(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui_ex/controlpanel/qs/QSTile<*>;>;"
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    .line 198
    .local v1, "record":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    iget-object v3, v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 200
    .end local v1    # "record":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 201
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    .line 202
    .local v2, "tile":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<*>;"
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->addTile(Lcom/android/systemui_ex/controlpanel/qs/QSTile;)V

    goto :goto_1

    .line 204
    .end local v2    # "tile":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<*>;"
    :cond_1
    return-void
.end method

.method private showDetail(ZLcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "r"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$H;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2, p2}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    return-void

    :cond_0
    move v0, v2

    .line 193
    goto :goto_0
.end method

.method private updateResources()V
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mNumOfColumns:I

    .line 128
    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mControlPanelHeight:I

    .line 129
    const v1, 0x7f0d010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mBrightnessHeight:I

    .line 130
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mControlPanelHeight:I

    const v2, 0x7f0d0113

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mShortcutTileViewHeight:I

    .line 131
    const v1, 0x7f0d010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mFirstShortcutTileMarginLeft:I

    .line 132
    const v1, 0x7f0d010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mFirstSwitchTileMarginLeft:I

    .line 133
    const v1, 0x7f0d010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mSwitchTileMarginTop:I

    .line 134
    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mSwitchTileMarginCenter:I

    .line 136
    const v1, 0x7f02004e

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mListening:Z

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->refreshAllTiles()V

    .line 143
    :cond_0
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->isBlackTheme()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    invoke-virtual {v1}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->getMainColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setBackgroundDrawableColor(I)V

    .line 146
    :cond_1
    return-void

    .line 124
    :cond_2
    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getHost()Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    return-object v0
.end method

.method public getPanelHeight()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mControlPanelHeight:I

    return v0
.end method

.method public getShortcutTileViewHeight()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mShortcutTileViewHeight:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 154
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 155
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 156
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    iget-object v1, v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->detailView:Landroid/view/View;

    .line 157
    .local v1, "detailView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 155
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "detailView":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->refreshAllTileViewStates()V

    .line 164
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mOrientation:I

    .line 165
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->updateResources()V

    .line 166
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 305
    iget-object v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mContext:Landroid/content/Context;

    iget v13, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mOrientation:I

    invoke-static {v12, v13}, Lcom/android/systemui_ex/util/Utils;->getDisplayWidth(Landroid/content/Context;I)I

    move-result v11

    .line 307
    .local v11, "width":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_b

    .line 308
    iget-object v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    .line 309
    .local v3, "record":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    iget-object v8, v3, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    .line 310
    .local v8, "tileView":Lcom/android/systemui_ex/controlpanel/qs/QSTileView;
    invoke-virtual {v8}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    .line 307
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_0
    const/4 v2, 0x0

    .line 312
    .local v2, "left":I
    const/4 v10, 0x0

    .line 313
    .local v10, "top":I
    const/4 v4, 0x0

    .line 314
    .local v4, "right":I
    const/4 v0, 0x0

    .line 315
    .local v0, "bottom":I
    invoke-virtual {v8}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->getTileViewWidth()I

    move-result v9

    .line 316
    .local v9, "tileWidth":I
    invoke-virtual {v8}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->getTileViewHeight()I

    move-result v7

    .line 318
    .local v7, "tileHeight":I
    const/4 v12, 0x5

    if-ge v1, v12, :cond_1

    .line 319
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mFirstShortcutTileMarginLeft:I

    mul-int/lit8 v12, v12, 0x2

    sub-int v12, v11, v12

    mul-int/lit8 v13, v9, 0x5

    sub-int/2addr v12, v13

    div-int/lit8 v6, v12, 0x4

    .line 320
    .local v6, "shortTileGapSize":I
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mFirstShortcutTileMarginLeft:I

    mul-int v13, v9, v1

    add-int/2addr v12, v13

    mul-int v13, v6, v1

    add-int v2, v12, v13

    .line 321
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mShortcutTileViewHeight:I

    sub-int/2addr v12, v7

    div-int/lit8 v10, v12, 0x2

    .line 322
    add-int v4, v2, v9

    .line 323
    add-int v0, v10, v7

    .line 360
    .end local v6    # "shortTileGapSize":I
    :goto_2
    invoke-virtual {v8, v2, v10, v4, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->layout(IIII)V

    goto :goto_1

    .line 325
    :cond_1
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mOrientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 326
    const/4 v12, 0x5

    if-ne v1, v12, :cond_2

    .line 327
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mFirstSwitchTileMarginLeft:I

    .line 331
    :goto_3
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mShortcutTileViewHeight:I

    iget v13, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mBrightnessHeight:I

    add-int/2addr v12, v13

    iget v13, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mSwitchTileMarginTop:I

    add-int v10, v12, v13

    .line 332
    add-int v4, v2, v9

    .line 333
    add-int v0, v10, v7

    goto :goto_2

    .line 329
    :cond_2
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mFirstSwitchTileMarginLeft:I

    add-int/lit8 v13, v1, -0x5

    mul-int/2addr v13, v9

    add-int v2, v12, v13

    goto :goto_3

    .line 335
    :cond_3
    add-int/lit8 v12, v1, -0x5

    iget v13, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mNumOfColumns:I

    div-int/2addr v12, v13

    add-int/lit8 v5, v12, 0x1

    .line 336
    .local v5, "row":I
    const/4 v12, 0x1

    if-ne v5, v12, :cond_7

    .line 338
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mNumOfColumns:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_4

    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mNumOfColumns:I

    rem-int v12, v1, v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5

    :cond_4
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mNumOfColumns:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_6

    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mNumOfColumns:I

    rem-int v12, v1, v12

    if-nez v12, :cond_6

    .line 339
    :cond_5
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mFirstSwitchTileMarginLeft:I

    .line 343
    :goto_4
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mShortcutTileViewHeight:I

    iget v13, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mSwitchTileMarginTop:I

    add-int v10, v12, v13

    .line 344
    add-int v4, v2, v9

    .line 345
    add-int v0, v10, v7

    goto :goto_2

    .line 341
    :cond_6
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mFirstSwitchTileMarginLeft:I

    add-int/lit8 v13, v1, -0x5

    mul-int/2addr v13, v9

    add-int v2, v12, v13

    goto :goto_4

    .line 348
    :cond_7
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mNumOfColumns:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_8

    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mNumOfColumns:I

    rem-int v12, v1, v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_9

    :cond_8
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mNumOfColumns:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_a

    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mNumOfColumns:I

    rem-int v12, v1, v12

    if-nez v12, :cond_a

    .line 349
    :cond_9
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mFirstSwitchTileMarginLeft:I

    .line 353
    :goto_5
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mShortcutTileViewHeight:I

    iget v13, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mSwitchTileMarginTop:I

    add-int/2addr v12, v13

    add-int/2addr v12, v7

    iget v13, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mSwitchTileMarginCenter:I

    add-int v10, v12, v13

    .line 354
    add-int v4, v2, v9

    .line 355
    add-int v0, v10, v7

    goto/16 :goto_2

    .line 351
    :cond_a
    iget v12, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mFirstSwitchTileMarginLeft:I

    add-int/lit8 v13, v1, -0x5

    iget v14, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mNumOfColumns:I

    sub-int/2addr v13, v14

    mul-int/2addr v13, v9

    add-int v2, v12, v13

    goto :goto_5

    .line 362
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "record":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    .end local v4    # "right":I
    .end local v5    # "row":I
    .end local v7    # "tileHeight":I
    .end local v8    # "tileView":Lcom/android/systemui_ex/controlpanel/qs/QSTileView;
    .end local v9    # "tileWidth":I
    .end local v10    # "top":I
    :cond_b
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 289
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 291
    .local v3, "width":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 292
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    .line 293
    .local v1, "record":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    .line 294
    .local v2, "tileView":Lcom/android/systemui_ex/controlpanel/qs/QSTileView;
    invoke-virtual {v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->getTileViewWidth()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->exactly(I)I

    move-result v4

    invoke-virtual {v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->getTileViewHeight()I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->exactly(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->measure(II)V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "record":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    .end local v2    # "tileView":Lcom/android/systemui_ex/controlpanel/qs/QSTileView;
    :cond_0
    iget v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mControlPanelHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setMeasuredDimension(II)V

    .line 297
    return-void
.end method

.method public refreshAllTiles()V
    .locals 3

    .prologue
    .line 180
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    .line 181
    .local v1, "r":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->refreshState()V

    goto :goto_0

    .line 183
    .end local v1    # "r":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    :cond_0
    return-void
.end method

.method public setDetailContentCallback(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mDetailCallback:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;

    if-nez v0, :cond_0

    .line 473
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mDetailCallback:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;

    .line 475
    :cond_0
    return-void
.end method

.method public setDetailRecord(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V
    .locals 1
    .param p1, "r"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;

    if-ne p1, v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 366
    :cond_0
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 169
    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mListening:Z

    if-ne v2, p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mListening:Z

    .line 171
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    .line 172
    .local v1, "r":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mListening:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->setListening(Z)V

    goto :goto_1

    .line 174
    .end local v1    # "r":Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->refreshAllTiles()V

    goto :goto_0
.end method

.method public setQSTileCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    .line 442
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setQSTileCallbackControlPanel(Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;)V

    .line 443
    return-void
.end method

.method public setQSTileHostCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->setQSTileHostCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;)V

    .line 438
    return-void
.end method

.method public setShowDetailCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    .prologue
    .line 465
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 466
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 467
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->setTileDetailCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;)V

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method
