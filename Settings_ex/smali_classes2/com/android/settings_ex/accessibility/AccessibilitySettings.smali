.class public Lcom/android/settings_ex/accessibility/AccessibilitySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings_ex/DialogCreatable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accessibility/AccessibilitySettings$1;,
        Lcom/android/settings_ex/accessibility/AccessibilitySettings$2;,
        Lcom/android/settings_ex/accessibility/AccessibilitySettings$3;,
        Lcom/android/settings_ex/accessibility/AccessibilitySettings$4;,
        Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;,
        Lcom/android/settings_ex/accessibility/AccessibilitySettings$6;
    }
.end annotation


# static fields
.field private static final AUTOCLICK_PREFERENCE_SCREEN:Ljava/lang/String; = "autoclick_preference_screen"

.field private static final CAPTIONING_PREFERENCE_SCREEN:Ljava/lang/String; = "captioning_preference_screen"

.field private static final DELAY_UPDATE_SERVICES_MILLIS:J = 0x3e8L

.field private static final DISPLAY_DALTONIZER_PREFERENCE_SCREEN:Ljava/lang/String; = "daltonizer_preference_screen"

.field private static final DISPLAY_MAGNIFICATION_PREFERENCE_SCREEN:Ljava/lang/String; = "screen_magnification_preference_screen"

.field private static final ENABLE_ACCESSIBILITY_GESTURE_PREFERENCE_SCREEN:Ljava/lang/String; = "enable_global_gesture_preference_screen"

.field static final EXTRA_CHECKED:Ljava/lang/String; = "checked"

.field static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field static final EXTRA_SETTINGS_COMPONENT_NAME:Ljava/lang/String; = "settings_component_name"

.field static final EXTRA_SETTINGS_TITLE:Ljava/lang/String; = "settings_title"

.field static final EXTRA_SUMMARY:Ljava/lang/String; = "summary"

.field static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final FONT_SIZE_PREFERENCE_SCREEN:Ljava/lang/String; = "font_size_preference_screen"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SELECT_LONG_PRESS_TIMEOUT_PREFERENCE:Ljava/lang/String; = "select_long_press_timeout_preference"

.field private static final SERVICES_CATEGORY:Ljava/lang/String; = "services_category"

.field private static final SYSTEM_CATEGORY:Ljava/lang/String; = "system_category"

.field private static final TOGGLE_HIGH_TEXT_CONTRAST_PREFERENCE:Ljava/lang/String; = "toggle_high_text_contrast_preference"

.field private static final TOGGLE_INVERSION_PREFERENCE:Ljava/lang/String; = "toggle_inversion_preference"

.field private static final TOGGLE_LARGE_POINTER_ICON:Ljava/lang/String; = "toggle_large_pointer_icon"

.field private static final TOGGLE_LOCK_SCREEN_ROTATION_PREFERENCE:Ljava/lang/String; = "toggle_lock_screen_rotation_preference"

.field private static final TOGGLE_MASTER_MONO:Ljava/lang/String; = "toggle_master_mono"

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


# instance fields
.field private mAutoclickPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mCaptioningPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFontSizePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

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

.field private mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

.field private mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/settings_ex/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleInversionObserver:Landroid/database/ContentObserver;

