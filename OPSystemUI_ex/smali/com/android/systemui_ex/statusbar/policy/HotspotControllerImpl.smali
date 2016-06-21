.class public Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;
.super Ljava/lang/Object;
.source "HotspotControllerImpl.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/HotspotController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl$1;,
        Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/policy/HotspotController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl$Receiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "HotspotController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl$Receiver;-><init>(Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mReceiver:Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl$Receiver;

    .line 54
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 56
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 58
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->fireCallback(Z)V

    return-void
.end method

.method private fireCallback(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 133
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/HotspotController$Callback;

    .line 134
    .local v0, "callback":Lcom/android/systemui_ex/statusbar/policy/HotspotController$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui_ex/statusbar/policy/HotspotController$Callback;->onHotspotChanged(Z)V

    goto :goto_0

    .line 136
    .end local v0    # "callback":Lcom/android/systemui_ex/statusbar/policy/HotspotController$Callback;
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui_ex/statusbar/policy/HotspotController$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui_ex/statusbar/policy/HotspotController$Callback;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "HotspotController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mReceiver:Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl$Receiver;

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl$Receiver;->setListening(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isHotspotEnabled()Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHotspotSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 82
    .local v0, "isSecondaryUser":Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "isSecondaryUser":Z
    :cond_0
    move v0, v2

    .line 81
    goto :goto_0

    .restart local v0    # "isSecondaryUser":Z
    :cond_1
    move v1, v2

    .line 82
    goto :goto_1
.end method

.method public isProvisioningNeeded()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "provisionApp":[Ljava/lang/String;
    const-string v2, "net.tethering.noprovisioning"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    :cond_1
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui_ex/statusbar/policy/HotspotController$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui_ex/statusbar/policy/HotspotController$Callback;

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "HotspotController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mReceiver:Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl$Receiver;

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl$Receiver;->setListening(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setHotspotEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 101
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->isProvisioningNeeded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "tetherEnable":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "extraAddTetherType"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v4, "extraSetAlarm"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const-string v4, "extraRunProvision"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    const-string v4, "extraEnableWifiTether"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 113
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 130
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "tetherEnable":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 116
    .local v3, "wifiState":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 118
    :cond_2
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 119
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    :cond_3
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0

    .line 124
    .end local v3    # "wifiState":I
    :cond_4
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v5, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 125
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 126
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 127
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
