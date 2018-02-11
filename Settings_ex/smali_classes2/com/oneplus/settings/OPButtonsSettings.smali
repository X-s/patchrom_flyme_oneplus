.class public Lcom/oneplus/settings/OPButtonsSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPButtonsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;,
        Lcom/oneplus/settings/OPButtonsSettings$Helper;,
        Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;,
        Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BACKLIGHT_PREF:Ljava/lang/String; = "pre_navbar_button_backlight"

.field public static final GSM_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final KEY_BACK_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_back_double_tap"

.field private static final KEY_BACK_LONG_PRESS:Ljava/lang/String; = "hardware_keys_back_long_press"

.field private static final KEY_BUTTONS_BRIGHTNESS:Ljava/lang/String; = "buttons_brightness"

.field private static final KEY_BUTTONS_ENABLE_ON_SCREEN_NAVKEYS:Ljava/lang/String; = "buttons_enable_on_screen_navkeys"

.field private static final KEY_BUTTONS_FORCE_HOME:Ljava/lang/String; = "buttons_force_home"

.field private static final KEY_BUTTONS_SWAP_NAVKEYS:Ljava/lang/String; = "buttons_swap_navkeys"

.field private static final KEY_CAMERA_DOUBLE_TAP_POWER_GESTURE:Ljava/lang/String; = "camera_double_tap_power_gesture"

.field private static final KEY_CATEGORY_BACK:Ljava/lang/String; = "back_key"

.field private static final KEY_CATEGORY_HOME:Ljava/lang/String; = "home_key"

.field private static final KEY_CATEGORY_MENU:Ljava/lang/String; = "menu_key"

.field private static final KEY_HIDE_NAVKEYS:Ljava/lang/String; = "hide_navkeys"

.field private static final KEY_HOME_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_home_double_tap"

.field private static final KEY_HOME_LONG_PRESS:Ljava/lang/String; = "hardware_keys_home_long_press"

.field private static final KEY_LOCK_MODE_FOOT:I = 0x4

.field private static final KEY_LOCK_MODE_HOME:I = 0x3

.field private static final KEY_LOCK_MODE_POWER_HOME:I = 0x2

.field private static final KEY_MENU_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_menu_double_tap"

.field private static final KEY_MENU_LONG_PRESS:Ljava/lang/String; = "hardware_keys_menu_long_press"

.field public static final QUICKPAY_VALUE:Ljava/lang/String; = "11"

.field private static final REFRESH_PREPERENCE:I = 0x1

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "SystemSettings"


# instance fields
.field private mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

.field private mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private final mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

