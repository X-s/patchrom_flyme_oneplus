.class public final Lcom/android/settings_ex/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final EVENT_DATA_IS_BT_ON:Ljava/lang/String; = "is_bluetooth_on"

.field private static final EVENT_UPDATE_INDEX:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings_ex/widget/SwitchBar;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 78
    invoke-virtual {p2}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 79
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 81
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 82
    .local v0, "manager":Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 85
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 89
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 90
    return-void

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 159
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 163
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 167
    :cond_1
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isBluetoothOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 173
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 174
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 129
    packed-switch p1, :pswitch_data_0

    .line 149
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 151
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    .line 153
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 136
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 146
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 129
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
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 181
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f09034d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 192
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 116
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_1

    .line 107
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 98
    return-void
.end method