.field private mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleSpeakPasswordPreference:Landroid/support/v14/preference/SwitchPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 702
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$6;

    invoke-direct {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$6;-><init>()V

    .line 701
    sput-object v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 167
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    .line 166
    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings_ex/accessibility/SettingsContentObserver;

    .line 174
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 217
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;

    .line 218
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 217
    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;-><init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleInversionObserver:Landroid/database/ContentObserver;

    .line 72
    return-void
.end method

.method private handleDisplayMagnificationPreferenceScreenClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 380
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "title"

    .line 381
    const v4, 0x7f0e0acb

    .line 380
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string/jumbo v3, "summary"

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 383
    const v5, 0x7f0e0acd

    .line 382
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 384
    const-string/jumbo v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 385
    const-string/jumbo v5, "accessibility_display_magnification_enabled"

    .line 384
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 386
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-super {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 378
    return-void

    :cond_0
    move v1, v2

    .line 384
    goto :goto_0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 342
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 346
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 345
    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 340
    return-void

    .line 346
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 286
    const-string/jumbo v1, "long_press_timeout"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 285
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 287
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method private handleToggleEnableAccessibilityGesturePreferenceClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 368
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 369
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "title"

    .line 370
    const v4, 0x7f0e0ace

    .line 369
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string/jumbo v3, "summary"

    .line 372
    const v4, 0x7f0e0ad1

    .line 371
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 374
    const-string/jumbo v5, "enable_accessibility_global_gesture_enabled"

    .line 373
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 375
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-super {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 367
    return-void

    :cond_0
    move v1, v2

    .line 373
    goto :goto_0
.end method

.method private handleToggleInversionPreferenceChange(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 293
    const-string/jumbo v2, "accessibility_display_inversion_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 292
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleLargePointerIconPreferenceClick()V
    .locals 3

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 358
    const-string/jumbo v2, "accessibility_large_pointer_icon"

    .line 359
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 357
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleMasterMonoPreferenceClick()V
    .locals 4

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "master_mono"

    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    .line 363
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 362
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 334
    const-string/jumbo v2, "incall_power_button_behavior"

    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x2

    .line 333
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    return-void

    .line 337
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 352
    const-string/jumbo v2, "speak_password"

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 351
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    return-void

    .line 353
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleTextContrastPreferenceClick()V
    .locals 3

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 328
    const-string/jumbo v2, "high_text_contrast_enabled"

    .line 329
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 327
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 326
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 10

    .prologue
    const/16 v9, 0x1a

    const/4 v8, 0x0

    .line 390
    const-string/jumbo v6, "services_category"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 391
    const-string/jumbo v6, "system_category"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 395
    const-string/jumbo v6, "toggle_high_text_contrast_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    .line 394
    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 398
    const-string/jumbo v6, "toggle_inversion_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 399
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 403
    const-string/jumbo v6, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    .line 402
    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 404
    invoke-static {v9}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 411
    :goto_0
    const-string/jumbo v6, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    .line 410
    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 413
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 414
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 419
    :cond_0
    const-string/jumbo v6, "toggle_speak_password_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    .line 418
    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 423
    const-string/jumbo v6, "toggle_large_pointer_icon"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    .line 422
    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 427
    const-string/jumbo v6, "toggle_master_mono"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    .line 426
    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 431
    const-string/jumbo v6, "select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/ListPreference;

    .line 430
    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    .line 432
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 433
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 435
    const v7, 0x7f0a005b

    .line 434
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "timeoutValues":[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 437
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 438
    const v7, 0x7f0a005a

    .line 437
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "timeoutTitles":[Ljava/lang/String;
    array-length v4, v5

    .line 440
    .local v4, "timeoutValueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 441
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v7, v5, v1

    aget-object v8, v3, v1

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 406
    .end local v1    # "i":I
    .end local v3    # "timeoutTitles":[Ljava/lang/String;
    .end local v4    # "timeoutValueCount":I
    .end local v5    # "timeoutValues":[Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    .line 447
    :cond_2
    const-string/jumbo v6, "captioning_preference_screen"

    .line 446
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 451
    const-string/jumbo v6, "screen_magnification_preference_screen"

    .line 450
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 455
    const-string/jumbo v6, "font_size_preference_screen"

    .line 454
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mFontSizePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 459
    const-string/jumbo v6, "autoclick_preference_screen"

    .line 458
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mAutoclickPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 463
    const-string/jumbo v6, "daltonizer_preference_screen"

    .line 462
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 467
    const-string/jumbo v6, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    .line 466
    iput-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 468
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 469
    const v7, 0x10e0050

    .line 468
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 470
    .local v2, "longPressOnPowerBehavior":I
    const/4 v0, 0x1

    .line 471
    .local v0, "LONG_PRESS_POWER_GLOBAL_ACTIONS":I
    invoke-static {v9}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 472
    const/4 v6, 0x1

    if-eq v2, v6, :cond_4

    .line 475
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 389
    :cond_4
    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    .line 481
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    .line 479
    return-void
.end method

.method private updateAutoclickSummary(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 660
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_autoclick_enabled"

    .line 659
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 661
    .local v1, "enabled":Z
    :goto_0
    if-nez v1, :cond_1

    .line 662
    const v2, 0x7f0e0ae3

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 663
    return-void

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v2

    .line 659
    goto :goto_0

    .line 666
    .restart local v1    # "enabled":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_autoclick_delay"

    .line 667
    const/16 v4, 0x258

    .line 665
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 669
    .local v0, "delay":I
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 668
    invoke-static {v2, v0}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 658
    return-void
.end method

.method private updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 653
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 654
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f0e0ae2

    :goto_1
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 652
    return-void

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v1

    .line 653
    goto :goto_0

    .line 655
    .restart local v0    # "enabled":Z
    :cond_1
    const v1, 0x7f0e0ae3

    goto :goto_1
.end method

.method private updateFontSizeSummary(Landroid/support/v7/preference/Preference;)V
    .locals 8
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 674
    const-string/jumbo v6, "font_scale"

    const/high16 v7, 0x3f800000    # 1.0f

    .line 673
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 675
    .local v0, "currentScale":F
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 676
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0a0033

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "entries":[Ljava/lang/String;
    const v5, 0x7f0a0034

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 678
    .local v4, "strEntryValues":[Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/android/settings_ex/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v2

    .line 680
    .local v2, "index":I
    aget-object v5, v1, v2

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 672
    return-void
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    .prologue
    .line 686
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 688
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 689
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 690
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 689
    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 683
    :cond_0
    return-void

    .line 690
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateMasterMono()V
    .locals 5

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "master_mono"

    .line 697
    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 695
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 697
    const/4 v2, 0x1

    .line 695
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 698
    .local v0, "masterMono":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 694
    return-void

    .line 695
    .end local v0    # "masterMono":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "masterMono":Z
    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 26

    .prologue
    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 495
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v13

    .line 497
    .local v13, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    .line 496
    invoke-static/range {v23 .. v23}, Lcom/android/settings_exlib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 498
    .local v9, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v23, v0

    .line 499
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    .line 498
    invoke-virtual/range {v23 .. v24}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v15

    .line 500
    .local v15, "permittedServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    .line 501
    const-string/jumbo v24, "accessibility_enabled"

    const/16 v25, 0x0

    .line 500
    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 501
    const/16 v24, 0x1

    .line 500
    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/4 v3, 0x1

    .line 503
    .local v3, "accessibilityEnabled":Z
    :goto_0
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "count":I
    :goto_1
    if-ge v11, v7, :cond_9

    .line 504
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 506
    .local v12, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    new-instance v16, Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 507
    .local v16, "preference":Lcom/android/settings_exlib/RestrictedPreference;
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    .line 509
    .local v22, "title":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    .line 510
    .local v20, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 511
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 510
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 516
    if-eqz v3, :cond_4

    .line 517
    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    .line 519
    .local v18, "serviceEnabled":Z
    :goto_2
    if-eqz v18, :cond_5

    .line 520
    const v23, 0x7f0e0ae2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 526
    .local v19, "serviceEnabledString":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v20

    iget-object v14, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 528
    .local v14, "packageName":Ljava/lang/String;
    if-eqz v15, :cond_6

    invoke-interface {v15, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 529
    .local v17, "serviceAllowed":Z
    :goto_4
    if-nez v17, :cond_0

    if-eqz v18, :cond_7

    .line 538
    :cond_0
    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    .line 541
    :goto_5
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 543
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/settings_exlib/RestrictedPreference;->setOrder(I)V

    .line 544
    const-class v23, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setFragment(Ljava/lang/String;)V

    .line 545
    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setPersistent(Z)V

    .line 547
    invoke-virtual/range {v16 .. v16}, Lcom/android/settings_exlib/RestrictedPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 548
    .local v10, "extras":Landroid/os/Bundle;
    const-string/jumbo v23, "preference_key"

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings_exlib/RestrictedPreference;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string/jumbo v23, "checked"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 550
    const-string/jumbo v23, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v8

    .line 553
    .local v8, "description":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 554
    const v23, 0x7f0e0b10

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 556
    :cond_1
    const-string/jumbo v23, "summary"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v21

    .line 559
    .local v21, "settingsClassName":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 560
    const-string/jumbo v23, "settings_title"

    .line 561
    const v24, 0x7f0e0ae1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 560
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string/jumbo v23, "settings_component_name"

    .line 563
    new-instance v24, Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    .line 562
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_2
    const-string/jumbo v23, "component_name"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 503
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 500
    .end local v3    # "accessibilityEnabled":Z
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "count":I
    .end local v8    # "description":Ljava/lang/String;
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v11    # "i":I
    .end local v12    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v16    # "preference":Lcom/android/settings_exlib/RestrictedPreference;
    .end local v17    # "serviceAllowed":Z
    .end local v18    # "serviceEnabled":Z
    .end local v19    # "serviceEnabledString":Ljava/lang/String;
    .end local v20    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v21    # "settingsClassName":Ljava/lang/String;
    .end local v22    # "title":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "accessibilityEnabled":Z
    goto/16 :goto_0

    .line 516
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v7    # "count":I
    .restart local v11    # "i":I
    .restart local v12    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v16    # "preference":Lcom/android/settings_exlib/RestrictedPreference;
    .restart local v20    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v22    # "title":Ljava/lang/String;
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 522
    .restart local v18    # "serviceEnabled":Z
    :cond_5
    const v23, 0x7f0e0ae3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "serviceEnabledString":Ljava/lang/String;
    goto/16 :goto_3

    .line 528
    .restart local v14    # "packageName":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_4

    .line 531
    .restart local v17    # "serviceAllowed":Z
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    .line 530
    invoke-static/range {v23 .. v25}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    .line 532
    .local v5, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v5, :cond_8

    .line 533
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_5

    .line 535
    :cond_8
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 572
    .end local v5    # "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v16    # "preference":Lcom/android/settings_exlib/RestrictedPreference;
    .end local v17    # "serviceAllowed":Z
    .end local v18    # "serviceEnabled":Z
    .end local v19    # "serviceEnabledString":Ljava/lang/String;
    .end local v20    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v22    # "title":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v23

    if-nez v23, :cond_b

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v23, v0

    if-nez v23, :cond_a

    .line 574
    new-instance v23, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v23, v0

    .line 577
    const v24, 0x7f0401e8

    .line 576
    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v23, v0

    .line 580
    const v24, 0x7f0e0b0f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 579
    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 582
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 484
    :cond_b
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 588
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 589
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 590
    const-string/jumbo v10, "high_text_contrast_enabled"

    .line 589
    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1

    move v6, v7

    .line 588
    :goto_0
    invoke-virtual {v9, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 593
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 594
    const-string/jumbo v10, "accessibility_display_inversion_enabled"

    .line 593
    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 597
    const/16 v6, 0x1a

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    .line 597
    if-eqz v6, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 600
    const-string/jumbo v9, "incall_power_button_behavior"

    .line 599
    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 603
    .local v1, "incallPowerBehavior":I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    const/4 v3, 0x1

    .line 604
    .local v3, "powerButtonEndsCall":Z
    :goto_2
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 608
    .end local v1    # "incallPowerBehavior":I
    .end local v3    # "powerButtonEndsCall":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 611
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 612
    const-string/jumbo v9, "speak_password"

    .line 611
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    .line 613
    .local v4, "speakPasswordEnabled":Z
    :goto_3
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 616
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 617
    const-string/jumbo v10, "accessibility_large_pointer_icon"

    .line 616
    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 620
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateMasterMono()V

    .line 623
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 624
    const-string/jumbo v9, "long_press_timeout"

    iget v10, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 623
    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 625
    .local v2, "longPressTimeout":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 626
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 627
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v9, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 629
    const-string/jumbo v6, "accessibility_captioning_enabled"

    .line 630
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 629
    invoke-direct {p0, v6, v9}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 631
    const-string/jumbo v6, "accessibility_display_magnification_enabled"

    .line 632
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 631
    invoke-direct {p0, v6, v9}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 633
    const-string/jumbo v6, "accessibility_display_daltonizer_enabled"

    .line 634
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 633
    invoke-direct {p0, v6, v9}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 636
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mFontSizePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateFontSizeSummary(Landroid/support/v7/preference/Preference;)V

    .line 638
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mAutoclickPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0, v6}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateAutoclickSummary(Landroid/support/v7/preference/Preference;)V

    .line 641
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 642
    const-string/jumbo v9, "enable_accessibility_global_gesture_enabled"

    .line 641
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_6

    move v0, v7

    .line 643
    .local v0, "globalGestureEnabled":Z
    :goto_5
    if-eqz v0, :cond_7

    .line 644
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 645
    const v7, 0x7f0e0acf

    .line 644
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    .line 586
    :goto_6
    return-void

    .end local v0    # "globalGestureEnabled":Z
    .end local v2    # "longPressTimeout":I
    .end local v4    # "speakPasswordEnabled":Z
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    move v6, v8

    .line 589
    goto/16 :goto_0

    :cond_2
    move v6, v8

    .line 593
    goto/16 :goto_1

    .line 603
    .restart local v1    # "incallPowerBehavior":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "powerButtonEndsCall":Z
    goto/16 :goto_2

    .line 611
    .end local v1    # "incallPowerBehavior":I
    .end local v3    # "powerButtonEndsCall":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "speakPasswordEnabled":Z
    goto/16 :goto_3

    :cond_5
    move v6, v8

    .line 616
    goto :goto_4

    .restart local v2    # "longPressTimeout":I
    .restart local v5    # "value":Ljava/lang/String;
    :cond_6
    move v0, v8

    .line 641
    goto :goto_5

    .line 647
    .restart local v0    # "globalGestureEnabled":Z
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 648
    const v7, 0x7f0e0ad0

    .line 647
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_6
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 213
    const v0, 0x7f0e0d71

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 233
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 234
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 236
    const-string/jumbo v1, "device_policy"

    .line 235
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 231
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 261
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings_ex/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 263
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleInversionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 269
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 259
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    if-ne v0, p1, :cond_0

    .line 275
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V

    .line 276
    return v1

    .line 277
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_1

    .line 278
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleToggleInversionPreferenceChange(Z)V

    .line 279
    return v1

    .line 281
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleToggleTextContrastPreferenceClick()V

    .line 300
    return v1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    .line 303
    return v1

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    .line 306
    return v1

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_3

    .line 308
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    .line 309
    return v1

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_4

    .line 311
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleToggleLargePointerIconPreferenceClick()V

    .line 312
    return v1

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_5

    .line 314
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleToggleMasterMonoPreferenceClick()V

    .line 315
    return v1

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-ne v0, p1, :cond_6

    .line 317
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleToggleEnableAccessibilityGesturePreferenceClick()V

    .line 318
    return v1

    .line 319
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-ne v0, p1, :cond_7

    .line 320
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->handleDisplayMagnificationPreferenceScreenClick()V

    .line 321
    return v1

    .line 323
    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 242
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings_ex/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 247
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    const-string/jumbo v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleInversionObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 252
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 240
    return-void
.end method
