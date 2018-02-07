.class public Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;
.implements Lcom/android/settings_ex/search/Indexable;
.implements Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$1;,
        Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$2;,
        Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;,
        Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_INPUT_METHOD:Ljava/lang/String; = "current_input_method"

.field private static final KEY_INPUT_METHOD_SELECTOR:Ljava/lang/String; = "input_method_selector"

.field private static final KEY_PHONE_LANGUAGE:Ljava/lang/String; = "phone_language"

.field private static final KEY_PHONE_LANGUAGE_H2OS:Ljava/lang/String; = "phone_language_h2os"

.field private static final KEY_PREVIOUSLY_ENABLED_SUBTYPES:Ljava/lang/String; = "previously_enabled_subtypes"

.field private static final KEY_SPELL_CHECKERS:Ljava/lang/String; = "spellcheckers_settings"

.field private static final KEY_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "key_user_dictionary_settings"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SHOW_INPUT_METHOD_SWITCHER_SETTINGS:Z

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mGameControllerCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/preference/PreferenceScreen;",
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

.field private mKeyboardSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mLanguagePref:Landroid/support/v7/preference/Preference;

.field private mLanguagePrefH2OS:Landroid/support/v7/preference/Preference;

.field private mSettingsObserver:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private mShowInputMethodSelectorPref:Landroid/support/v7/preference/ListPreference;

.field private mShowsOnlyFullImeAndKeyboardList:Z


