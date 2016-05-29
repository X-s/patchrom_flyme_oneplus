.class public final Lcom/android/settings_ex/bluetooth/BluetoothSettings;
.super Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final BLUETOOTH_DEVICE_NAME:Ljava/lang/String; = "bluetooth_device_name"

.field private static final BLUETOOTH_DISCOVERABLE:Ljava/lang/String; = "bluetooth_discoverable"

.field private static final BLUETOOTH_ENABE:Ljava/lang/String; = "bluetooth_enable"

.field private static final BTOPP_ACTION_OPEN_RECEIVED_FILES:Ljava/lang/String; = "android.btopp.intent.action.OPEN_RECEIVED_FILES"

.field private static final CTA_DEBUG:Z = false

.field private static final EVENT_DATA_IS_BT_ON:Ljava/lang/String; = "is_bluetooth_on"

.field private static final EVENT_UPDATE_INDEX:I = 0x0

.field private static final KEY_PREFERENCE_DIVIDER:Ljava/lang/String; = "preference_divider_line"

.field private static final MENU_ID_RENAME_DEVICE:I = 0x2

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final MENU_ID_SHOW_RECEIVED:I = 0x3

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SHOWRECEIVEDFILES:Ljava/lang/String; = "bluetooth_show_received_files"

.field private static final TAG:Ljava/lang/String; = "BluetoothSettings"

.field private static mSettingsDialogView:Landroid/view/View;


# instance fields
.field private isAlertMark:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private final mBluetoothEnabledIntentFilter:Landroid/content/IntentFilter;

.field private mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

.field private mDeviceNameBluetooth:Landroid/preference/Preference;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableBluetooth:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mInitialScanStarted:Z

.field private mInitiateDiscoverable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

.field private mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

