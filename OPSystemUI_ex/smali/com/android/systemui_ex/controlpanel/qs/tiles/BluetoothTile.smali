.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.source "BluetoothTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
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
.field private final mCallback:Lcom/android/systemui_ex/statusbar/policy/BluetoothController$Callback;

.field private final mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

.field private final mDetailAdapter:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 178
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui_ex/statusbar/policy/BluetoothController$Callback;

    .line 47
    invoke-interface {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->getBluetoothController()Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    .line 48
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Lcom/android/systemui_ex/statusbar/policy/BluetoothController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->refreshState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->refreshState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 273
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.OEM_BLUETOOTH_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/systemui_ex/util/Utils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 275
    .local v0, "exist":Z
    if-nez v0, :cond_0

    .line 276
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDetailAdapter()Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    return-object v0
.end method

.method protected handleClick()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->isRadioProhibited()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v1, v2, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 85
    .local v1, "isEnabled":Z
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "oem.ctaSwitch.support"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    if-nez v1, :cond_1

    .line 87
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "dialog":Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 89
    const v2, 0x1040013

    new-instance v3, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$1;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 95
    const v2, 0x1040009

    new-instance v3, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$2;

    invoke-direct {v3, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$2;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 100
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->show()V

    .line 110
    .end local v0    # "dialog":Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;
    .end local v1    # "isEnabled":Z
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local v1    # "isEnabled":Z
    :cond_1
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    if-nez v1, :cond_2

    move v2, v3

    :goto_1
    invoke-interface {v5, v2}, Lcom/android/systemui_ex/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    if-nez v1, :cond_4

    :goto_2
    invoke-interface {v2, v3}, Lcom/android/systemui_ex/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method protected handleSecondaryClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 114
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iput-boolean v1, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 116
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    .line 118
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->showDetail(Z)V

    .line 119
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 9
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f0c00fa

    .line 123
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    invoke-interface {v4}, Lcom/android/systemui_ex/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v3

    .line 124
    .local v3, "enabled":Z
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    invoke-interface {v4}, Lcom/android/systemui_ex/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v1

    .line 125
    .local v1, "connected":Z
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    invoke-interface {v4}, Lcom/android/systemui_ex/statusbar/policy/BluetoothController;->isBluetoothConnecting()Z

    move-result v2

    .line 127
    .local v2, "connecting":Z
    iput-boolean v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 128
    const v4, 0x7f020147

    iput v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    .line 130
    if-eqz v3, :cond_4

    .line 131
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 132
    if-eqz v1, :cond_2

    .line 133
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00c7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 135
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    invoke-interface {v4}, Lcom/android/systemui_ex/statusbar/policy/BluetoothController;->getLastDeviceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 144
    :goto_0
    iget-object v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 153
    :cond_0
    :goto_1
    iget-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 154
    .local v0, "bluetoothName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 155
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0084

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "bluetoothName":Ljava/lang/String;
    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/String;

    .line 158
    .restart local v0    # "bluetoothName":Ljava/lang/String;
    :cond_1
    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/String;

    .line 159
    return-void

    .line 136
    .end local v0    # "bluetoothName":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 137
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00c6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 139
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    goto :goto_0

    .line 141
    :cond_3
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00c5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_4
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 149
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00c4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isRadioProhibited()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 171
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 174
    .local v0, "airModeOn":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 175
    .local v1, "disable":Z
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "airModeOn":Z
    .end local v1    # "disable":Z
    :cond_0
    move v0, v3

    .line 171
    goto :goto_0

    .restart local v0    # "airModeOn":Z
    .restart local v1    # "disable":Z
    :cond_1
    move v2, v3

    .line 175
    goto :goto_1
.end method

.method protected isShortcutTile()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method protected newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;-><init>()V

    .line 69
    .local v0, "state":Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui_ex/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothController;->addStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/BluetoothController$Callback;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui_ex/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothController;->removeStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/BluetoothController$Callback;)V

    goto :goto_0
.end method

.method public supportsDualTargets()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
