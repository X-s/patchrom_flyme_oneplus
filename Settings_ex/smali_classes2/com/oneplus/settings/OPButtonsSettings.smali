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
    .line 635
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;-><init>()V

    .line 634
    sput-object v0, Lcom/oneplus/settings/OPButtonsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 605
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
    .line 179
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 180
    const-string/jumbo v3, "com.google.android.googlequicksearchbox"

    const/16 v4, 0x2000

    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 181
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x1

    return v2

    .line 182
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 183
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
    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "buttons_enable_on_screen_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    const-string/jumbo v1, "buttons_swap_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    const-string/jumbo v1, "buttons_brightness"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    const-string/jumbo v1, "buttons_force_home"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    const-string/jumbo v1, "hardware_keys_home_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    const-string/jumbo v1, "hardware_keys_home_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    const-string/jumbo v1, "hardware_keys_menu_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    const-string/jumbo v1, "hardware_keys_menu_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    const-string/jumbo v1, "hardware_keys_back_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    const-string/jumbo v1, "hardware_keys_back_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    const-string/jumbo v1, "home_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    const-string/jumbo v1, "menu_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    const-string/jumbo v1, "back_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    const-string/jumbo v1, "pre_navbar_button_backlight"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    return-object v0
.end method

.method private handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p1, "pref"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 216
    instance-of v5, p1, Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 217
    check-cast v1, Landroid/support/v7/preference/ListPreference;

    .local v1, "listPref":Landroid/support/v7/preference/ListPreference;
    move-object v3, p2

    .line 218
    check-cast v3, Ljava/lang/String;

    .line 219
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, "index":I
    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, p3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    .end local v0    # "index":I
    .end local v1    # "listPref":Landroid/support/v7/preference/ListPreference;
    .end local v3    # "value":Ljava/lang/String;
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 222
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v5, p1, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v5, :cond_0

    .line 223
    const/4 v2, 0x0

    .line 224
    .local v2, "state":Z
    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    .line 225
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 229
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

    .line 226
    .restart local v2    # "state":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 227
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
    .line 208
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 209
    .local v0, "list":Landroid/support/v7/preference/ListPreference;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    return-object v0
.end method

