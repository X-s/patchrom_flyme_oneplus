.class public final Lcom/android/settings_ex/bluetooth/BluetoothSettings;
.super Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;,
        Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;,
        Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;,
        Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;,
        Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final BTOPP_ACTION_OPEN_RECEIVED_FILES:Ljava/lang/String; = "android.btopp.intent.action.OPEN_RECEIVED_FILES"

.field private static final KEY_PAIRED_DEVICES:Ljava/lang/String; = "paired_devices"

.field private static final MENU_ID_RENAME_DEVICE:I = 0x2

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final MENU_ID_SHOW_RECEIVED:I = 0x3

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SETTINGS_SYSTEM_BLUETOOTH_DEFAULT_SCAN_MODE:Ljava/lang/String; = "bluetooth_default_scan_mode"

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "BluetoothSettings"

.field private static mSettingsDialogView:Landroid/view/View;


# instance fields
.field private mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

.field private mBluetoothScanMode:I

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableBluetooth:Landroid/support/v14/preference/SwitchPreference;

.field private mDiscoverableBluetoothDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

.field private mInitialScanStarted:Z

.field private mInitiateDiscoverable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/support/v7/preference/Preference;

.field private mPairedBluetoothDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

.field private mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/bluetooth/BluetoothSettings;I)V
    .locals 0
    .param p1, "scanMode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->saveScanModeToSettingsProvider(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    .line 760
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;-><init>()V

    .line 759
    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 769
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;-><init>()V

    .line 768
    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 151
    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 117
    const/16 v0, 0x17

    iput v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothScanMode:I

    .line 120
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 651
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 150
    return-void
.end method

.method private addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;
    .param p4, "addCachedDevices"    # Z

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 463
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 464
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 465
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 466
    if-eqz p4, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 469
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->setEnabled(Z)V

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 461
    return-void
.end method

