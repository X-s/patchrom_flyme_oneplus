.class public Lcom/android/settings_ex/applications/SpecialAccessSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SpecialAccessSettings.java"


# instance fields
.field private mDataSaverPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x15f

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 31
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/SpecialAccessSettings;->addPreferencesFromResource(I)V

    .line 34
    const-string/jumbo v0, "data_saver"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/SpecialAccessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ex/applications/SpecialAccessSettings;->mDataSaverPreference:Landroid/support/v7/preference/Preference;

    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/applications/SpecialAccessSettings;->mDataSaverPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/SpecialAccessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/SpecialAccessSettings;->mDataSaverPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 30
    :cond_0
    return-void
.end method