.field private mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->getNonVisibleKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/settings/OPButtonsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 718
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;-><init>()V

    .line 717
    sput-object v0, Lcom/oneplus/settings/OPButtonsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 688
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;-><init>(Lcom/oneplus/settings/OPButtonsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    .line 67
    return-void
.end method

.method public static checkGMS(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 194
    const-string/jumbo v3, "com.google.android.googlequicksearchbox"

    const/16 v4, 0x2000

    .line 193
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 195
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x1

    return v2

    .line 196
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method private static getNonVisibleKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "buttons_enable_on_screen_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    const-string/jumbo v1, "buttons_swap_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    const-string/jumbo v1, "buttons_brightness"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    const-string/jumbo v1, "buttons_force_home"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    const-string/jumbo v1, "hardware_keys_home_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    const-string/jumbo v1, "hardware_keys_home_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    const-string/jumbo v1, "hardware_keys_menu_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    const-string/jumbo v1, "hardware_keys_menu_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    const-string/jumbo v1, "hardware_keys_back_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    const-string/jumbo v1, "hardware_keys_back_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    const-string/jumbo v1, "home_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    const-string/jumbo v1, "menu_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    const-string/jumbo v1, "back_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    const-string/jumbo v1, "pre_navbar_button_backlight"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    return-object v0
.end method

.method private handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p1, "pref"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 230
    instance-of v5, p1, Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 231
    check-cast v1, Landroid/support/v7/preference/ListPreference;

    .local v1, "listPref":Landroid/support/v7/preference/ListPreference;
    move-object v3, p2

    .line 232
    check-cast v3, Ljava/lang/String;

    .line 233
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, "index":I
    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, p3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    .end local v0    # "index":I
    .end local v1    # "listPref":Landroid/support/v7/preference/ListPreference;
    .end local v3    # "value":Ljava/lang/String;
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v5, p1, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v5, :cond_0

    .line 237
    const/4 v2, 0x0

    .line 238
    .local v2, "state":Z
    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    .line 239
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 243
    .end local v2    # "state":Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-static {v5, p3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 240
    .restart local v2    # "state":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 241
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 223
    .local v0, "list":Landroid/support/v7/preference/ListPreference;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 226
    return-object v0
.end method

.method private initListViewPrefs()V
    .locals 15

    .prologue
    .line 301
    sget-object v13, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v13}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 303
    .local v12, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 304
    const v14, 0x10e0062

    .line 303
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 306
    .local v5, "defaultLongPressOnHomeBehavior":I
    const-string/jumbo v13, "key_home_long_press_action"

    .line 305
    invoke-static {v12, v13, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 308
    .local v11, "longPressOnHomeBehavior":I
    const-string/jumbo v13, "hardware_keys_home_long_press"

    invoke-direct {p0, v13, v11}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 310
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 311
    const v14, 0x10e0063

    .line 310
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 313
    .local v2, "defaultDoubleTapOnHomeBehavior":I
    const-string/jumbo v13, "key_home_double_tap_action"

    .line 312
    invoke-static {v12, v13, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 315
    .local v8, "doubleTapOnHomeBehavior":I
    const-string/jumbo v13, "hardware_keys_home_double_tap"

    invoke-direct {p0, v13, v8}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 333
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 334
    const v14, 0x5090007

    .line 333
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 336
    .local v3, "defaultLongPressOnAppSwitchBehavior":I
    const-string/jumbo v13, "key_app_switch_long_press_action"

    .line 335
    invoke-static {v12, v13, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 338
    .local v9, "longPressOnAppSwitchBehavior":I
    const-string/jumbo v13, "hardware_keys_menu_long_press"

    invoke-direct {p0, v13, v9}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 356
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 357
    const v14, 0x5090003

    .line 356
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 359
    .local v0, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string/jumbo v13, "key_app_switch_double_tap_action"

    .line 358
    invoke-static {v12, v13, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 361
    .local v6, "doubleTapOnAppSwitchBehavior":I
    const-string/jumbo v13, "hardware_keys_menu_double_tap"

    invoke-direct {p0, v13, v6}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 364
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 365
    const v14, 0x5090008

    .line 364
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 367
    .local v4, "defaultLongPressOnBackBehavior":I
    const-string/jumbo v13, "key_back_long_press_action"

    .line 366
    invoke-static {v12, v13, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 369
    .local v10, "longPressOnBackBehavior":I
    const-string/jumbo v13, "hardware_keys_back_long_press"

    invoke-direct {p0, v13, v10}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 372
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 373
    const v14, 0x5090004

    .line 372
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 375
    .local v1, "defaultDoubleTapOnBackBehavior":I
    const-string/jumbo v13, "key_back_double_tap_action"

    .line 374
    invoke-static {v12, v13, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 377
    .local v7, "doubleTapOnBackBehavior":I
    const-string/jumbo v13, "hardware_keys_back_double_tap"

    invoke-direct {p0, v13, v7}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 378
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v13

    if-nez v13, :cond_5

    .line 379
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_0

    .line 380
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0a0086

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 381
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0a0087

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 383
    :cond_0
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_1

    .line 384
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0a0086

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 385
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0a0087

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 387
    :cond_1
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_2

    .line 388
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0a0086

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 389
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0a0087

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 391
    :cond_2
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_3

    .line 392
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0a0086

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 393
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0a0087

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 395
    :cond_3
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_4

    .line 396
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0a0086

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 397
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0a0087

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 399
    :cond_4
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_5

    .line 400
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0a0086

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 401
    iget-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v14, 0x7f0a0087

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 300
    :cond_5
    return-void
.end method

.method private initListViewPrefsnogms()V
    .locals 5

    .prologue
    const v4, 0x7f0a0085

    const v3, 0x7f0a0084

    const v2, 0x7f0a008b

    const v1, 0x7f0a008a

    .line 255
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 257
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 272
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 274
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 275
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 276
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 277
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 278
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 279
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 280
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 281
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 252
    :goto_1
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 260
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 285
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 286
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 288
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 289
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 290
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 291
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 292
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 293
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 294
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 295
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1
.end method

.method private initPrefs()V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefs()V

    .line 170
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefsnogms()V

    .line 166
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0a0082

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 177
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 180
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 184
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0a0089

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 204
    const v0, 0x11200ae

    .line 203
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isSupportHardwareKeys()Z
    .locals 3

    .prologue
    .line 248
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 249
    .local v0, "SupportHardwareKeysValue":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadPreferenceScreen()V
    .locals 18

    .prologue
    .line 407
    sget-object v15, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    if-eqz v15, :cond_5

    .line 408
    sget-object v15, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v15}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 409
    .local v12, "resolver":Landroid/content/ContentResolver;
    sget-object v15, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v15}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 410
    const v16, 0x7f0d0017

    .line 409
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 413
    .local v3, "defaultBrightness":I
    const-string/jumbo v15, "buttons_brightness"

    .line 412
    invoke-static {v12, v15, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_6

    const/4 v2, 0x1

    .line 416
    .local v2, "buttonsBrightnessEnabled":Z
    :goto_0
    const-string/jumbo v15, "buttons_show_on_screen_navkeys"

    const/16 v16, 0x0

    .line 415
    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_7

    const/4 v10, 0x1

    .line 419
    .local v10, "onScreenNavKeysEnabled":Z
    :goto_1
    const-string/jumbo v15, "buttons_force_home_enabled"

    const/16 v16, 0x0

    .line 418
    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_8

    const/4 v5, 0x1

    .line 421
    .local v5, "forceHomeEnabled":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 422
    const-string/jumbo v16, "oem_acc_key_define"

    const/16 v17, 0x0

    .line 421
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_9

    const/4 v13, 0x1

    .line 423
    .local v13, "swapNavkeysEnabled":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15, v13}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 426
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 429
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 432
    const-string/jumbo v15, "oem_acc_key_lock_mode"

    sget-object v16, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->NORMAL:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->ordinal()I

    move-result v16

    .line 431
    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 432
    sget-object v16, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->FOOT:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->ordinal()I

    move-result v16

    .line 431
    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 432
    const/4 v4, 0x0

    .line 433
    .local v4, "enableOnScreenNavkeys":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    .line 441
    .local v11, "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    const-string/jumbo v15, "home_key"

    invoke-virtual {v11, v15}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    .line 443
    .local v6, "homeCategory":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v15, "menu_key"

    invoke-virtual {v11, v15}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceCategory;

    .line 445
    .local v9, "menuCategory":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v15, "back_key"

    invoke-virtual {v11, v15}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    .line 448
    .local v1, "backCategory":Landroid/support/v7/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v15, :cond_0

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v16, v0

    if-eqz v10, :cond_b

    const/4 v15, 0x0

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 451
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 452
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v15, :cond_1

    .line 453
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 455
    :cond_1
    if-eqz v6, :cond_2

    .line 456
    if-nez v5, :cond_d

    if-eqz v10, :cond_c

    const/4 v7, 0x0

    .line 457
    .local v7, "homeEnabled":Z
    :goto_6
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 459
    .end local v7    # "homeEnabled":Z
    :cond_2
    if-eqz v9, :cond_3

    .line 460
    if-eqz v10, :cond_e

    const/4 v15, 0x0

    :goto_7
    invoke-virtual {v9, v15}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 462
    :cond_3
    if-eqz v1, :cond_4

    .line 463
    if-eqz v10, :cond_f

    const/4 v15, 0x0

    :goto_8
    invoke-virtual {v1, v15}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 465
    :cond_4
    const-string/jumbo v15, "hide_navkeys"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 475
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 476
    const-string/jumbo v16, "emergency_affordance_needed"

    const/16 v17, 0x0

    .line 475
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_12

    const/4 v8, 0x1

    .line 477
    .local v8, "inEmergencyCall":Z
    :goto_a
    if-eqz v8, :cond_13

    .line 478
    const-string/jumbo v15, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 484
    :goto_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v15, :cond_5

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "camera_double_tap_power_gesture_disabled"

    const/16 v17, 0x0

    .line 485
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 487
    .local v14, "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v16, v0

    if-nez v14, :cond_14

    const/4 v15, 0x1

    :goto_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 406
    .end local v1    # "backCategory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v2    # "buttonsBrightnessEnabled":Z
    .end local v3    # "defaultBrightness":I
    .end local v4    # "enableOnScreenNavkeys":Z
    .end local v5    # "forceHomeEnabled":Z
    .end local v6    # "homeCategory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v8    # "inEmergencyCall":Z
    .end local v9    # "menuCategory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v10    # "onScreenNavKeysEnabled":Z
    .end local v11    # "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    .end local v12    # "resolver":Landroid/content/ContentResolver;
    .end local v13    # "swapNavkeysEnabled":Z
    .end local v14    # "value":I
    :cond_5
    return-void

    .line 412
    .restart local v3    # "defaultBrightness":I
    .restart local v12    # "resolver":Landroid/content/ContentResolver;
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "buttonsBrightnessEnabled":Z
    goto/16 :goto_0

    .line 415
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "onScreenNavKeysEnabled":Z
    goto/16 :goto_1

    .line 418
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "forceHomeEnabled":Z
    goto/16 :goto_2

    .line 421
    :cond_9
    const/4 v13, 0x0

    .restart local v13    # "swapNavkeysEnabled":Z
    goto/16 :goto_3

    .line 432
    :cond_a
    const/4 v4, 0x1

    .restart local v4    # "enableOnScreenNavkeys":Z
    goto/16 :goto_4

    .line 449
    .restart local v1    # "backCategory":Landroid/support/v7/preference/PreferenceCategory;
    .restart local v6    # "homeCategory":Landroid/support/v7/preference/PreferenceCategory;
    .restart local v9    # "menuCategory":Landroid/support/v7/preference/PreferenceCategory;
    .restart local v11    # "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_b
    const/4 v15, 0x1

    goto/16 :goto_5

    .line 456
    :cond_c
    const/4 v7, 0x1

    goto :goto_6

    :cond_d
    move v7, v5

    goto :goto_6

    .line 460
    :cond_e
    const/4 v15, 0x1

    goto :goto_7

    .line 463
    :cond_f
    const/4 v15, 0x1

    goto :goto_8

    .line 467
    :cond_10
    const-string/jumbo v15, "buttons_brightness"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 468
    const-string/jumbo v15, "buttons_enable_on_screen_navkeys"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 469
    const-string/jumbo v15, "buttons_force_home"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "oneplus_navigationbar_hide_button"

    const/16 v17, 0x0

    .line 470
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 472
    .restart local v14    # "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v16, v0

    const/4 v15, 0x1

    if-eq v14, v15, :cond_11

    const/4 v15, 0x1

    :goto_d
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_9

    :cond_11
    const/4 v15, 0x0

    goto :goto_d

    .line 475
    .end local v14    # "value":I
    :cond_12
    const/4 v8, 0x0

    goto :goto_a

    .line 480
    .restart local v8    # "inEmergencyCall":Z
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v16, v0

    #invoke-virtual/range {v15 .. v16}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_b

    .line 487
    .restart local v14    # "value":I
    :cond_14
    const/4 v15, 0x0

    goto :goto_c
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->addPreferencesFromResource(I)V

    .line 137
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPButtonsSettings$1;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    .line 147
    const-string/jumbo v0, "buttons_enable_on_screen_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    const-string/jumbo v0, "buttons_swap_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 150
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    const-string/jumbo v0, "buttons_brightness"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    .line 152
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    const-string/jumbo v0, "buttons_force_home"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    .line 154
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0
    goto :cond_0

    .line 157
    const-string/jumbo v0, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 156
    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    :goto_0
    const-string/jumbo v0, "hide_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    const-string/jumbo v0, "buttons_enable_on_screen_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "buttons_force_home"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    return-void

    .line 160
    :cond_0
    const-string/jumbo v0, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 218
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    .line 216
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "state":Z
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 497
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 501
    .end local v0    # "state":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_3

    .line 502
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 504
    const-string/jumbo v4, "oem_acc_key_define"

    .line 502
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    return v5

    .line 498
    .restart local v0    # "state":Z
    :cond_1
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 499
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 506
    .end local v0    # "state":Z
    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_5

    .line 507
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v4, "key_home_long_press_action"

    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    .line 511
    check-cast v1, Ljava/lang/String;

    .line 512
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v3, "11"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 513
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    .line 516
    :cond_4
    return v5

    .line 517
    .end local v1    # "value":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_6

    .line 518
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 520
    const-string/jumbo v4, "key_home_double_tap_action"

    .line 518
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    return v5

    .line 522
    :cond_6
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_7

    .line 523
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 535
    const-string/jumbo v4, "key_app_switch_long_press_action"

    .line 523
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    return v5

    .line 537
    :cond_7
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_8

    .line 538
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 550
    const-string/jumbo v4, "key_app_switch_double_tap_action"

    .line 538
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    return v5

    .line 552
    :cond_8
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_9

    .line 553
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 555
    const-string/jumbo v4, "key_back_long_press_action"

    .line 553
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    return v5

    .line 557
    :cond_9
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_a

    .line 558
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 560
    const-string/jumbo v4, "key_back_double_tap_action"

    .line 558
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    return v5

    .line 562
    :cond_a
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_b

    .line 563
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v4}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->setHWButtonsLightsState(Landroid/content/Context;ZZ)V

    .line 564
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    .line 565
    return v5

    .line 566
    :cond_b
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_c

    .line 567
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->updateSettings(Landroid/content/Context;Z)V

    .line 568
    const-string/jumbo v3, "buttons_enable_on_screen_navkeys"

    invoke-static {v3, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    .line 569
    return v5

    .line 570
    :cond_c
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_d

    .line 571
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    .line 573
    const-string/jumbo v4, "buttons_force_home_enabled"

    .line 571
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    .line 575
    return v5

    .line 576
    :cond_d
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_f

    .line 578
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 579
    .local v2, "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "camera_double_tap_power_gesture_disabled"

    .line 580
    if-eqz v2, :cond_e

    move v3, v4

    .line 579
    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 581
    return v5

    :cond_e
    move v3, v5

    .line 580
    goto :goto_1

    .line 583
    .end local v2    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_f
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_11

    .line 584
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 585
    .restart local v2    # "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "oneplus_navigationbar_hide_button"

    .line 586
    if-eqz v2, :cond_10

    .line 585
    :goto_2
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 587
    return v5

    :cond_10
    move v4, v5

    .line 586
    goto :goto_2

    .line 589
    .end local v2    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_11
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 596
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPButtonsSettings$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPButtonsSettings$2;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    .line 601
    const-wide/16 v2, 0x3e8

    .line 596
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 603
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 210
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initPrefs()V

    .line 211
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    .line 212
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    .line 208
    return-void
.end method
