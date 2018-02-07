.class public Lcom/android/settings_ex/VoiceInputOutputSettings;
.super Ljava/lang/Object;
.source "VoiceInputOutputSettings.java"


# static fields
.field private static final KEY_TTS_SETTINGS:Ljava/lang/String; = "tts_settings"

.field private static final KEY_VOICE_CATEGORY:Ljava/lang/String; = "voice_category"

.field private static final TAG:Ljava/lang/String; = "VoiceInputOutputSettings"


# instance fields
.field private final mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

.field private mParent:Landroid/support/v7/preference/PreferenceGroup;

.field private final mTtsEngines:Landroid/speech/tts/TtsEngines;

.field private mTtsSettingsPref:Landroid/support/v7/preference/Preference;

.field private mVoiceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mVoiceInputSettingsPref:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/SettingsPreferenceFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/android/settings_ex/SettingsPreferenceFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    .line 43
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    .line 41
    return-void
.end method

.method private populateOrRemovePreferences()V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/VoiceInputOutputSettings;->populateOrRemoveTtsPrefs()Z

    move-result v0

    .line 56
    .local v0, "hasTtsPrefs":Z
    if-nez v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mVoiceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 54
    :cond_0
    return-void
.end method

.method private populateOrRemoveTtsPrefs()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mVoiceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mTtsSettingsPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 67
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mParent:Landroid/support/v7/preference/PreferenceGroup;

    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mParent:Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v1, "voice_category"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mVoiceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mVoiceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v1, "tts_settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mTtsSettingsPref:Landroid/support/v7/preference/Preference;

    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/VoiceInputOutputSettings;->populateOrRemovePreferences()V

    .line 46
    return-void
.end method
