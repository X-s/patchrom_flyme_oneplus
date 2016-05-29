.class public Lcom/oneplus/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/DialogCreatable;
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final CAPTIONING_PREFERENCE_SCREEN:Ljava/lang/String; = "captioning_preference_screen"

.field private static final DELAY_UPDATE_SERVICES_MILLIS:J = 0x3e8L

.field private static final DISPLAY_DALTONIZER_PREFERENCE_SCREEN:Ljava/lang/String; = "daltonizer_preference_screen"

.field private static final DISPLAY_MAGNIFICATION_PREFERENCE_SCREEN:Ljava/lang/String; = "screen_magnification_preference_screen"

.field static final ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR:C = ':'

.field private static final ENABLE_ACCESSIBILITY_GESTURE_PREFERENCE_SCREEN:Ljava/lang/String; = "enable_global_gesture_preference_screen"

.field static final EXTRA_CHECKED:Ljava/lang/String; = "checked"

.field static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field static final EXTRA_SETTINGS_COMPONENT_NAME:Ljava/lang/String; = "settings_component_name"

.field static final EXTRA_SETTINGS_TITLE:Ljava/lang/String; = "settings_title"

.field static final EXTRA_SUMMARY:Ljava/lang/String; = "summary"

.field static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final LARGE_FONT_SCALE:F = 1.3f

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SELECT_LONG_PRESS_TIMEOUT_PREFERENCE:Ljava/lang/String; = "select_long_press_timeout_preference"

.field private static final SERVICES_CATEGORY:Ljava/lang/String; = "services_category"

.field private static final SYSTEM_CATEGORY:Ljava/lang/String; = "system_category"

.field private static final TOGGLE_HIGH_TEXT_CONTRAST_PREFERENCE:Ljava/lang/String; = "toggle_high_text_contrast_preference"

.field private static final TOGGLE_INVERSION_PREFERENCE:Ljava/lang/String; = "toggle_inversion_preference"

.field private static final TOGGLE_LARGE_TEXT_PREFERENCE:Ljava/lang/String; = "toggle_large_text_preference"

.field private static final TOGGLE_LOCK_SCREEN_ROTATION_PREFERENCE:Ljava/lang/String; = "toggle_lock_screen_rotation_preference"

.field private static final TOGGLE_POWER_BUTTON_ENDS_CALL_PREFERENCE:Ljava/lang/String; = "toggle_power_button_ends_call_preference"

.field private static final TOGGLE_SPEAK_PASSWORD_PREFERENCE:Ljava/lang/String; = "toggle_speak_password_preference"

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/oneplus/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Landroid/preference/PreferenceCategory;

.field private mToggleHighTextContrastPreference:Landroid/preference/SwitchPreference;

.field private mToggleInversionPreference:Landroid/preference/SwitchPreference;

.field private mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

.field private mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

