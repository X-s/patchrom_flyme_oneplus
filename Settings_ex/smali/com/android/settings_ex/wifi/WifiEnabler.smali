.class public Lcom/android/settings_ex/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final EVENT_DATA_IS_WIFI_ON:Ljava/lang/String; = "is_wifi_on"

.field private static final EVENT_UPDATE_INDEX:I


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListeningToOnSwitchChange:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings_ex/widget/SwitchBar;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Lcom/android/settings_ex/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiEnabler$1;-><init>(Lcom/android/settings_ex/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v0, Lcom/android/settings_ex/wifi/WifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiEnabler$2;-><init>(Lcom/android/settings_ex/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 91
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiEnabler;->setupSwitchBar()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiEnabler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiEnabler;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiEnabler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 191
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 156
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 158
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiEnabler;->updateSearchIndex(Z)V

    .line 160
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 145
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 148
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 151
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 153
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSwitchBarChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 175
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isWiFiOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 166
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 167
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_wifi_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settings_exlib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c04d5

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 209
    .local v0, "wifiApState":I
    if-eqz p2, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 213
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_5

    const/16 v1, 0x8b

    :goto_1
    invoke-static {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 215
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 218
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c04d3

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 213
    :cond_5
    const/16 v1, 0x8a

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 135
    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 127
    :cond_0
    return-void
.end method

.method public setupSwitchBar()V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 103
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 104
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 109
    :cond_0
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 117
    return-void
.end method
