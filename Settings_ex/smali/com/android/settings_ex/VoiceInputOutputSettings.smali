.class public Lcom/android/settings_ex/VoiceInputOutputSettings;
.super Ljava/lang/Object;
.source "VoiceInputOutputSettings.java"


# static fields
.field private static final KEY_TTS_SETTINGS:Ljava/lang/String; = "tts_settings"

.field private static final KEY_VOICE_CATEGORY:Ljava/lang/String; = "voice_category"

.field private static final KEY_VOICE_INPUT_SETTINGS:Ljava/lang/String; = "voice_input_settings"

.field private static final TAG:Ljava/lang/String; = "VoiceInputOutputSettings"


# instance fields
.field private final mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

.field private mParent:Landroid/preference/PreferenceGroup;

.field private final mTtsEngines:Landroid/speech/tts/TtsEngines;

.field private mTtsSettingsPref:Landroid/preference/Preference;

.field private mVoiceCategory:Landroid/preference/PreferenceCategory;

.field private mVoiceInputSettingsPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/SettingsPreferenceFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/android/settings_ex/SettingsPreferenceFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    .line 46
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    .line 47
    return-void
.end method

.method private populateOrRemovePreferences()V
    .locals 4

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/VoiceInputOutputSettings;->populateOrRemoveVoiceInputPrefs()Z

    move-result v1

    .line 61
    .local v1, "hasVoiceInputPrefs":Z
    invoke-direct {p0}, Lcom/android/settings_ex/VoiceInputOutputSettings;->populateOrRemoveTtsPrefs()Z

    move-result v0

    .line 62
    .local v0, "hasTtsPrefs":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 66
    iget-object v2, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 68
    :cond_0
    return-void
.end method

.method private populateOrRemoveTtsPrefs()Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mTtsSettingsPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private populateOrRemoveVoiceInputPrefs()Z
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v1, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/voice/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "helper":Lcom/android/settings_ex/voice/VoiceInputHelper;
    invoke-virtual {v0}, Lcom/android/settings_ex/voice/VoiceInputHelper;->hasItems()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mVoiceInputSettingsPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    const/4 v1, 0x0

    .line 77
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mParent:Landroid/preference/PreferenceGroup;

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mParent:Landroid/preference/PreferenceGroup;

    const-string v1, "voice_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "voice_input_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mVoiceInputSettingsPref:Landroid/preference/Preference;

    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "tts_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/VoiceInputOutputSettings;->mTtsSettingsPref:Landroid/preference/Preference;

    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/VoiceInputOutputSettings;->populateOrRemovePreferences()V

    .line 57
    return-void
.end method