.field private mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 633
    new-instance v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$5;

    invoke-direct {v0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings$5;-><init>()V

    sput-object v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 129
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 141
    new-instance v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 167
    new-instance v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/oneplus/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/oneplus/settings/accessibility/SettingsContentObserver;

    .line 176
    new-instance v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings$4;-><init>(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method private handleDisplayMagnificationPreferenceScreenClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 339
    iget-object v3, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 340
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f09071b

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v3, "summary"

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09071c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 344
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 346
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 348
    return-void

    :cond_0
    move v1, v2

    .line 344
    goto :goto_0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 318
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    return-void
.end method

.method private handleToggleEnableAccessibilityGesturePreferenceClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 327
    iget-object v3, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 328
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f09071d

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v3, "summary"

    const v4, 0x7f090720

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 336
    return-void

    :cond_0
    move v1, v2

    .line 332
    goto :goto_0
.end method

.method private handleToggleInversionPreferenceChange(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleLargeTextPreferenceClick()V
    .locals 2

    .prologue
    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666    # 1.3f

    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 295
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_1
    return-void

    .line 294
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleTextContrastPreferenceClick()V
    .locals 3

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_text_contrast_enabled"

    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 10

    .prologue
    const/16 v9, 0x1a

    .line 351
    const-string v6, "services_category"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 352
    const-string v6, "system_category"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    .line 355
    const-string v6, "toggle_large_text_preference"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

    .line 359
    const-string v6, "toggle_high_text_contrast_preference"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/preference/SwitchPreference;

    .line 363
    const-string v6, "toggle_inversion_preference"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/preference/SwitchPreference;

    .line 364
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 367
    const-string v6, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    .line 369
    invoke-static {v9}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 371
    :cond_0
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    :cond_1
    const-string v6, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    .line 377
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 378
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    :cond_2
    const-string v6, "toggle_speak_password_preference"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    .line 386
    const-string v6, "select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 388
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 389
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 390
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, "timeoutValues":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 393
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "timeoutTitles":[Ljava/lang/String;
    array-length v4, v5

    .line 396
    .local v4, "timeoutValueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 397
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v7, v5, v1

    aget-object v8, v3, v1

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "i":I
    .end local v3    # "timeoutTitles":[Ljava/lang/String;
    .end local v4    # "timeoutValueCount":I
    .end local v5    # "timeoutValues":[Ljava/lang/String;
    :cond_3
    const-string v6, "captioning_preference_screen"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 406
    const-string v6, "screen_magnification_preference_screen"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 410
    const-string v6, "daltonizer_preference_screen"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 414
    const-string v6, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 416
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0040

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 418
    .local v2, "longPressOnPowerBehavior":I
    const/4 v0, 0x1

    .line 419
    .local v0, "LONG_PRESS_POWER_GLOBAL_ACTIONS":I
    invoke-static {v9}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    if-eq v2, v6, :cond_5

    .line 423
    :cond_4
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 427
    :cond_5
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    const-string v7, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    const-string v7, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    return-void
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 613
    sget-object v4, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 614
    .local v4, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 616
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 619
    .local v3, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v3, :cond_1

    .line 631
    :cond_0
    return-void

    .line 623
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 624
    .local v2, "installedServiceInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 625
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 626
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    .local v1, "installedService":Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    .line 434
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    .line 435
    return-void
.end method

.method private updateFeatureSummary(Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 3
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 599
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 600
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f090736

    :goto_1
    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 602
    return-void

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v1

    .line 599
    goto :goto_0

    .line 600
    .restart local v0    # "enabled":Z
    :cond_1
    const v1, 0x7f090737

    goto :goto_1
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 606
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 607
    iget-object v2, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 610
    :cond_0
    return-void

    .line 607
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 26

    .prologue
    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 447
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v12

    .line 449
    .local v12, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/oneplus/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    .line 451
    .local v8, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v14

    .line 453
    .local v14, "permittedServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "accessibility_enabled"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/4 v3, 0x1

    .line 456
    .local v3, "accessibilityEnabled":Z
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "count":I
    :goto_1
    if-ge v10, v6, :cond_a

    .line 457
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 459
    .local v11, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 461
    .local v15, "preference":Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    .line 463
    .local v22, "title":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    .line 464
    .local v19, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 470
    if-eqz v3, :cond_5

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v17, 0x1

    .line 473
    .local v17, "serviceEnabled":Z
    :goto_2
    if-eqz v17, :cond_6

    .line 474
    const v23, 0x7f090736

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 480
    .local v18, "serviceEnabledString":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v19

    iget-object v13, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 481
    .local v13, "packageName":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_0
    const/16 v16, 0x1

    .line 483
    .local v16, "serviceAllowed":Z
    :goto_4
    if-nez v16, :cond_1

    if-eqz v17, :cond_8

    :cond_1
    const/16 v23, 0x1

    :goto_5
    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 486
    if-eqz v16, :cond_9

    .line 487
    move-object/from16 v21, v18

    .line 491
    .local v21, "summaryString":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    invoke-virtual {v15, v10}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 494
    const-class v23, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 495
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 497
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 498
    .local v9, "extras":Landroid/os/Bundle;
    const-string v23, "preference_key"

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v23, "checked"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 500
    const-string v23, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v7

    .line 503
    .local v7, "description":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 504
    const v23, 0x7f090764

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 506
    :cond_2
    const-string v23, "summary"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v20

    .line 509
    .local v20, "settingsClassName":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 510
    const-string v23, "settings_title"

    const v24, 0x7f090735

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v23, "settings_component_name"

    new-instance v24, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_3
    const-string v23, "component_name"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 456
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 453
    .end local v3    # "accessibilityEnabled":Z
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "count":I
    .end local v7    # "description":Ljava/lang/String;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "i":I
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "preference":Landroid/preference/PreferenceScreen;
    .end local v16    # "serviceAllowed":Z
    .end local v17    # "serviceEnabled":Z
    .end local v18    # "serviceEnabledString":Ljava/lang/String;
    .end local v19    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v20    # "settingsClassName":Ljava/lang/String;
    .end local v21    # "summaryString":Ljava/lang/String;
    .end local v22    # "title":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 470
    .restart local v3    # "accessibilityEnabled":Z
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "count":I
    .restart local v10    # "i":I
    .restart local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v15    # "preference":Landroid/preference/PreferenceScreen;
    .restart local v19    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v22    # "title":Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 476
    .restart local v17    # "serviceEnabled":Z
    :cond_6
    const v23, 0x7f090737

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "serviceEnabledString":Ljava/lang/String;
    goto/16 :goto_3

    .line 481
    .restart local v13    # "packageName":Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 483
    .restart local v16    # "serviceAllowed":Z
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 489
    :cond_9
    const v23, 0x7f090738

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "summaryString":Ljava/lang/String;
    goto/16 :goto_6

    .line 522
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "preference":Landroid/preference/PreferenceScreen;
    .end local v16    # "serviceAllowed":Z
    .end local v17    # "serviceEnabled":Z
    .end local v18    # "serviceEnabledString":Ljava/lang/String;
    .end local v19    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v21    # "summaryString":Ljava/lang/String;
    .end local v22    # "title":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v23

    if-nez v23, :cond_c

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    if-nez v23, :cond_b

    .line 524
    new-instance v23, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f0400d9

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f090763

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 532
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 534
    :cond_c
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 539
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    iget-object v9, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    const v10, 0x3fa66666    # 1.3f

    cmpl-float v6, v6, v10

    if-nez v6, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 545
    iget-object v9, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "high_text_contrast_enabled"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 550
    iget-object v9, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "accessibility_display_inversion_enabled"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 554
    const/16 v6, 0x1a

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "incall_power_button_behavior"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 559
    .local v1, "incallPowerBehavior":I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    move v3, v7

    .line 561
    .local v3, "powerButtonEndsCall":Z
    :goto_4
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 565
    .end local v1    # "incallPowerBehavior":I
    .end local v3    # "powerButtonEndsCall":Z
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 568
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "speak_password"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v4, v7

    .line 570
    .local v4, "speakPasswordEnabled":Z
    :goto_5
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 573
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "long_press_timeout"

    iget v10, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 575
    .local v2, "longPressTimeout":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 576
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 577
    iget-object v9, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v9, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 579
    const-string v6, "accessibility_captioning_enabled"

    iget-object v9, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v6, v9}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 581
    const-string v6, "accessibility_display_magnification_enabled"

    iget-object v9, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v6, v9}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 583
    const-string v6, "accessibility_display_daltonizer_enabled"

    iget-object v9, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v6, v9}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 587
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "enable_accessibility_global_gesture_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_6

    move v0, v7

    .line 589
    .local v0, "globalGestureEnabled":Z
    :goto_6
    if-eqz v0, :cond_7

    .line 590
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v7, 0x7f09071e

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 596
    :goto_7
    return-void

    .end local v0    # "globalGestureEnabled":Z
    .end local v2    # "longPressTimeout":I
    .end local v4    # "speakPasswordEnabled":Z
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    move v6, v8

    .line 543
    goto/16 :goto_1

    :cond_2
    move v6, v8

    .line 545
    goto/16 :goto_2

    :cond_3
    move v6, v8

    .line 550
    goto/16 :goto_3

    .restart local v1    # "incallPowerBehavior":I
    :cond_4
    move v3, v8

    .line 559
    goto :goto_4

    .end local v1    # "incallPowerBehavior":I
    :cond_5
    move v4, v8

    .line 568
    goto :goto_5

    .restart local v2    # "longPressTimeout":I
    .restart local v4    # "speakPasswordEnabled":Z
    .restart local v5    # "value":Ljava/lang/String;
    :cond_6
    move v0, v8

    .line 587
    goto :goto_6

    .line 593
    .restart local v0    # "globalGestureEnabled":Z
    :cond_7
    iget-object v6, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v7, 0x7f09071f

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_7

    .line 540
    .end local v0    # "globalGestureEnabled":Z
    .end local v2    # "longPressTimeout":I
    .end local v4    # "speakPasswordEnabled":Z
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 208
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 214
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 233
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/oneplus/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 234
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 238
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 239
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 243
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_0

    .line 244
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V

    .line 250
    :goto_0
    return v0

    .line 246
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/preference/SwitchPreference;

    if-ne v1, p1, :cond_1

    .line 247
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->handleToggleInversionPreferenceChange(Z)V

    goto :goto_0

    .line 250
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 267
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

    if-ne v1, p2, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->handleToggleLargeTextPreferenceClick()V

    .line 289
    :goto_0
    return v0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/preference/SwitchPreference;

    if-ne v1, p2, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->handleToggleTextContrastPreferenceClick()V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    if-ne v1, p2, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    goto :goto_0

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    if-ne v1, p2, :cond_3

    .line 277
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    goto :goto_0

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    if-ne v1, p2, :cond_4

    .line 280
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    goto :goto_0

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_5

    .line 283
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->handleToggleEnableAccessibilityGesturePreferenceClick()V

    goto :goto_0

    .line 285
    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_6

    .line 286
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->handleDisplayMagnificationPreferenceScreenClick()V

    goto :goto_0

    .line 289
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 218
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 219
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    .line 220
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 222
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 223
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/oneplus/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 224
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 228
    :cond_0
    return-void
.end method
