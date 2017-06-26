.class public Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;
.implements Lcom/android/settings_ex/search/Indexable;
.implements Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_INPUT_METHOD:Ljava/lang/String; = "current_input_method"

.field private static final KEY_INPUT_METHOD_SELECTOR:Ljava/lang/String; = "input_method_selector"

.field private static final KEY_PHONE_LANGUAGE:Ljava/lang/String; = "phone_language"

.field private static final KEY_PHONE_LANGUAGE_FLAG:Ljava/lang/String; = "phone_language_flag"

.field private static final KEY_PREVIOUSLY_ENABLED_SUBTYPES:Ljava/lang/String; = "previously_enabled_subtypes"

.field private static final KEY_SPELL_CHECKERS:Ljava/lang/String; = "spellcheckers_settings"

.field private static final KEY_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "key_user_dictionary_settings"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SHOW_INPUT_METHOD_SWITCHER_SETTINGS:Z


# instance fields
.field private isVisible:Z

.field private mDefaultInputMethodSelectorVisibility:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mGameControllerCategory:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mLanguagePref:Landroid/preference/Preference;

.field private mLanguagePreference:Lcom/android/settings_ex/ui/OPPerference;

.field private mSettingsObserver:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

.field private mShowsOnlyFullImeAndKeyboardList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 745
    new-instance v0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$4;

    invoke-direct {v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 101
    iput v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 118
    iput-boolean v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->isVisible:Z

    .line 720
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;
    .param p1, "x1"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkLanguageTpye()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "localplace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 234
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "language":Ljava/lang/String;
    const-string v4, "zh"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "CN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v3

    .line 237
    :cond_1
    const-string v4, "zh"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "TW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    const/4 v3, 0x2

    goto :goto_0

    .line 239
    :cond_2
    const-string v4, "en"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "US"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    const/4 v3, 0x3

    goto :goto_0
.end method

.method private static getLocaleName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 443
    .local v0, "currentLocale":Ljava/util/Locale;
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v3

    .line 444
    .local v3, "locales":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 445
    .local v2, "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 451
    .end local v2    # "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static haveInputDeviceWithVibrator()Z
    .locals 4

    .prologue
    .line 710
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 711
    .local v1, "devices":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 712
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 713
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 714
    const/4 v3, 0x1

    .line 717
    .end local v0    # "device":Landroid/view/InputDevice;
    :goto_1
    return v3

    .line 711
    .restart local v0    # "device":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 717
    .end local v0    # "device":Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadInputMethodSelectorVisibility()I
    .locals 3

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_selector_visibility"

    iget v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 585
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 586
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "previously_enabled_subtypes"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "imesAndSubtypesString":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    return-object v3
.end method

.method private restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 4
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v1

    .line 574
    .local v1, "imeToEnabledSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "imiId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 576
    .local v0, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    .line 580
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->enableInputMethodSubtypesOf(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method private saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 9
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 559
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 560
    .local v0, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    .line 562
    .local v1, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 563
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 564
    .local v6, "subtypeId":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 566
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "subtypeId":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v3

    .line 567
    .local v3, "imeToEnabledSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 568
    .local v4, "imiId":Ljava/lang/String;
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    invoke-direct {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    .line 570
    return-void
.end method

.method private saveInputMethodSelectorVisibility(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 456
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 457
    .local v0, "intValue":I
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "input_method_selector_visibility"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 458
    invoke-direct {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodSelectorSummary(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v0    # "intValue":I
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "subtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 592
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 593
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "imesAndSubtypesString":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "previously_enabled_subtypes"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 595
    return-void
.end method

.method private showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 672
    new-instance v0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 673
    .local v0, "fragment":Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 674
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 5

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 599
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 602
    .local v2, "curPref":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 603
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 604
    .local v1, "curIme":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 605
    monitor-enter p0

    .line 606
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 607
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateGameControllers()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 699
    invoke-static {}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 700
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 702
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "vibrate_input_devices"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 703
    .local v0, "pref":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_input_devices"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 707
    .end local v0    # "pref":Landroid/preference/SwitchPreference;
    :goto_1
    return-void

    .line 703
    .restart local v0    # "pref":Landroid/preference/SwitchPreference;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 705
    .end local v0    # "pref":Landroid/preference/SwitchPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 618
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 619
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 620
    .local v2, "devices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_3

    .line 621
    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 622
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 623
    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    .line 624
    .local v5, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 625
    .local v7, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 628
    .local v6, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_1
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 629
    .local v8, "pref":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 630
    if-eqz v6, :cond_2

    .line 631
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 635
    :goto_2
    new-instance v10, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$3;

    invoke-direct {v10, p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$3;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 642
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    .end local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_1
    move-object v6, v9

    .line 625
    goto :goto_1

    .line 633
    .restart local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .restart local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_2
    const v10, 0x7f0c083b

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    .line 646
    .end local v1    # "device":Landroid/view/InputDevice;
    .end local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 647
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_3
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_5

    .line 648
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 649
    .local v8, "pref":Landroid/preference/Preference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getOrder()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_4

    .line 650
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    move v4, v3

    .line 652
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 654
    .end local v4    # "i":I
    .end local v8    # "pref":Landroid/preference/Preference;
    .restart local v3    # "i":I
    :cond_5
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 655
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 656
    .local v0, "count":I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 657
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    .line 658
    .restart local v8    # "pref":Landroid/preference/Preference;
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 659
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 656
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 662
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 667
    .end local v0    # "count":I
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 669
    return-void

    .line 664
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method private updateInputDevices()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V

    .line 614
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateGameControllers()V

    .line 615
    return-void
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 481
    iget-object v13, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    monitor-enter v13

    .line 483
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 484
    .local v0, "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 518
    .end local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 486
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 487
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v11

    .line 488
    .local v11, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 489
    .local v1, "context":Landroid/content/Context;
    iget-boolean v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v10

    .line 491
    .local v10, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_1
    if-nez v10, :cond_2

    move v6, v12

    .line 493
    .local v6, "N":I
    :goto_2
    if-nez v6, :cond_3

    .line 494
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 495
    monitor-exit v13

    .line 531
    :goto_3
    return-void

    .line 489
    .end local v6    # "N":I
    .end local v10    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v10

    goto :goto_1

    .line 491
    .restart local v10    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_2

    .line 497
    .restart local v6    # "N":I
    :cond_3
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-ge v8, v6, :cond_6

    .line 498
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 499
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v11, :cond_4

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v4, 0x1

    .line 501
    .local v4, "isAllowedByOrganization":Z
    :goto_5
    new-instance v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    .line 503
    .restart local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    .end local v4    # "isAllowedByOrganization":Z
    :cond_5
    move v4, v12

    .line 499
    goto :goto_5

    .line 505
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_6
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v7

    .line 506
    .local v7, "collator":Ljava/text/Collator;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$2;

    invoke-direct {v5, p0, v7}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$2;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Ljava/text/Collator;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 512
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v6, :cond_7

    .line 513
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 514
    .restart local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 515
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    .line 516
    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 512
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 518
    .end local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    :cond_7
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 526
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v5}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v5

    const/4 v12, 0x0

    invoke-static {p0, v3, v5, v12}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 529
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->checkLanguageTpye()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateLanguageFlagIcon(I)V

    goto :goto_3
.end method

.method private updateInputMethodSelectorSummary(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "inputMethodSelectorTitles":[Ljava/lang/String;
    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method private updateLanguageFlagIcon(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const v3, 0x7f0c01ea

    .line 259
    const-string v0, ""

    .line 262
    .local v0, "locallanguage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePreference:Lcom/android/settings_ex/ui/OPPerference;

    const v2, 0x7f020087

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPPerference;->setRightImage(I)V

    .line 263
    packed-switch p1, :pswitch_data_0

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePreference:Lcom/android/settings_ex/ui/OPPerference;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPPerference;->setPreferenceTitle(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePreference:Lcom/android/settings_ex/ui/OPPerference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ui/OPPerference;->setPreferenceSummary(Ljava/lang/String;)V

    .line 289
    return-void

    .line 266
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    goto :goto_0

    .line 270
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    goto :goto_0

    .line 274
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateUserDictionaryPreference(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "userDictionaryPreference"    # Landroid/preference/Preference;

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 293
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v1

    .line 294
    .local v1, "localeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 336
    :goto_0
    return-void

    .line 301
    :cond_0
    new-instance v2, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$1;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Ljava/util/TreeSet;)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x39

    return v0
.end method

.method public getShowStatus()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->isVisible:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 688
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 690
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    const-string v2, "input_device_identifier"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 693
    .local v0, "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 694
    invoke-direct {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 696
    .end local v0    # "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v5, 0x7f080028

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 132
    .local v0, "activity":Landroid/app/Activity;
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 133
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    .line 136
    const v5, 0x7f0c005f

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "phone_language"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    :goto_1
    const-string v5, "phone_language_flag"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/ui/OPPerference;

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePreference:Lcom/android/settings_ex/ui/OPPerference;

    .line 168
    const-string v5, "hard_keyboard"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    .line 169
    const-string v5, "keyboard_settings_category"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 170
    const-string v5, "game_controller_settings_category"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    .line 172
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 174
    .local v4, "startingIntent":Landroid/content/Intent;
    const-string v5, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    .line 175
    iget-boolean v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v5, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 186
    :cond_0
    const-string v5, "input"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputManager;

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 187
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 190
    const/4 v3, 0x0

    .line 191
    .local v3, "spellChecker":Landroid/preference/Preference;
    if-eqz v3, :cond_1

    .line 194
    invoke-static {v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    .line 195
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v2, "intent":Landroid/content/Intent;
    const-class v5, Lcom/android/settings_ex/SubSettings;

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 197
    const-string v5, ":settings:show_fragment"

    const-class v6, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v5, ":settings:show_fragment_title_resid"

    const v6, 0x7f0c0b53

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 202
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v5, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 209
    const-string v5, "input_device_identifier"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 211
    .local v1, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-boolean v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    .line 212
    invoke-direct {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 214
    :cond_2
    return-void

    .line 146
    .end local v1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "spellChecker":Landroid/preference/Preference;
    .end local v4    # "startingIntent":Landroid/content/Intent;
    :cond_3
    const-string v5, "phone_language"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 138
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 404
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 409
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 414
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 383
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 385
    iput-boolean v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->isVisible:Z

    .line 386
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 387
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->pause()V

    .line 393
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v2}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p0, v1, v2, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 395
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 419
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    :goto_0
    return v2

    .line 422
    :cond_0
    instance-of v4, p2, Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    .line 423
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 436
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 425
    :cond_2
    const-string v3, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 427
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker(Z)V

    goto :goto_1

    .line 429
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    instance-of v4, p2, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1

    move-object v1, p2

    .line 430
    check-cast v1, Landroid/preference/SwitchPreference;

    .line 431
    .local v1, "pref":Landroid/preference/SwitchPreference;
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v5, "vibrate_input_devices"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne v1, v4, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_input_devices"

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 433
    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 340
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 342
    iput-boolean v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->isVisible:Z

    .line 343
    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->resume()V

    .line 344
    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 346
    const/4 v2, 0x0

    .line 347
    .local v2, "spellChecker":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 348
    const-string v5, "textservices"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/TextServicesManager;

    .line 350
    .local v3, "tsm":Landroid/view/textservice/TextServicesManager;
    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 351
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 352
    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 353
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    .end local v1    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v3    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-nez v4, :cond_1

    .line 360
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "localeName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    .end local v0    # "localeName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 377
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v4}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 378
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V

    .line 379
    return-void

    .line 351
    .restart local v1    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .restart local v3    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 355
    :cond_3
    const v4, 0x7f0c0cd3

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method public onSaveInputMethodPreference(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .prologue
    .line 535
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    .line 536
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 540
    invoke-direct {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    .line 543
    .local v0, "hasHardwareKeyboard":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v5

    invoke-static {p0, v4, v5, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 546
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v4}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 547
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 551
    invoke-direct {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 553
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 554
    .local v3, "p":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    invoke-virtual {v3}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1

    .line 542
    .end local v0    # "hasHardwareKeyboard":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "p":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 556
    .restart local v0    # "hasHardwareKeyboard":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 681
    const-string v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 682
    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 683
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 684
    return-void
.end method