# direct methods
.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getLocaleNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 756
    new-instance v0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$1;-><init>()V

    .line 755
    sput-object v0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 765
    new-instance v0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$2;-><init>()V

    .line 764
    sput-object v0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method private static getLocaleName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 419
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 420
    .local v0, "currentLocale":Ljava/util/Locale;
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v3

    .line 421
    .local v3, "locales":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "locale$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 422
    .local v1, "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 428
    .end local v1    # "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_1
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getLocaleNames(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v5

    if-nez v5, :cond_0

    .line 388
    invoke-static {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 391
    :cond_0
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    .line 393
    .local v3, "locales":Landroid/os/LocaleList;
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/util/Locale;

    .line 394
    .local v4, "opLocale":[Ljava/util/Locale;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 395
    invoke-virtual {v3, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 396
    .local v2, "locale":Ljava/util/Locale;
    const-string/jumbo v5, "zh-CN"

    invoke-static {v2}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 397
    const-string/jumbo v5, "zh-Hans-CN"

    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 399
    :cond_1
    aput-object v2, v4, v1

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_2
    const/4 v3, 0x0

    .line 402
    .local v3, "locales":Landroid/os/LocaleList;
    new-instance v3, Landroid/os/LocaleList;

    .end local v3    # "locales":Landroid/os/LocaleList;
    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 404
    .local v3, "locales":Landroid/os/LocaleList;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 407
    .local v0, "displayLocale":Ljava/util/Locale;
    const/4 v5, 0x4

    .line 406
    invoke-static {v3, v0, v5}, Lcom/android/internal/app/LocaleHelper;->getDisplayLocaleList(Landroid/os/LocaleList;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-static {v5, v0}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static haveInputDeviceWithVibrator()Z
    .locals 4

    .prologue
    .line 701
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 702
    .local v1, "devices":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 703
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 704
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 702
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 705
    const/4 v3, 0x1

    return v3

    .line 708
    .end local v0    # "device":Landroid/view/InputDevice;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private loadInputMethodSelectorVisibility()I
    .locals 3

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 443
    const-string/jumbo v1, "input_method_selector_visibility"

    .line 444
    iget v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 442
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
    .line 562
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 563
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 564
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "previously_enabled_subtypes"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, "imesAndSubtypesString":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    return-object v3
.end method

.method private restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 4
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v1

    .line 551
    .local v1, "imeToEnabledSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "imiId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 553
    .local v0, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 554
    return-void

    .line 556
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    .line 558
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 557
    invoke-static {v3, v2, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->enableInputMethodSubtypesOf(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)V

    .line 548
    return-void
.end method

.method private saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 9
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 534
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 535
    .local v0, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 536
    const/4 v8, 0x1

    .line 535
    invoke-virtual {v7, p1, v8}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    .line 537
    .local v1, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "subtype$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 538
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, "subtypeId":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 542
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "subtypeId":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v2

    .line 543
    .local v2, "imeToEnabledSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "imiId":Ljava/lang/String;
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-direct {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    .line 533
    return-void
.end method

.method private saveInputMethodSelectorVisibility(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 433
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 434
    .local v1, "intValue":I
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 435
    const-string/jumbo v3, "input_method_selector_visibility"

    .line 434
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    invoke-direct {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodSelectorSummary(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v1    # "intValue":I
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
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
    .line 570
    .local p1, "subtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 571
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 572
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "imesAndSubtypesString":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "previously_enabled_subtypes"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 569
    return-void
.end method

.method private showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "keyboardLayout"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 656
    check-cast v0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;

    .line 658
    .local v0, "fragment":Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;
    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;

    .end local v0    # "fragment":Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 660
    .restart local v0    # "fragment":Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 661
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 655
    :cond_0
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 5

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 579
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 580
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 581
    .local v2, "curPref":Landroid/support/v7/preference/Preference;
    if-eqz v2, :cond_2

    .line 583
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 584
    .local v1, "curIme":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 585
    monitor-enter p0

    .line 586
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 577
    .end local v1    # "curIme":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 585
    .restart local v1    # "curIme":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private updateGameControllers()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 688
    invoke-static {}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 689
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 692
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v4, "vibrate_input_devices"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 691
    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 693
    .local v0, "pref":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 694
    const-string/jumbo v4, "vibrate_input_devices"

    .line 693
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 687
    .end local v0    # "pref":Landroid/support/v14/preference/SwitchPreference;
    :goto_1
    return-void

    .restart local v0    # "pref":Landroid/support/v14/preference/SwitchPreference;
    :cond_0
    move v1, v2

    .line 693
    goto :goto_0

    .line 696
    .end local v0    # "pref":Landroid/support/v14/preference/SwitchPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 598
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-nez v10, :cond_0

    .line 599
    return-void

    .line 602
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 603
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 604
    .local v2, "devices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_5

    .line 605
    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 606
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_1

    .line 607
    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 604
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    .line 606
    if-eqz v10, :cond_1

    .line 609
    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    .line 611
    .local v5, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 612
    .local v7, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 613
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 615
    :goto_2
    new-instance v9, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 616
    .local v9, "pref":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 617
    if-eqz v6, :cond_4

    .line 618
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 622
    :goto_3
    new-instance v10, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$5;

    invoke-direct {v10, p0, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$5;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 629
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 613
    .end local v9    # "pref":Landroid/support/v7/preference/PreferenceScreen;
    :cond_3
    const/4 v6, 0x0

    .local v6, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    goto :goto_2

    .line 620
    .end local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .restart local v9    # "pref":Landroid/support/v7/preference/PreferenceScreen;
    :cond_4
    const v10, 0x7f0e0a86

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_3

    .line 633
    .end local v1    # "device":Landroid/view/InputDevice;
    .end local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v9    # "pref":Landroid/support/v7/preference/PreferenceScreen;
    :cond_5
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 634
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_4
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_7

    .line 635
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v3}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    .line 636
    .local v8, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v8}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v10

    const/16 v11, 0x3e8

    if-ge v10, v11, :cond_6

    .line 637
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v8}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_6
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_4

    .line 641
    .end local v4    # "i":I
    .end local v8    # "pref":Landroid/support/v7/preference/Preference;
    .restart local v3    # "i":I
    :cond_7
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 642
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 643
    .local v0, "count":I
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_8

    .line 644
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/Preference;

    .line 645
    .restart local v8    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v8, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 646
    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 643
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 649
    .end local v8    # "pref":Landroid/support/v7/preference/Preference;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 597
    .end local v0    # "count":I
    :goto_6
    return-void

    .line 651
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_6
.end method

.method private updateInputDevices()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V

    .line 594
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateGameControllers()V

    .line 592
    return-void
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 460
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-nez v3, :cond_0

    .line 461
    return-void

    .line 464
    :cond_0
    iget-object v12, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    monitor-enter v12

    .line 466
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "pref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 467
    .local v0, "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 464
    .end local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    .end local v11    # "pref$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v12

    throw v3

    .line 469
    .restart local v11    # "pref$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 470
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v10

    .line 471
    .local v10, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 472
    .local v1, "context":Landroid/content/Context;
    iget-boolean v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v3, :cond_2

    .line 473
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v9

    .line 475
    .local v9, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_1
    if-nez v9, :cond_3

    const/4 v6, 0x0

    .line 476
    .local v6, "N":I
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v6, :cond_5

    .line 477
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 478
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v10, :cond_4

    .line 479
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 480
    :goto_4
    new-instance v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 481
    iget-boolean v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    move-object v5, p0

    .line 480
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    .line 483
    .restart local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 474
    .end local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v9    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v9

    .restart local v9    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    goto :goto_1

    .line 475
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .restart local v6    # "N":I
    goto :goto_2

    .line 478
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v8    # "i":I
    :cond_4
    const/4 v4, 0x1

    .local v4, "isAllowedByOrganization":Z
    goto :goto_4

    .line 485
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "isAllowedByOrganization":Z
    :cond_5
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v7

    .line 486
    .local v7, "collator":Ljava/text/Collator;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$4;

    invoke-direct {v5, p0, v7}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$4;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Ljava/text/Collator;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 492
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_6

    .line 493
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 494
    .restart local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 495
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    .line 496
    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->updatePreferenceViews()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .end local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    :cond_6
    monitor-exit v12

    .line 499
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 505
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 506
    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v5}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v5

    .line 504
    invoke-static {p0, v3, v5, v13}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 459
    return-void
.end method

.method private updateInputMethodSelectorSummary(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 228
    const v2, 0x7f0a0080

    .line 227
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "inputMethodSelectorTitles":[Ljava/lang/String;
    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/support/v7/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method private updateUserDictionaryPreference(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "userDictionaryPreference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 242
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v1

    .line 243
    .local v1, "localeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 235
    :goto_0
    return-void

    .line 249
    :cond_1
    new-instance v2, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$3;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$3;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Ljava/util/TreeSet;)V

    .line 248
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x39

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 677
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 679
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 681
    const-string/jumbo v2, "input_device_identifier"

    .line 680
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 682
    .local v0, "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    iput-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 683
    invoke-direct {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 676
    .end local v0    # "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v6, 0x7f080036

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 133
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 134
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    .line 138
    const v6, 0x7f0e01ad

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "phone_language"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "phone_language_h2os"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 167
    :goto_1
    new-instance v6, Lcom/android/settings_ex/VoiceInputOutputSettings;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/VoiceInputOutputSettings;-><init>(Lcom/android/settings_ex/SettingsPreferenceFragment;)V

    invoke-virtual {v6}, Lcom/android/settings_ex/VoiceInputOutputSettings;->onCreate()V

    .line 170
    const-string/jumbo v6, "hard_keyboard"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 172
    const-string/jumbo v6, "keyboard_settings_category"

    .line 171
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 174
    const-string/jumbo v6, "game_controller_settings_category"

    .line 173
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 176
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 178
    .local v5, "startingIntent":Landroid/content/Intent;
    const-string/jumbo v6, "android.settings.INPUT_METHOD_SETTINGS"

    .line 179
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    .line 180
    iget-boolean v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v6, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 182
    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v6, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 188
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v6, :cond_1

    .line 189
    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 195
    :cond_1
    const-string/jumbo v6, "input"

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputManager;

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 196
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 199
    const-string/jumbo v6, "spellcheckers_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 200
    .local v4, "spellChecker":Landroid/support/v7/preference/Preference;
    if-eqz v4, :cond_2

    .line 202
    invoke-static {v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    .line 203
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v3, "intent":Landroid/content/Intent;
    const-class v6, Lcom/android/settings_ex/SubSettings;

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v6, ":settings:show_fragment"

    .line 206
    const-class v7, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string/jumbo v6, ":settings:show_fragment_title_resid"

    .line 208
    const v7, 0x7f0e0d02

    .line 207
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    invoke-virtual {v4, v3}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 212
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v6, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 214
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 215
    const-string/jumbo v7, "device_policy"

    .line 214
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 220
    const-string/jumbo v6, "input_device_identifier"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 221
    .local v2, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-boolean v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 222
    invoke-direct {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 127
    :cond_3
    return-void

    .line 148
    .end local v2    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v4    # "spellChecker":Landroid/support/v7/preference/Preference;
    .end local v5    # "startingIntent":Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 149
    const-string/jumbo v6, "phone_language"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/support/v7/preference/Preference;

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "phone_language_h2os"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 152
    :cond_5
    const-string/jumbo v6, "phone_language_h2os"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePrefH2OS:Landroid/support/v7/preference/Preference;

    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "phone_language"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 139
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 346
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 351
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 356
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 331
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->pause()V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 340
    :goto_0
    invoke-static {p0, v1, v2, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 330
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 363
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    return v2

    .line 366
    :cond_0
    instance-of v4, p1, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    .line 367
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 382
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    .line 369
    :cond_2
    const-string/jumbo v3, "current_input_method"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    const-string/jumbo v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 370
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 372
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker(Z)V

    goto :goto_0

    .line 374
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    instance-of v4, p1, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_1

    move-object v1, p1

    .line 375
    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    .line 376
    .local v1, "pref":Landroid/support/v14/preference/SwitchPreference;
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v5, "vibrate_input_devices"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-ne v1, v4, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_input_devices"

    .line 378
    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    .line 377
    :cond_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    return v3
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 282
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 284
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->resume()V

    .line 285
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 287
    const-string/jumbo v4, "spellcheckers_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 288
    .local v2, "spellChecker":Landroid/support/v7/preference/Preference;
    if-eqz v2, :cond_0

    .line 290
    const-string/jumbo v4, "textservices"

    .line 289
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/TextServicesManager;

    .line 291
    .local v3, "tsm":Landroid/view/textservice/TextServicesManager;
    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 292
    const v4, 0x7f0e0eb9

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 303
    .end local v3    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-nez v4, :cond_3

    .line 304
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/support/v7/preference/Preference;

    if-eqz v4, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getLocaleNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "localeNames":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    .end local v0    # "localeNames":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePrefH2OS:Landroid/support/v7/preference/Preference;

    if-eqz v4, :cond_2

    .line 310
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getLocaleNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0    # "localeNames":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mLanguagePrefH2OS:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 315
    .end local v0    # "localeNames":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "key_user_dictionary_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/support/v7/preference/Preference;)V

    .line 321
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 325
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v4}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 326
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V

    .line 281
    return-void

    .line 294
    .restart local v3    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_4
    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 295
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v1, :cond_5

    .line 296
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 298
    :cond_5
    const v4, 0x7f0e1009

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public onSaveInputMethodPreference(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .prologue
    .line 511
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    .line 512
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 515
    invoke-direct {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->keyboard:I

    .line 518
    const/4 v5, 0x2

    .line 517
    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    .line 519
    .local v0, "hasHardwareKeyboard":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 520
    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v5

    .line 519
    invoke-static {p0, v4, v5, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 522
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v4}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 523
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 526
    invoke-direct {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 528
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "p$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 529
    .local v2, "p":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    invoke-virtual {v2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1

    .line 517
    .end local v0    # "hasHardwareKeyboard":Z
    .end local v2    # "p":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    .end local v3    # "p$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasHardwareKeyboard":Z
    goto :goto_0

    .line 510
    .restart local v3    # "p$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 667
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 669
    const-string/jumbo v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 671
    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 672
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 666
    return-void
.end method
