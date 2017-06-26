.class public Lcom/oneplus/settings/notification/OPRingPattern;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPRingPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPRingPattern$SettingsPrefsObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_OFF:I = 0x0

.field private static final KEY_SILENT_MODE_ENABLE:Ljava/lang/String; = "silent_mode_enable"

.field private static final OEM_VIBRATE_INCALL:Ljava/lang/String; = "oem_vibrate_when_incall"

.field private static final PREF_VIBRATE_INCALL:Lcom/android/settings_ex/notification/SettingPref;


# instance fields
.field private final mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsPrefsObserver;

.field private mVibrateWhenIncall:Landroid/preference/TwoStatePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 28
    new-instance v0, Lcom/oneplus/settings/notification/OPRingPattern$1;

    const/4 v1, 0x2

    const-string v2, "silent_mode_enable"

    const-string v3, "oem_vibrate_when_incall"

    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/notification/OPRingPattern$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPRingPattern;->PREF_VIBRATE_INCALL:Lcom/android/settings_ex/notification/SettingPref;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 26
    new-instance v0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsPrefsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPRingPattern$SettingsPrefsObserver;-><init>(Lcom/oneplus/settings/notification/OPRingPattern;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsPrefsObserver;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/notification/OPRingPattern;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPRingPattern;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/settings_ex/notification/SettingPref;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/oneplus/settings/notification/OPRingPattern;->PREF_VIBRATE_INCALL:Lcom/android/settings_ex/notification/SettingPref;

    return-object v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingPattern;->addPreferencesFromResource(I)V

    .line 47
    const-string v0, "silent_mode_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingPattern;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenIncall:Landroid/preference/TwoStatePreference;

    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenIncall:Landroid/preference/TwoStatePreference;

    const v1, 0x7f0c013f

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPRingPattern;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    sget-object v0, Lcom/oneplus/settings/notification/OPRingPattern;->PREF_VIBRATE_INCALL:Lcom/android/settings_ex/notification/SettingPref;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 51
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsPrefsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPRingPattern$SettingsPrefsObserver;->register(Z)V

    .line 62
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 63
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsPrefsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPRingPattern$SettingsPrefsObserver;->register(Z)V

    .line 57
    return-void
.end method
