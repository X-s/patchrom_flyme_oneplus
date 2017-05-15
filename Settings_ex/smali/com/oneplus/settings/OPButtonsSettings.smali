.class public Lcom/oneplus/settings/OPButtonsSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPButtonsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;,
        Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;,
        Lcom/oneplus/settings/OPButtonsSettings$Helper;,
        Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;
    }
.end annotation


# static fields
.field private static final BACKLIGHT_PREF:Ljava/lang/String; = "pre_navbar_button_backlight"

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

.field private static final REFRESH_PREPERENCE:I = 0x1

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "SystemSettings"


# instance fields
.field private mBackDoubleTapAction:Landroid/preference/ListPreference;

.field private mBackLongPressAction:Landroid/preference/ListPreference;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

.field private mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

.field private mEnableOnScreenNavkeys:Landroid/preference/SwitchPreference;

.field private mForceHomeButtonEnabled:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHomeDoubleTapAction:Landroid/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/preference/ListPreference;

.field private mMenuDoubleTapAction:Landroid/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/preference/ListPreference;

.field private final mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

.field private mSwapNavkeys:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 603
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPButtonsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 574
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;-><init>(Lcom/oneplus/settings/OPButtonsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    .line 607
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPButtonsSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPButtonsSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPButtonsSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPButtonsSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPButtonsSettings;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->getNonVisibleKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "buttons_enable_on_screen_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    const-string v1, "buttons_swap_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    const-string v1, "buttons_brightness"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    const-string v1, "buttons_force_home"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    const-string v1, "hardware_keys_home_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    const-string v1, "hardware_keys_home_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    const-string v1, "hardware_keys_menu_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    const-string v1, "hardware_keys_menu_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    const-string v1, "hardware_keys_back_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    const-string v1, "hardware_keys_back_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    const-string v1, "home_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    const-string v1, "menu_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    const-string v1, "back_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    const-string v1, "pre_navbar_button_backlight"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    return-object v0
.end method

.method private handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p1, "pref"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 201
    instance-of v6, p1, Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    move-object v1, p1

    .line 202
    check-cast v1, Landroid/preference/ListPreference;

    .local v1, "listPref":Landroid/preference/ListPreference;
    move-object v3, p2

    .line 203
    check-cast v3, Ljava/lang/String;

    .line 204
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, "index":I
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, p3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    .end local v0    # "index":I
    .end local v1    # "listPref":Landroid/preference/ListPreference;
    .end local v3    # "value":Ljava/lang/String;
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 207
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v6, p1, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_0

    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, "state":Z
    instance-of v6, p2, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    .line 210
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 214
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    if-eqz v2, :cond_5

    :goto_2
    invoke-static {v6, p3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 211
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    instance-of v6, p2, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 212
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_4

    move v2, v4

    :goto_3
    goto :goto_1

    :cond_4
    move v2, v5

    goto :goto_3

    :cond_5
    move v4, v5

    .line 214
    goto :goto_2
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 194
    .local v0, "list":Landroid/preference/ListPreference;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 197
    return-object v0
.end method

.method private initListViewPrefs()V
    .locals 15

    .prologue
    .line 234
    sget-object v13, Lcom/android/settings_ex/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v13}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 237
    .local v12, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e005c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 239
    .local v5, "defaultLongPressOnHomeBehavior":I
    const-string v13, "key_home_long_press_action"

    invoke-static {v12, v13, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 242
    .local v11, "longPressOnHomeBehavior":I
    const-string v13, "hardware_keys_home_long_press"

    invoke-direct {p0, v13, v11}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    .line 244
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e005d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 247
    .local v2, "defaultDoubleTapOnHomeBehavior":I
    const-string v13, "key_home_double_tap_action"

    invoke-static {v12, v13, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 250
    .local v8, "doubleTapOnHomeBehavior":I
    const-string v13, "hardware_keys_home_double_tap"

    invoke-direct {p0, v13, v8}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    .line 268
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x5090007

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 270
    .local v3, "defaultLongPressOnAppSwitchBehavior":I
    const-string v13, "key_app_switch_long_press_action"

    invoke-static {v12, v13, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 273
    .local v9, "longPressOnAppSwitchBehavior":I
    const-string v13, "hardware_keys_menu_long_press"

    invoke-direct {p0, v13, v9}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    .line 291
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x5090003

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 293
    .local v0, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string v13, "key_app_switch_double_tap_action"

    invoke-static {v12, v13, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 296
    .local v6, "doubleTapOnAppSwitchBehavior":I
    const-string v13, "hardware_keys_menu_double_tap"

    invoke-direct {p0, v13, v6}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/preference/ListPreference;

    .line 299
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x5090008

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 301
    .local v4, "defaultLongPressOnBackBehavior":I
    const-string v13, "key_back_long_press_action"

    invoke-static {v12, v13, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 304
    .local v10, "longPressOnBackBehavior":I
    const-string v13, "hardware_keys_back_long_press"

    invoke-direct {p0, v13, v10}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/preference/ListPreference;

    .line 307
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x5090004

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 309
    .local v1, "defaultDoubleTapOnBackBehavior":I
    const-string v13, "key_back_double_tap_action"

    invoke-static {v12, v13, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 312
    .local v7, "doubleTapOnBackBehavior":I
    const-string v13, "hardware_keys_back_double_tap"

    invoke-direct {p0, v13, v7}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v13

    iput-object v13, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/preference/ListPreference;

    .line 313
    return-void
.end method

.method private initListViewPrefsnogms()V
    .locals 3

    .prologue
    const v2, 0x7f0a0077

    const v1, 0x7f0a0076

    .line 219
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 220
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 222
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 223
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 224
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 225
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 226
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 227
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 228
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 229
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 231
    return-void
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 175
    const v0, 0x11200b1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private loadPreferenceScreen()V
    .locals 18

    .prologue
    .line 316
    sget-object v15, Lcom/android/settings_ex/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v15}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 317
    .local v12, "resolver":Landroid/content/ContentResolver;
    sget-object v15, Lcom/android/settings_ex/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v15}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0f0009

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 320
    .local v3, "defaultBrightness":I
    const-string v15, "buttons_brightness"

    invoke-static {v12, v15, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_6

    const/4 v2, 0x1

    .line 323
    .local v2, "buttonsBrightnessEnabled":Z
    :goto_0
    const-string v15, "buttons_show_on_screen_navkeys"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_7

    const/4 v10, 0x1

    .line 326
    .local v10, "onScreenNavKeysEnabled":Z
    :goto_1
    const-string v15, "buttons_force_home_enabled"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_8

    const/4 v5, 0x1

    .line 329
    .local v5, "forceHomeEnabled":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "oem_acc_key_define"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_9

    const/4 v13, 0x1

    .line 331
    .local v13, "swapNavkeysEnabled":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v15, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    invoke-virtual {v15, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 337
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v15, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 339
    const-string v15, "oem_acc_key_lock_mode"

    sget-object v16, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->NORMAL:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->ordinal()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    sget-object v16, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->FOOT:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->ordinal()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    const/4 v4, 0x0

    .line 341
    .local v4, "enableOnScreenNavkeys":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v15, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 344
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v15, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 348
    .local v11, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string v15, "home_key"

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 350
    .local v6, "homeCategory":Landroid/preference/PreferenceCategory;
    const-string v15, "menu_key"

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 352
    .local v9, "menuCategory":Landroid/preference/PreferenceCategory;
    const-string v15, "back_key"

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 356
    .local v1, "backCategory":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_0

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    if-nez v10, :cond_b

    const/4 v15, 0x1

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 359
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_1

    .line 360
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v15, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 362
    :cond_1
    if-eqz v6, :cond_2

    .line 363
    if-nez v5, :cond_d

    if-nez v10, :cond_c

    const/4 v7, 0x1

    .line 364
    .local v7, "homeEnabled":Z
    :goto_6
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 366
    .end local v7    # "homeEnabled":Z
    :cond_2
    if-eqz v9, :cond_3

    .line 367
    if-nez v10, :cond_e

    const/4 v15, 0x1

    :goto_7
    invoke-virtual {v9, v15}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 369
    :cond_3
    if-eqz v1, :cond_4

    .line 370
    if-nez v10, :cond_f

    const/4 v15, 0x1

    :goto_8
    invoke-virtual {v1, v15}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 373
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "emergency_affordance_needed"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_10

    const/4 v8, 0x1

    .line 375
    .local v8, "inEmergencyCall":Z
    :goto_9
    if-eqz v8, :cond_11

    .line 376
    const-string v15, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    .line 382
    :goto_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_5

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "camera_double_tap_power_gesture_disabled"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 385
    .local v14, "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    if-nez v14, :cond_12

    const/4 v15, 0x1

    :goto_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 388
    .end local v14    # "value":I
    :cond_5
    return-void

    .line 320
    .end local v1    # "backCategory":Landroid/preference/PreferenceCategory;
    .end local v2    # "buttonsBrightnessEnabled":Z
    .end local v4    # "enableOnScreenNavkeys":Z
    .end local v5    # "forceHomeEnabled":Z
    .end local v6    # "homeCategory":Landroid/preference/PreferenceCategory;
    .end local v8    # "inEmergencyCall":Z
    .end local v9    # "menuCategory":Landroid/preference/PreferenceCategory;
    .end local v10    # "onScreenNavKeysEnabled":Z
    .end local v11    # "prefScreen":Landroid/preference/PreferenceScreen;
    .end local v13    # "swapNavkeysEnabled":Z
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 323
    .restart local v2    # "buttonsBrightnessEnabled":Z
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 326
    .restart local v10    # "onScreenNavKeysEnabled":Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 329
    .restart local v5    # "forceHomeEnabled":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 339
    .restart local v13    # "swapNavkeysEnabled":Z
    :cond_a
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 357
    .restart local v1    # "backCategory":Landroid/preference/PreferenceCategory;
    .restart local v4    # "enableOnScreenNavkeys":Z
    .restart local v6    # "homeCategory":Landroid/preference/PreferenceCategory;
    .restart local v9    # "menuCategory":Landroid/preference/PreferenceCategory;
    .restart local v11    # "prefScreen":Landroid/preference/PreferenceScreen;
    :cond_b
    const/4 v15, 0x0

    goto :goto_5

    .line 363
    :cond_c
    const/4 v7, 0x0

    goto :goto_6

    :cond_d
    move v7, v5

    goto :goto_6

    .line 367
    :cond_e
    const/4 v15, 0x0

    goto :goto_7

    .line 370
    :cond_f
    const/4 v15, 0x0

    goto :goto_8

    .line 373
    :cond_10
    const/4 v8, 0x0

    goto :goto_9

    .line 378
    .restart local v8    # "inEmergencyCall":Z
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_a

    .line 385
    .restart local v14    # "value":I
    :cond_12
    const/4 v15, 0x0

    goto :goto_b
.end method


# virtual methods
.method public checkGMS(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 162
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v2

    .line 165
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 167
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 121
    const/16 v0, 0xfc

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->addPreferencesFromResource(I)V

    .line 130
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPButtonsSettings$1;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    .line 140
    const-string v0, "buttons_enable_on_screen_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/preference/SwitchPreference;

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    const-string v0, "buttons_swap_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/preference/SwitchPreference;

    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    const-string v0, "buttons_brightness"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    const-string v0, "buttons_force_home"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/preference/SwitchPreference;

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const-string v0, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefs()V

    .line 156
    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->checkGMS(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefsnogms()V

    .line 159
    :cond_0
    return-void

    .line 153
    :cond_1
    const-string v0, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    .line 190
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "state":Z
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 394
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 398
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_3

    .line 399
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/preference/SwitchPreference;

    const-string v4, "oem_acc_key_define"

    invoke-direct {p0, v2, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_1
    return v3

    .line 395
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 396
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_2

    .line 403
    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 404
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    const-string v4, "key_home_long_press_action"

    invoke-direct {p0, v2, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 408
    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 409
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    const-string v4, "key_home_double_tap_action"

    invoke-direct {p0, v2, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 413
    :cond_5
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 414
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    const-string v4, "key_app_switch_long_press_action"

    invoke-direct {p0, v2, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 428
    :cond_6
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 429
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/preference/ListPreference;

    const-string v4, "key_app_switch_double_tap_action"

    invoke-direct {p0, v2, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 443
    :cond_7
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 444
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/preference/ListPreference;

    const-string v4, "key_back_long_press_action"

    invoke-direct {p0, v2, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_8
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_9

    .line 449
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/preference/ListPreference;

    const-string v4, "key_back_double_tap_action"

    invoke-direct {p0, v2, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 453
    :cond_9
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_a

    .line 454
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->setHWButtonsLightsState(Landroid/content/Context;ZZ)V

    .line 455
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    goto :goto_1

    .line 457
    :cond_a
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_b

    .line 458
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->updateSettings(Landroid/content/Context;Z)V

    .line 459
    const-string v2, "buttons_enable_on_screen_navkeys"

    invoke-static {v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    goto :goto_1

    .line 461
    :cond_b
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_c

    .line 462
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/preference/SwitchPreference;

    const-string v4, "buttons_force_home_enabled"

    invoke-direct {p0, v2, p2, v4}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    goto/16 :goto_1

    .line 467
    :cond_c
    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_e

    .line 469
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 470
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "camera_double_tap_power_gesture_disabled"

    if-eqz v1, :cond_d

    :goto_3
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v4, v3

    goto :goto_3

    .end local v1    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_e
    move v3, v4

    .line 475
    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPButtonsSettings$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPButtonsSettings$2;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 489
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    .line 183
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    .line 184
    return-void
.end method