.method private resetBarSize(FII)V
    .locals 12
    .param p1, "titleTextSize"    # F
    .param p2, "actionBarHeight"    # I
    .param p3, "switchBarHeight"    # I

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 237
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 238
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "action_bar"

    const-string/jumbo v10, "id"

    const-string/jumbo v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 239
    .local v6, "titleId":I
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    .line 240
    .local v7, "toolbar":Landroid/widget/Toolbar;
    const/4 v5, 0x0

    .line 241
    .local v5, "title":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 242
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 244
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v8, p2

    .line 243
    const/4 v9, 0x1

    invoke-static {v9, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 245
    const/4 v3, 0x0

    .end local v5    # "title":Landroid/widget/TextView;
    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 246
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 247
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 249
    :cond_0
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 251
    .local v1, "childLayoutParams":Landroid/widget/Toolbar$LayoutParams;
    const/16 v8, 0x10

    iput v8, v1, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "childLayoutParams":Landroid/widget/Toolbar$LayoutParams;
    .end local v3    # "i":I
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    if-eqz v5, :cond_2

    .line 255
    const/4 v8, 0x1

    invoke-virtual {v5, v8, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 256
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v8, :cond_3

    .line 257
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v8}, Lcom/android/settings_ex/widget/SwitchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 259
    .restart local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v8, p3

    .line 258
    const/4 v9, 0x1

    invoke-static {v9, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 235
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method private saveScanModeToSettingsProvider(I)V
    .locals 2
    .param p1, "scanMode"    # I

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 206
    const-string/jumbo v1, "bluetooth_default_scan_mode"

    .line 205
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    return-void
.end method

.method private setOffMessage()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 590
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 591
    .local v4, "emptyView":Landroid/widget/TextView;
    if-nez v4, :cond_0

    .line 592
    return-void

    .line 594
    :cond_0
    const v7, 0x7f0e06ad

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 596
    .local v2, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 598
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v7, "ble_scan_always_enabled"

    .line 597
    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v0, :cond_1

    .line 600
    .local v0, "bleScanningMode":Z
    :goto_0
    if-nez v0, :cond_2

    .line 602
    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 618
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 619
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 621
    .local v1, "boldSpan":Landroid/text/Spannable;
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030044

    invoke-direct {v7, v8, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 622
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/16 v9, 0x21

    .line 620
    invoke-interface {v1, v7, v6, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 589
    return-void

    .end local v0    # "bleScanningMode":Z
    .end local v1    # "boldSpan":Landroid/text/Spannable;
    :cond_1
    move v0, v6

    .line 597
    goto :goto_0

    .line 604
    .restart local v0    # "bleScanningMode":Z
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .local v3, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 606
    const-string/jumbo v7, "\n\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const v7, 0x7f0e06ae

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 608
    new-instance v7, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    invoke-static {v4, v3, v7}, Lcom/android/settings_ex/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings_ex/LinkifyUtils$OnClickListener;)Z

    goto :goto_1
.end method

.method private startScanning()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 429
    const-string/jumbo v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startScanning isUiRestricted() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    return-void

    .line 434
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 435
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 436
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 450
    :goto_0
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 428
    return-void

    .line 448
    :cond_3
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "mAvailableDevicesCategory is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private update()V
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/16 v2, 0x17

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 342
    const-string/jumbo v1, "bluetooth_default_scan_mode"

    .line 341
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothScanMode:I

    .line 344
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothScanMode:I

    if-ne v0, v2, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 346
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/support/v14/preference/SwitchPreference;

    .line 347
    const v1, 0x7f0e04fd

    .line 346
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothScanMode:I

    if-ne v0, v3, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/support/v14/preference/SwitchPreference;

    .line 352
    const v1, 0x7f0e04fe

    .line 351
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateContent(I)V
    .locals 12
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v11, 0x0

    .line 474
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    .line 475
    .local v5, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    const/4 v3, 0x0

    .line 477
    .local v3, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 579
    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 580
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 581
    if-eqz v3, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(I)V

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v7

    if-nez v7, :cond_2

    .line 585
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 473
    :cond_2
    return-void

    .line 481
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "oem_oneplus_devicename"

    .line 480
    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "mDeviceName":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 483
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v7, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 486
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v7}, Ljava/util/WeakHashMap;->clear()V

    .line 488
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 489
    const v3, 0x7f0e050d

    .line 490
    goto :goto_0

    .line 492
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 493
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 495
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedBluetoothDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 497
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 498
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 501
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 503
    sget-object v8, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 502
    const v9, 0x7f0e06a2

    .line 503
    const/4 v10, 0x1

    .line 501
    invoke-direct {p0, v7, v9, v8, v10}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 504
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    .line 506
    .local v4, "numberOfPairedDevices":I
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v7

    if-nez v7, :cond_5

    if-gtz v4, :cond_9

    .line 507
    :cond_5
    const-string/jumbo v7, "paired_devices"

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 508
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 510
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedBluetoothDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 521
    :cond_6
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 522
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetoothDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 526
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 528
    sget-object v8, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 527
    const v10, 0x7f0e06a3

    .line 526
    invoke-direct {p0, v7, v10, v8, v9}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 530
    iget-boolean v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez v7, :cond_7

    .line 531
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startScanning()V

    .line 534
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 535
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 536
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v0

    .line 543
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 547
    iget-boolean v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v7, :cond_8

    .line 552
    iput-boolean v11, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 554
    :cond_8
    return-void

    .line 514
    .end local v0    # "bidiFormatter":Landroid/text/BidiFormatter;
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_9
    const-string/jumbo v7, "paired_devices"

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_6

    .line 515
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 516
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedBluetoothDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 557
    .end local v2    # "mDeviceName":Ljava/lang/String;
    .end local v4    # "numberOfPairedDevices":I
    :pswitch_1
    const v3, 0x7f0e0526

    .line 558
    goto/16 :goto_0

    .line 562
    :pswitch_2
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v7}, Ljava/util/WeakHashMap;->clear()V

    .line 565
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->cancelRunnable()V

    .line 567
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setOffMessage()V

    .line 568
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 569
    const v3, 0x7f0e050d

    goto/16 :goto_0

    .line 574
    :pswitch_3
    const v3, 0x7f0e0525

    .line 575
    iput-boolean v11, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    goto/16 :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 272
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 274
    new-instance v0, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetoothDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetoothDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/ui/OPPreferenceDivider;->setOrder(I)V

    .line 278
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v1, "paired_devices"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    .line 284
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 287
    new-instance v0, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedBluetoothDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedBluetoothDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPPreferenceDivider;->setOrder(I)V

    .line 291
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceGroup;->setSelectable(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    .line 297
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 299
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    .line 300
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 307
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 271
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 686
    const v0, 0x7f0e0d75

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 157
    const/16 v0, 0x18

    return v0
.end method

.method initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 677
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 678
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 162
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 164
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 168
    new-instance v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/support/v14/preference/SwitchPreference;

    .line 169
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e0319

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/support/v14/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 197
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 199
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    .line 200
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    .line 161
    return-void

    .end local v0    # "activity":Lcom/android/settings_ex/SettingsActivity;
    :cond_0
    move v1, v3

    .line 164
    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 627
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 630
    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 632
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 626
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, 0x7f0f022c

    .line 212
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 217
    .local v1, "activity":Landroid/app/Activity;
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 218
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 219
    const v5, 0x7f0f0227

    .line 218
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 220
    .local v3, "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 221
    const v5, 0x7f0f022b

    .line 220
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 222
    .local v2, "switchBarHeight":I
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 223
    const v5, 0x7f0f0229

    .line 222
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 232
    .local v0, "actionBarHeight":I
    :goto_0
    invoke-direct {p0, v3, v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->resetBarSize(FII)V

    .line 211
    return-void

    .line 225
    .end local v0    # "actionBarHeight":I
    .end local v2    # "switchBarHeight":I
    .end local v3    # "titleTextSize":F
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 226
    const v5, 0x7f0f0228

    .line 225
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 227
    .restart local v3    # "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 229
    .restart local v2    # "switchBarHeight":I
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "actionBarHeight":I
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 379
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-nez v5, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    .line 383
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 384
    .local v0, "bluetoothIsEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 385
    .local v1, "isDiscovering":Z
    if-eqz v1, :cond_5

    const v2, 0x7f0e0697

    .line 387
    .local v2, "textId":I
    :goto_1
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    .line 388
    if-eqz v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v3, v4

    .line 387
    :cond_3
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 390
    const/4 v3, 0x2

    const v5, 0x7f0e0509

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 393
    const/4 v3, 0x3

    const v5, 0x7f0e051a

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 395
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 378
    return-void

    .line 383
    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "isDiscovering":Z
    .end local v2    # "textId":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "bluetoothIsEnabled":Z
    goto :goto_0

    .line 386
    .restart local v1    # "isDiscovering":Z
    :cond_5
    const v2, 0x7f0e0696

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    .line 264
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 647
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 648
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 645
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 457
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 455
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    .line 400
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 425
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 402
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 404
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startScanning()V

    .line 406
    :cond_0
    return v7

    .line 413
    :pswitch_1
    const-string/jumbo v2, "com.oneplus.settings.OPDeviceName"

    .line 414
    const v3, 0x7f0e0310

    .line 415
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 413
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 417
    return v7

    .line 420
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 421
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 423
    return v7

    .line 400
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
    .line 360
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->pause()V

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    return-void

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 359
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->update()V

    .line 320
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 324
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e050d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 330
    return-void

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 311
    :cond_3
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 637
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 639
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 636
    :cond_0
    return-void
.end method
