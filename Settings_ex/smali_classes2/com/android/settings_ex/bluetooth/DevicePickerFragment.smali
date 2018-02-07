.class public final Lcom/android/settings_ex/bluetooth/DevicePickerFragment;
.super Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# static fields
.field private static final MENU_ID_REFRESH:I = 0x1


# instance fields
.field private mDeviceSelected:Z

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    return-void
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    const v1, 0x7f08002b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 59
    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 61
    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 54
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x19

    return v0
.end method

.method initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "preference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 67
    const v0, 0x7f04013a

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 66
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 158
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 155
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e051b

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 98
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v3, "no_config_bluetooth"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    if-nez p1, :cond_0

    move v1, v2

    .line 98
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 100
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    .line 94
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    const v0, 0x7f0e0696

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 75
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 120
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    if-nez v1, :cond_1

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.bluetooth.devicepicker.action.DEVICE_NOT_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 145
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 147
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->finish()V

    .line 144
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .param p1, "btPreference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 135
    const/16 v1, 0xc

    .line 134
    if-eq v0, v1, :cond_0

    .line 135
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 130
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 83
    return v1

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->addCachedDevices()V

    .line 107
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    .line 108
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 110
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 104
    :cond_0
    return-void
.end method