.field private mPreferenceDivider2:Lcom/android/settings_ex/ui/OPPreferenceDivider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowReceivedFiles:Landroid/preference/Preference;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private preferenceBluetoothListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private preferenceBluetoothRenameListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private preferenceShowReceivedFilesListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    .line 869
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$7;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$7;-><init>()V

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 133
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->preferenceBluetoothListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 373
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->preferenceBluetoothRenameListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 382
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->preferenceShowReceivedFilesListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 700
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 208
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabledIntentFilter:Landroid/content/IntentFilter;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateDeviceName(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isAlertMark:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isAlertMark:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500()Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 83
    sput-object p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    return-object p0
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;
    .param p4, "addCachedDevices"    # Z

    .prologue
    .line 549
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 550
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 551
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 553
    if-eqz p4, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 556
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 557
    return-void
.end method

.method private setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 858
    :cond_0
    return-void
.end method

.method private startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 520
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 526
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 535
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 536
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 537
    :cond_3
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 538
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method private updateContent(I)V
    .locals 9
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 560
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 561
    .local v3, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 563
    .local v0, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 665
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 666
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 667
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 668
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 669
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mShowReceivedFiles:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 671
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 672
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 674
    :cond_1
    :goto_1
    return-void

    .line 565
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 566
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 567
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mShowReceivedFiles:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 568
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 569
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 570
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameBluetooth:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 571
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 573
    :cond_2
    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 574
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 576
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 577
    const v0, 0x7f090193

    .line 578
    goto :goto_0

    .line 582
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_9

    .line 583
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 587
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 589
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0902e0

    sget-object v6, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 592
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 594
    .local v2, "numberOfPairedDevices":I
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_4

    if-gtz v2, :cond_5

    .line 595
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 596
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 600
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_a

    .line 601
    new-instance v4, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 602
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    .line 606
    :goto_3
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider2:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 607
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0902e1

    sget-object v6, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 610
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 611
    .local v1, "numberOfAvailableDevices":I
    if-gez v1, :cond_6

    .line 612
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider2:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 614
    :cond_6
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez v4, :cond_7

    .line 615
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startScanning()V

    .line 618
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v4, :cond_8

    .line 619
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 624
    :cond_8
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 625
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 627
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 631
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v4, :cond_1

    .line 634
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_b

    .line 635
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 636
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4, v8}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 640
    :goto_4
    iput-boolean v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    goto/16 :goto_1

    .line 585
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_2

    .line 604
    .restart local v2    # "numberOfPairedDevices":I
    :cond_a
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 638
    .restart local v1    # "numberOfAvailableDevices":I
    :cond_b
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_4

    .line 645
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :pswitch_1
    const v0, 0x7f0901b6

    .line 646
    goto/16 :goto_0

    .line 650
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-eqz v4, :cond_c

    .line 651
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v4, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v4, v8}, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 653
    :cond_c
    const v0, 0x7f0902eb

    .line 654
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 655
    const v0, 0x7f090193

    goto/16 :goto_0

    .line 660
    :pswitch_3
    const v0, 0x7f0901b5

    .line 661
    iput-boolean v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    goto/16 :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDeviceName(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_modified_devicename"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "modified":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_devicename"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "mDeviceName":Ljava/lang/String;
    if-nez v2, :cond_3

    if-eqz v0, :cond_0

    const-string v3, "oneplus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ONE E1001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ONE E1003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ONE E1005"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    :cond_0
    const-string v3, "ro.display.series"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_devicename"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_modified_devicename"

    const-string v5, "1"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_4

    .line 185
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameBluetooth:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    if-eqz v0, :cond_2

    .line 187
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 188
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 203
    :cond_2
    :goto_1
    return-void

    .line 179
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    .line 180
    const/4 v3, 0x0

    const/16 v4, 0x1f

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_devicename"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 194
    .local v1, "mLocalManager":Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 195
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameBluetooth:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    if-eqz v0, :cond_2

    .line 197
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 198
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isBluetoothOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 861
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 863
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 864
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 865
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 866
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 867
    return-void
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 1

    .prologue
    .line 401
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 404
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 817
    const v0, 0x7f090a1a

    return v0
.end method

.method handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 821
    packed-switch p1, :pswitch_data_0

    .line 845
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setChecked(Z)V

    .line 846
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 847
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateSearchIndex(Z)V

    .line 849
    :goto_0
    return-void

    .line 823
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 826
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setChecked(Z)V

    .line 827
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 828
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 829
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameBluetooth:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 830
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 831
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mShowReceivedFiles:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 832
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateSearchIndex(Z)V

    goto :goto_0

    .line 837
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 840
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setChecked(Z)V

    .line 841
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 842
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateSearchIndex(Z)V

    goto :goto_0

    .line 821
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 808
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 809
    .local v0, "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 811
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 213
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 214
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 215
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 221
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 223
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    .line 224
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    .line 226
    const-string v1, "bluetooth_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    .line 227
    const-string v1, "bluetooth_discoverable"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    .line 228
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->preferenceBluetoothListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 229
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    const v2, 0x7f090184

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 230
    const-string v1, "bluetooth_device_name"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameBluetooth:Landroid/preference/Preference;

    .line 231
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->preferenceBluetoothListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 233
    const-string v1, "bluetooth_show_received_files"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mShowReceivedFiles:Landroid/preference/Preference;

    .line 234
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mShowReceivedFiles:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->preferenceShowReceivedFilesListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 235
    const-string v1, "preference_divider_line"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 236
    new-instance v1, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 237
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    const-string v2, "preference_divider_line"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPPreferenceDivider;->setKey(Ljava/lang/String;)V

    .line 238
    new-instance v1, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider2:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 239
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider2:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    const-string v2, "preference_divider_line"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPPreferenceDivider;->setKey(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateDeviceName(Landroid/content/Context;)V

    .line 242
    return-void

    .line 214
    .end local v0    # "activity":Lcom/android/settings_ex/SettingsActivity;
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0
    .param p1, "bluetoothState"    # I

    .prologue
    .line 678
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 679
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 680
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 466
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-nez v4, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 470
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_3

    move v0, v2

    .line 471
    .local v0, "bluetoothIsEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 473
    .local v1, "isDiscovering":Z
    if-nez v1, :cond_2

    if-nez v0, :cond_5

    .line 474
    :cond_2
    invoke-interface {p1, v3, v2, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    :goto_2
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02003b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 494
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "isDiscovering":Z
    :cond_3
    move v0, v3

    .line 470
    goto :goto_1

    .restart local v0    # "bluetoothIsEnabled":Z
    .restart local v1    # "isDiscovering":Z
    :cond_4
    move v2, v3

    .line 474
    goto :goto_2

    .line 478
    :cond_5
    invoke-interface {p1, v3, v2, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    :goto_4
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0902d4

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02003a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_4
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 394
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    .line 397
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 693
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 694
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 695
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 696
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 697
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mShowReceivedFiles:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 698
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 544
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 545
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 499
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 516
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 501
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 502
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 507
    :pswitch_1
    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v2}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "rename device"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 443
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->pause()V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 452
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 457
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    :goto_1
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 413
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 417
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 420
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f090193

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 439
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->handleStateChanged(I)V

    .line 426
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 427
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabledIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_4

    .line 433
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    const v1, 0x7f090183

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 438
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateDeviceName(Landroid/content/Context;)V

    goto :goto_0

    .line 434
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    const v1, 0x7f090184

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 684
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 686
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 689
    :cond_0
    return-void
.end method
