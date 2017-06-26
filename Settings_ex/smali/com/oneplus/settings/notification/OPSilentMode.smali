.class public Lcom/oneplus/settings/notification/OPSilentMode;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPSilentMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPSilentMode$SettingsPrefsObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_ON:I = 0x1

.field private static final KEY_SILENT_MODE_ENABLE:Ljava/lang/String; = "silent_mode_enable"

.field private static final OEM_VIBRATE_SILENT:Ljava/lang/String; = "oem_vibrate_under_silent"

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;


# instance fields
.field private final mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPSilentMode$SettingsPrefsObserver;

.field private mVibrateWhenMute:Landroid/preference/TwoStatePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 33
    new-instance v0, Lcom/oneplus/settings/notification/OPSilentMode$1;

    const/4 v1, 0x2

    const-string v2, "silent_mode_enable"

    const-string v3, "oem_vibrate_under_silent"

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/notification/OPSilentMode$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPSilentMode;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 31
    new-instance v0, Lcom/oneplus/settings/notification/OPSilentMode$SettingsPrefsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPSilentMode$SettingsPrefsObserver;-><init>(Lcom/oneplus/settings/notification/OPSilentMode;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSilentMode;->mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPSilentMode$SettingsPrefsObserver;

    .line 72
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/oneplus/settings/notification/OPSilentMode;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPSilentMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSilentMode;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSilentMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/settings_ex/notification/SettingPref;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/oneplus/settings/notification/OPSilentMode;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    return-object v0
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 57
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSilentMode;->addPreferencesFromResource(I)V

    .line 51
    sget-object v0, Lcom/oneplus/settings/notification/OPSilentMode;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 52
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSilentMode;->mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPSilentMode$SettingsPrefsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPSilentMode$SettingsPrefsObserver;->register(Z)V

    .line 69
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 70
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSilentMode;->mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPSilentMode$SettingsPrefsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPSilentMode$SettingsPrefsObserver;->register(Z)V

    .line 64
    return-void
.end method