.method private initListViewPrefs()V
    .locals 15

    .prologue
    .line 257
    sget-object v13, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v13}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 260
    .local v12, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 261
    const v14, 0x10e0062

    .line 260
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 263
    .local v5, "defaultLongPressOnHomeBehavior":I
    const-string/jumbo v13, "key_home_long_press_action"

    .line 262
    invoke-static {v12, v13, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 265
    .local v11, "longPressOnHomeBehavior":I
    const-string/jumbo v13, "hardware_keys_home_long_press"

    invoke-direct {p0, v13, v11}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 267
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 268
    const v14, 0x10e0063

    .line 267
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 271
    .local v2, "defaultDoubleTapOnHomeBehavior":I
    const-string/jumbo v13, "key_home_double_tap_action"

    .line 270
    invoke-static {v12, v13, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 273
    .local v8, "doubleTapOnHomeBehavior":I
    const-string/jumbo v13, "hardware_keys_home_double_tap"

    invoke-direct {p0, v13, v8}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 291
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 292
    const v14, 0x5090007

    .line 291
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 294
    .local v3, "defaultLongPressOnAppSwitchBehavior":I
    const-string/jumbo v13, "key_app_switch_long_press_action"

    .line 293
    invoke-static {v12, v13, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 296
    .local v9, "longPressOnAppSwitchBehavior":I
    const-string/jumbo v13, "hardware_keys_menu_long_press"

    invoke-direct {p0, v13, v9}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 314
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 315
    const v14, 0x5090003

    .line 314
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 317
    .local v0, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string/jumbo v13, "key_app_switch_double_tap_action"

    .line 316
    invoke-static {v12, v13, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 319
    .local v6, "doubleTapOnAppSwitchBehavior":I
    const-string/jumbo v13, "hardware_keys_menu_double_tap"

    invoke-direct {p0, v13, v6}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 322
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 323
    const v14, 0x5090008

    .line 322
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 325
    .local v4, "defaultLongPressOnBackBehavior":I
    const-string/jumbo v13, "key_back_long_press_action"

    .line 324
    invoke-static {v12, v13, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 327
    .local v10, "longPressOnBackBehavior":I
    const-string/jumbo v13, "hardware_keys_back_long_press"

    invoke-direct {p0, v13, v10}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 330
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 331
    const v14, 0x5090004

    .line 330
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 333
    .local v1, "defaultDoubleTapOnBackBehavior":I
    const-string/jumbo v13, "key_back_double_tap_action"

    .line 332
    invoke-static {v12, v13, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 335
    .local v7, "doubleTapOnBackBehavior":I
    const-string/jumbo v13, "hardware_keys_back_double_tap"

    invoke-direct {p0, v13, v7}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 256
    return-void
.end method

.method private initListViewPrefsnogms()V
    .locals 4

    .prologue
    const v3, 0x7f0a0085

    const v2, 0x7f0a0084

    .line 235
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 245
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 246
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 247
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 248
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 249
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 250
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 251
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 253
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 233
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0a0097

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 240
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0
.end method

.method private initPrefs()V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefs()V

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefsnogms()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0a0082

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 190
    const v0, 0x11200ae

    .line 189
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private loadPreferenceScreen()V
    .locals 18

    .prologue
    .line 339
    sget-object v15, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    if-eqz v15, :cond_5

    .line 340
    sget-object v15, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v15}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 341
    .local v12, "resolver":Landroid/content/ContentResolver;
    sget-object v15, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v15}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 342
    const v16, 0x7f0d0017

    .line 341
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 345
    .local v3, "defaultBrightness":I
    const-string/jumbo v15, "buttons_brightness"

    .line 344
    invoke-static {v12, v15, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_6

    const/4 v2, 0x1

    .line 348
    .local v2, "buttonsBrightnessEnabled":Z
    :goto_0
    const-string/jumbo v15, "buttons_show_on_screen_navkeys"

    const/16 v16, 0x0

    .line 347
    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_7

    const/4 v10, 0x1

    .line 351
    .local v10, "onScreenNavKeysEnabled":Z
    :goto_1
    const-string/jumbo v15, "buttons_force_home_enabled"

    const/16 v16, 0x0

    .line 350
    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_8

    const/4 v5, 0x1

    .line 353
    .local v5, "forceHomeEnabled":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 354
    const-string/jumbo v16, "oem_acc_key_define"

    const/16 v17, 0x0

    .line 353
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_9

    const/4 v13, 0x1

    .line 355
    .local v13, "swapNavkeysEnabled":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15, v13}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 358
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 361
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 364
    const-string/jumbo v15, "oem_acc_key_lock_mode"

    sget-object v16, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->NORMAL:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->ordinal()I

    move-result v16

    .line 363
    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 364
    sget-object v16, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->FOOT:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->ordinal()I

    move-result v16

    .line 363
    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 364
    const/4 v4, 0x0

    .line 365
    .local v4, "enableOnScreenNavkeys":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    .line 373
    .local v11, "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    const-string/jumbo v15, "home_key"

    invoke-virtual {v11, v15}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    .line 375
    .local v6, "homeCategory":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v15, "menu_key"

    invoke-virtual {v11, v15}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceCategory;

    .line 377
    .local v9, "menuCategory":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v15, "back_key"

    invoke-virtual {v11, v15}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    .line 380
    .local v1, "backCategory":Landroid/support/v7/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v15, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v16, v0

    if-eqz v10, :cond_b

    const/4 v15, 0x0

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 383
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v15, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 386
    :cond_1
    if-eqz v6, :cond_2

    .line 387
    if-nez v5, :cond_d

    if-eqz v10, :cond_c

    const/4 v7, 0x0

    .line 388
    .local v7, "homeEnabled":Z
    :goto_6
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 390
    .end local v7    # "homeEnabled":Z
    :cond_2
    if-eqz v9, :cond_3

    .line 391
    if-eqz v10, :cond_e

    const/4 v15, 0x0

    :goto_7
    invoke-virtual {v9, v15}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 393
    :cond_3
    if-eqz v1, :cond_4

    .line 394
    if-eqz v10, :cond_f

    const/4 v15, 0x0

    :goto_8
    invoke-virtual {v1, v15}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 397
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 398
    const-string/jumbo v16, "emergency_affordance_needed"

    const/16 v17, 0x0

    .line 397
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_10

    const/4 v8, 0x1

    .line 399
    .local v8, "inEmergencyCall":Z
    :goto_9
    if-eqz v8, :cond_11

    .line 400
    const-string/jumbo v15, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 406
    :goto_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v15, :cond_5

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "camera_double_tap_power_gesture_disabled"

    const/16 v17, 0x0

    .line 407
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 409
    .local v14, "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v16, v0

    if-nez v14, :cond_12

    const/4 v15, 0x1

    :goto_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 338
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

    .line 344
    .restart local v3    # "defaultBrightness":I
    .restart local v12    # "resolver":Landroid/content/ContentResolver;
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "buttonsBrightnessEnabled":Z
    goto/16 :goto_0

    .line 347
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "onScreenNavKeysEnabled":Z
    goto/16 :goto_1

    .line 350
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "forceHomeEnabled":Z
    goto/16 :goto_2

    .line 353
    :cond_9
    const/4 v13, 0x0

    .restart local v13    # "swapNavkeysEnabled":Z
    goto/16 :goto_3

    .line 364
    :cond_a
    const/4 v4, 0x1

    .restart local v4    # "enableOnScreenNavkeys":Z
    goto/16 :goto_4

    .line 381
    .restart local v1    # "backCategory":Landroid/support/v7/preference/PreferenceCategory;
    .restart local v6    # "homeCategory":Landroid/support/v7/preference/PreferenceCategory;
    .restart local v9    # "menuCategory":Landroid/support/v7/preference/PreferenceCategory;
    .restart local v11    # "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_b
    const/4 v15, 0x1

    goto :goto_5

    .line 387
    :cond_c
    const/4 v7, 0x1

    goto :goto_6

    :cond_d
    move v7, v5

    goto :goto_6

    .line 391
    :cond_e
    const/4 v15, 0x1

    goto :goto_7

    .line 394
    :cond_f
    const/4 v15, 0x1

    goto :goto_8

    .line 397
    :cond_10
    const/4 v8, 0x0

    goto :goto_9

    .line 402
    .restart local v8    # "inEmergencyCall":Z
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_a

    .line 409
    .restart local v14    # "value":I
    :cond_12
    const/4 v15, 0x0

    goto :goto_b
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->addPreferencesFromResource(I)V

    .line 135
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPButtonsSettings$1;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    .line 145
    const-string/jumbo v0, "buttons_enable_on_screen_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    const-string/jumbo v0, "buttons_swap_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    const-string/jumbo v0, "buttons_brightness"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    .line 150
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    const-string/jumbo v0, "buttons_force_home"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    .line 152
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string/jumbo v0, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 154
    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string/jumbo v0, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 204
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    .line 202
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "state":Z
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 419
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 423
    .end local v0    # "state":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_3

    .line 424
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 426
    const-string/jumbo v4, "oem_acc_key_define"

    .line 424
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    return v5

    .line 420
    .restart local v0    # "state":Z
    :cond_1
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 421
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

    .line 428
    .end local v0    # "state":Z
    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_5

    .line 429
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v4, "key_home_long_press_action"

    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    .line 433
    check-cast v1, Ljava/lang/String;

    .line 434
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v3, "11"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 435
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    .line 438
    :cond_4
    return v5

    .line 439
    .end local v1    # "value":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_6

    .line 440
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 442
    const-string/jumbo v4, "key_home_double_tap_action"

    .line 440
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    return v5

    .line 444
    :cond_6
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_7

    .line 445
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 457
    const-string/jumbo v4, "key_app_switch_long_press_action"

    .line 445
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    return v5

    .line 459
    :cond_7
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_8

    .line 460
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 472
    const-string/jumbo v4, "key_app_switch_double_tap_action"

    .line 460
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    return v5

    .line 474
    :cond_8
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_9

    .line 475
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 477
    const-string/jumbo v4, "key_back_long_press_action"

    .line 475
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    return v5

    .line 479
    :cond_9
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_a

    .line 480
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 482
    const-string/jumbo v4, "key_back_double_tap_action"

    .line 480
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    return v5

    .line 484
    :cond_a
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_b

    .line 485
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v4}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->setHWButtonsLightsState(Landroid/content/Context;ZZ)V

    .line 486
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    .line 487
    return v5

    .line 488
    :cond_b
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_c

    .line 489
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->updateSettings(Landroid/content/Context;Z)V

    .line 490
    const-string/jumbo v3, "buttons_enable_on_screen_navkeys"

    invoke-static {v3, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    .line 491
    return v5

    .line 492
    :cond_c
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_d

    .line 493
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    .line 495
    const-string/jumbo v4, "buttons_force_home_enabled"

    .line 493
    invoke-direct {p0, v3, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    .line 497
    return v5

    .line 498
    :cond_d
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_f

    .line 500
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 501
    .local v2, "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "camera_double_tap_power_gesture_disabled"

    .line 502
    if-eqz v2, :cond_e

    move v3, v4

    .line 501
    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    return v5

    :cond_e
    move v3, v5

    .line 502
    goto :goto_1

    .line 506
    .end local v2    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_f
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 513
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPButtonsSettings$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPButtonsSettings$2;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    .line 518
    const-wide/16 v2, 0x3e8

    .line 513
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 520
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 196
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initPrefs()V

    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    .line 198
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    .line 194
    return-void
.end method
