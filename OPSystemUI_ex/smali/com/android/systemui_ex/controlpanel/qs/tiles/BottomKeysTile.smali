.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.source "BottomKeysTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$BroadcastReceiverHelper;
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
.field private final DEBUG:Z

.field private final OEM_EX_SERVICE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mExService:Lcom/oem/os/IOemExService;

.field private final mNoMan:Landroid/app/NotificationManager;

.field private mReceiver:Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$BroadcastReceiverHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V

    .line 27
    const-string v0, "BottomKeysTile"

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->TAG:Ljava/lang/String;

    .line 28
    const-string v0, "OEMExService"

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->OEM_EX_SERVICE:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->showLogs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->DEBUG:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mExService:Lcom/oem/os/IOemExService;

    .line 38
    const-string v0, "OEMExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mExService:Lcom/oem/os/IOemExService;

    .line 39
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mNoMan:Landroid/app/NotificationManager;

    .line 40
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->registerBroadcast()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;)Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->setEnable(Z)V

    return-void
.end method

.method private registerBroadcast()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.action.DISABLE_BOTTOMKEY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$BroadcastReceiverHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$BroadcastReceiverHelper;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;)V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mReceiver:Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$BroadcastReceiverHelper;

    .line 46
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mReceiver:Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$BroadcastReceiverHelper;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    return-void
.end method

.method private setEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 76
    if-eqz p1, :cond_1

    .line 77
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BottomKeysTile"

    const-string v2, "Lock bottom keys"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->showDisableNotification()V

    .line 79
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mExService:Lcom/oem/os/IOemExService;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/oem/os/IOemExService;->setKeyMode(I)Z

    .line 80
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    invoke-interface {v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;->showHintView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->refreshState(Ljava/lang/Object;)V

    .line 93
    return-void

    .line 82
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "BottomKeysTile"

    const-string v2, "Unlock bottom keys"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mExService:Lcom/oem/os/IOemExService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oem/os/IOemExService;->setKeyMode(I)Z

    .line 84
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mNoMan:Landroid/app/NotificationManager;

    const-string v2, "disable_bottom_keys"

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 85
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    invoke-interface {v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;->hideHintView()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "BottomKeysTile"

    const-string v2, "Cannot connect to the OEM ExService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private showDisableNotification()V
    .locals 12

    .prologue
    const v11, 0x7f0c0025

    const v10, 0x7f0c0024

    const v9, 0x7f02004f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.systemui.action.DISABLE_BOTTOMKEY"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mContext:Landroid/content/Context;

    const/high16 v6, 0x10000000

    invoke-static {v5, v8, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 110
    .local v3, "pendingintent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 112
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x1060059

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 125
    .local v2, "n":Landroid/app/Notification;
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mNoMan:Landroid/app/NotificationManager;

    const-string v6, "disable_bottom_keys"

    const/16 v7, 0xc8

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 127
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    invoke-interface {v5, v9, v10, v11}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;->setHintView(III)V

    .line 131
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$1;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;)V

    .line 138
    .local v0, "hintOnClickListener":Landroid/view/View$OnClickListener;
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    invoke-interface {v5, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;->setHintOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method


# virtual methods
.method protected handleClick()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->setEnable(Z)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 97
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 98
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 102
    const v0, 0x7f020151

    iput v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->iconId:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->crossStateReverse:Z

    .line 104
    iget-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 105
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected isShortcutTile()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method protected needSetCallbackControlPanel()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method protected newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 62
    return-void
.end method
