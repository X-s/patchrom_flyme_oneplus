.class public final Lcom/android/settings_ex/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;,
        Lcom/android/settings_ex/bluetooth/BluetoothEnabler$2;,
        Lcom/android/settings_ex/bluetooth/BluetoothEnabler$3;
    }
.end annotation


# static fields
.field private static final EVENT_DATA_IS_BT_ON:Ljava/lang/String; = "is_bluetooth_on"

.field private static final EVENT_UPDATE_INDEX:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelayedHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mSwitchView:Landroid/widget/Switch;

.field private mValidListener:Z

.field runnable:Ljava/lang/Runnable;

.field private switchChecked:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Lcom/android/settings_ex/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchView:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->switchChecked:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings_ex/widget/SwitchBar;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mDelayedHandler:Landroid/os/Handler;

    .line 60
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->runnable:Ljava/lang/Runnable;

    .line 81
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$3;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 107
    invoke-virtual {p2}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 108
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 110
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 111
    .local v0, "manager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 113
    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 118
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 104
    return-void

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 186
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 190
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 182
    :cond_1
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isBluetoothOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 200
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 201
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 176
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 178
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    .line 157
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 165
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 171
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 173
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 208
    if-eqz p2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings_exlib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const/16 v1, 0x9f

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 230
    iput-boolean p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->switchChecked:Z

    .line 231
    iget-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchView:Landroid/widget/Switch;

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mDelayedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mDelayedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e06ef

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 149
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 147
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 132
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_1

    .line 136
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 129
    return-void
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 121
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 125
    return-void
.end method
