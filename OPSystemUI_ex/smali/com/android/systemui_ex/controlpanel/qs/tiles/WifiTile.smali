.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.source "WifiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
        "<",
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController;

.field private final mDetailAdapter:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;

.field private mHasClicked:Z

.field private mSsid:Ljava/lang/String;

.field private final mStateBeforeClick:Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

.field private mWifiConnected:Z

.field private final mWifiController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;

.field private mWifiEnabed:Z

.field private final mWifiStateCallback:Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    .line 50
    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mSsid:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiEnabed:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiConnected:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mHasClicked:Z

    .line 200
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$3;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiStateCallback:Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;

    .line 57
    invoke-interface {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui_ex/controlpanel/policy/NetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController;

    .line 58
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController;->getAccessPointController()Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;

    .line 59
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;

    .line 61
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiStateCallback:Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController;->addWifiStateCallback(Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController;->getCurrentWifiState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiEnabed:Z

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->handleClickInner()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiEnabed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mHasClicked:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mHasClicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->refreshState()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->refreshState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method private getSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 329
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.OEM_WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/systemui_ex/util/Utils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 331
    .local v0, "exist":Z
    if-nez v0, :cond_0

    .line 332
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-object v1
.end method

.method private handleClickInner()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)Z

    .line 124
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mHasClicked:Z

    .line 125
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController;

    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mHasClicked:Z

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController;->setWifiEnabled(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->refreshState()V

    .line 127
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 192
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 197
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 193
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 194
    .restart local v0    # "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 195
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDetailAdapter()Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.ctaSwitch.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiEnabed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mHasClicked:Z

    if-nez v1, :cond_0

    .line 99
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, "dialog":Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0197

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    const v1, 0x1040013

    new-instance v2, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$1;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 107
    const v1, 0x1040009

    new-instance v2, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$2;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$2;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 112
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->show()V

    .line 119
    .end local v0    # "dialog":Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->handleClickInner()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->handleClickInner()V

    goto :goto_0
.end method

.method protected handleSecondaryClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 131
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;

    invoke-interface {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;->canConfigWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController;->setWifiEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    iput-boolean v1, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    .line 139
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->showDetail(Z)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 9
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v8, 0x7f0c010f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    sget-boolean v3, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "WifiTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleUpdateState state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiEnabed:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mHasClicked:Z

    if-eqz v3, :cond_3

    :cond_1
    move v3, v5

    :goto_0
    iput-boolean v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, "signalContentDescription":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 153
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_2

    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 154
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 155
    .local v0, "isAirplaneModeEnabed":Z
    if-eqz v0, :cond_2

    .line 156
    iput-boolean v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    .line 159
    .end local v0    # "isAirplaneModeEnabed":Z
    :cond_2
    iget-boolean v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    if-eqz v3, :cond_5

    .line 160
    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiConnected:Z

    if-eqz v3, :cond_4

    .line 161
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mSsid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 170
    :goto_1
    const v3, 0x7f020156

    iput v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->iconId:I

    .line 171
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00b7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->contentDescription:Ljava/lang/String;

    .line 174
    iget-object v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->label:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->dualLabelContentDescription:Ljava/lang/String;

    .line 175
    return-void

    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "signalContentDescription":Ljava/lang/String;
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_3
    move v3, v4

    .line 146
    goto :goto_0

    .line 163
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "signalContentDescription":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->label:Ljava/lang/String;

    goto :goto_1

    .line 166
    :cond_5
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 167
    const v3, 0x7f0c007d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    .end local p1    # "x0":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method protected isShortcutTile()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method protected newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;->addAccessPointCallback(Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;->removeAccessPointCallback(Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    iget-boolean v1, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsDualTargets()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
