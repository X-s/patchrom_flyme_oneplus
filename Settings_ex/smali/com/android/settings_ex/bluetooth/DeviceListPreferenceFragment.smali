.class public abstract Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_ex/bluetooth/BluetoothCallback;


# static fields
.field private static final KEY_BT_DEVICE_LIST:Ljava/lang/String; = "bt_device_list"

.field private static final KEY_BT_SCAN:Ljava/lang/String; = "bt_scan"

.field private static final TAG:Ljava/lang/String; = "DeviceListPreferenceFragment"


# instance fields
.field private mDeviceListGroup:Landroid/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

.field mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "restrictedKey"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 62
    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    .line 63
    return-void
.end method

.method private updateProgressUi(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 227
    :cond_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 4

    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 128
    .local v1, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .line 129
    .local v0, "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 131
    .end local v0    # "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method abstract addPreferencesForActivity()V
.end method

.method createDevicePreference(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_0

    .line 188
    const-string v1, "DeviceListPreferenceFragment"

    const-string v2, "Trying to create a device preference before the list group/category exists!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V

    .line 196
    .local v0, "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 198
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 207
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 230
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 233
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    .line 86
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method public onDeviceDeleted(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .line 211
    .local v0, "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "btPreference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->onClicked()V

    .line 171
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settings_ex/bluetooth/BluetoothCallback;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 153
    const-string v3, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 166
    :goto_0
    return v2

    .line 158
    :cond_0
    instance-of v3, p2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 159
    check-cast v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .line 160
    .local v0, "btPreference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 161
    .local v1, "device":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 166
    .end local v0    # "btPreference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    .end local v1    # "device":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings_ex/bluetooth/BluetoothCallback;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->removeOorDevices()V

    .line 220
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 221
    return-void
.end method

.method removeAllDevices()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 123
    return-void
.end method

.method removeOorDevices()V
    .locals 7

    .prologue
    .line 134
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 136
    .local v1, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .line 137
    .local v0, "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    const-string v4, "DeviceListPreferenceFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device Removed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .line 141
    .local v3, "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    if-eqz v3, :cond_1

    .line 142
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setRemovable(Z)V

    goto :goto_0

    .line 148
    .end local v0    # "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .end local v3    # "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    :cond_2
    return-void
.end method

.method setDeviceListGroup(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    .line 91
    return-void
.end method

.method final setFilter(I)V
    .locals 1
    .param p1, "filterType"    # I

    .prologue
    .line 70
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    .line 71
    return-void
.end method

.method final setFilter(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    .line 67
    return-void
.end method
