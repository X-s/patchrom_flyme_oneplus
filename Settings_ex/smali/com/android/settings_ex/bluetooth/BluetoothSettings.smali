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

.field private static final KEY_PREFERENCE_DIVIDER:Ljava/lang/String; = "preference_divider_line"

.field private static final MENU_ID_RENAME_DEVICE:I = 0x2

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final MENU_ID_SHOW_RECEIVED:I = 0x3

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SETTINGS_SYSTEM_BLUETOOTH_DEFAULT_SCAN_MODE:Ljava/lang/String; = "bluetooth_default_scan_mode"

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

.field private mBluetoothScanMode:I

.field private mDeviceNameBluetooth:Landroid/preference/Preference;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableBluetooth:Landroid/preference/SwitchPreference;

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
    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    .line 991
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$7;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$7;-><init>()V

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 135
    const/16 v0, 0x17

    iput v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothScanMode:I

    .line 136
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->preferenceBluetoothListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 486
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->preferenceBluetoothRenameListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 496
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->preferenceShowReceivedFilesListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 903
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabledIntentFilter:Landroid/content/IntentFilter;

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateDeviceName(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isAlertMark:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isAlertMark:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/bluetooth/BluetoothSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->saveScanModeToSettingsProvider(I)V

    return-void
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;
    .param p4, "addCachedDevices"    # Z

    .prologue
    .line 691
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 692
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 693
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 694
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 695
    if-eqz p4, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 698
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 699
    return-void
.end method

.method private resetBarSize(FII)V
    .locals 12
    .param p1, "titleTextSize"    # F
    .param p2, "actionBarHeight"    # I
    .param p3, "switchBarHeight"    # I

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 288
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 290
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "action_bar"

    const-string v10, "id"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 292
    .local v6, "titleId":I
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    .line 293
    .local v7, "toolbar":Landroid/widget/Toolbar;
    const/4 v5, 0x0

    .line 294
    .local v5, "title":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 295
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 296
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x1

    int-to-float v9, p2

    invoke-static {v8, v9, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 299
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 300
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 301
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "title":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 303
    .restart local v5    # "title":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 305
    .local v1, "childLayoutParams":Landroid/widget/Toolbar$LayoutParams;
    const/16 v8, 0x10

    iput v8, v1, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 299
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "childLayoutParams":Landroid/widget/Toolbar$LayoutParams;
    .end local v3    # "i":I
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    if-eqz v5, :cond_2

    .line 309
    const/4 v8, 0x1

    invoke-virtual {v5, v8, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 310
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v8, :cond_3

    .line 311
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v8}, Lcom/android/settings_ex/widget/SwitchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 312
    .restart local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x1

    int-to-float v9, p3

    invoke-static {v8, v9, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 316
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method private saveScanModeToSettingsProvider(I)V
    .locals 2
    .param p1, "scanMode"    # I

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_default_scan_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    return-void
.end method

.method private setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 989
    :cond_0
    return-void
.end method

.method private setOffMessage()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 835
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    if-nez v6, :cond_0

    .line 871
    :goto_0
    return-void

    .line 838
    :cond_0
    const v6, 0x7f0c0492

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 840
    .local v2, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 841
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v6, "ble_scan_always_enabled"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_1

    .line 844
    .local v0, "bleScanningMode":Z
    :goto_1
    if-nez v0, :cond_2

    .line 847
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 866
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 867
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 868
    .local v1, "boldSpan":Landroid/text/Spannable;
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1030044

    invoke-direct {v6, v7, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-interface {v1, v6, v5, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .end local v0    # "bleScanningMode":Z
    .end local v1    # "boldSpan":Landroid/text/Spannable;
    :cond_1
    move v0, v5

    .line 841
    goto :goto_1

    .line 849
    .restart local v0    # "bleScanningMode":Z
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 850
    .local v3, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 851
    const-string v6, "\n\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const v6, 0x7f0c0493

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 853
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v7, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    invoke-static {v6, v3, v7}, Lcom/android/settings_ex/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings_ex/LinkifyUtils$OnClickListener;)Z

    goto :goto_2
.end method

.method private startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 658
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    :goto_0
    return-void

    .line 662
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 663
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 664
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 668
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 669
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 673
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 678
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 679
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0

    .line 676
    :cond_3
    const-string v0, "BluetoothSettings"

    const-string v1, "mAvailableDevicesCategory is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateContent(I)V
    .locals 11
    .param p1, "bluetoothState"    # I

    .prologue
    const/16 v10, 0x15

    const/4 v7, 0x1

    const/16 v9, 0x17

    const/4 v8, 0x0

    .line 702
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 703
    .local v3, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 705
    .local v0, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 823
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 824
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 825
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 826
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 827
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mShowReceivedFiles:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 829
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 830
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 832
    :cond_1
    :goto_1
    return-void

    .line 707
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 708
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 709
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mShowReceivedFiles:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 710
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 711
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 712
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 713
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameBluetooth:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 714
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 716
    :cond_2
    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 717
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 719
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 720
    const v0, 0x7f0c0323

    .line 721
    goto :goto_0

    .line 725
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_9

    .line 726
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 730
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 732
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0c0487

    sget-object v6, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 735
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 738
    .local v2, "numberOfPairedDevices":I
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_4

    if-gtz v2, :cond_5

    .line 739
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 740
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 744
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_a

    .line 745
    new-instance v4, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 747
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    .line 751
    :goto_3
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider2:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 752
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0c0488

    sget-object v6, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 756
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 758
    .local v1, "numberOfAvailableDevices":I
    if-gez v1, :cond_6

    .line 759
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider2:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 761
    :cond_6
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez v4, :cond_7

    .line 762
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startScanning()V

    .line 765
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v4, :cond_8

    .line 766
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 771
    :cond_8
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 772
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 774
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 779
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v4, :cond_1

    .line 783
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bluetooth_default_scan_mode"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothScanMode:I

    .line 785
    iget v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothScanMode:I

    if-ne v4, v9, :cond_b

    .line 786
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4, v9}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 787
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 789
    invoke-direct {p0, v9}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->saveScanModeToSettingsProvider(I)V

    .line 794
    :goto_4
    iput-boolean v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    goto/16 :goto_1

    .line 728
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_2

    .line 749
    .restart local v2    # "numberOfPairedDevices":I
    :cond_a
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 791
    .restart local v1    # "numberOfAvailableDevices":I
    :cond_b
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4, v10}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 792
    invoke-direct {p0, v10}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->saveScanModeToSettingsProvider(I)V

    goto :goto_4

    .line 799
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :pswitch_1
    const v0, 0x7f0c033c

    .line 800
    goto/16 :goto_0

    .line 808
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-eqz v4, :cond_c

    .line 809
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v4, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v4, v8}, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 812
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 813
    const v0, 0x7f0c0323

    goto/16 :goto_0

    .line 818
    :pswitch_3
    const v0, 0x7f0c033b

    .line 819
    iput-boolean v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    goto/16 :goto_0

    .line 705
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
    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_modified_devicename"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "modified":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_devicename"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
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

    .line 176
    :cond_0
    const-string v3, "ro.display.series"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_devicename"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_modified_devicename"

    const-string v5, "1"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 190
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_4

    .line 191
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameBluetooth:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    if-eqz v0, :cond_2

    .line 193
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 194
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 209
    :cond_2
    :goto_1
    return-void

    .line 183
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    .line 184
    const/4 v3, 0x0

    const/16 v4, 0x1f

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_devicename"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 199
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 200
    .local v1, "mLocalManager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 201
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameBluetooth:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    if-eqz v0, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 1

    .prologue
    .line 514
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 516
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 517
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 941
    const v0, 0x7f0c0bc7

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 221
    const/16 v0, 0x18

    return v0
.end method

.method handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 945
    packed-switch p1, :pswitch_data_0

    .line 976
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setChecked(Z)V

    .line 977
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 980
    :goto_0
    return-void

    .line 953
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 957
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setChecked(Z)V

    .line 958
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 959
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 960
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameBluetooth:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 961
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 962
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mShowReceivedFiles:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 971
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setChecked(Z)V

    .line 972
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 945
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 932
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 933
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 935
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 228
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 232
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x800013

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 235
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 237
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    .line 238
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    .line 240
    const-string v1, "bluetooth_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    .line 241
    const-string v1, "bluetooth_discoverable"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    .line 242
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->preferenceBluetoothListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 244
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    const v2, 0x7f0c0314

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 246
    const-string v1, "bluetooth_device_name"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameBluetooth:Landroid/preference/Preference;

    .line 247
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->preferenceBluetoothListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 249
    const-string v1, "bluetooth_show_received_files"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mShowReceivedFiles:Landroid/preference/Preference;

    .line 250
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mShowReceivedFiles:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->preferenceShowReceivedFilesListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 252
    const-string v1, "preference_divider_line"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 253
    new-instance v1, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 254
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    const-string v2, "preference_divider_line"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPPreferenceDivider;->setKey(Ljava/lang/String;)V

    .line 255
    new-instance v1, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider2:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 256
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider2:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    const-string v2, "preference_divider_line"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPPreferenceDivider;->setKey(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateDeviceName(Landroid/content/Context;)V

    .line 258
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 875
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 878
    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    .line 879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 880
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 881
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, 0x7f0b009b

    .line 262
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 267
    .local v1, "activity":Landroid/app/Activity;
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 268
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 270
    .local v3, "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 272
    .local v2, "switchBarHeight":I
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 282
    .local v0, "actionBarHeight":I
    :goto_0
    invoke-direct {p0, v3, v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->resetBarSize(FII)V

    .line 283
    return-void

    .line 275
    .end local v0    # "actionBarHeight":I
    .end local v2    # "switchBarHeight":I
    .end local v3    # "titleTextSize":F
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 277
    .restart local v3    # "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 279
    .restart local v2    # "switchBarHeight":I
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "actionBarHeight":I
    goto :goto_0
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

    .line 591
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-nez v4, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 598
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_3

    move v0, v2

    .line 599
    .local v0, "bluetoothIsEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 601
    .local v1, "isDiscovering":Z
    if-nez v1, :cond_2

    if-nez v0, :cond_5

    .line 602
    :cond_2
    invoke-interface {p1, v3, v2, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    :goto_2
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020050

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 626
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "isDiscovering":Z
    :cond_3
    move v0, v3

    .line 598
    goto :goto_1

    .restart local v0    # "bluetoothIsEnabled":Z
    .restart local v1    # "isDiscovering":Z
    :cond_4
    move v2, v3

    .line 602
    goto :goto_2

    .line 607
    :cond_5
    invoke-interface {p1, v3, v2, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    :goto_4
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0c047b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02004f

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
    .line 507
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 509
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    .line 510
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 896
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 897
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 898
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 899
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 900
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mShowReceivedFiles:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 901
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 685
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 686
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 631
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 654
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 633
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 636
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 641
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xa1

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 643
    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v2}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "rename device"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 650
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 631
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
    .line 567
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 568
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->pause()V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 576
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 582
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    :goto_1
    return-void

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0

    .line 586
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/16 v5, 0x15

    const/4 v4, 0x1

    const/16 v3, 0x17

    .line 525
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 528
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 530
    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 532
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 535
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0c0323

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 563
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->handleStateChanged(I)V

    .line 541
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 542
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabledIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 544
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 548
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_default_scan_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothScanMode:I

    .line 550
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothScanMode:I

    if-ne v0, v3, :cond_4

    .line 551
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 552
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    const v1, 0x7f0c0313

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 554
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 562
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateDeviceName(Landroid/content/Context;)V

    goto :goto_0

    .line 555
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 556
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 557
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    const v1, 0x7f0c0314

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 559
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 885
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 887
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 890
    :cond_0
    return-void
.end method
