.class public Lcom/android/settings_ex/LegalInformation;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LegalInformation.java"


# static fields
.field private static final KEY_COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final KEY_LICENSE:Ljava/lang/String; = "license"

.field private static final KEY_TERMS:Ljava/lang/String; = "terms"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 19
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v2, 0x7f06002a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/LegalInformation;->addPreferencesFromResource(I)V

    .line 27
    invoke-virtual {p0}, Lcom/android/settings_ex/LegalInformation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 29
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings_ex/LegalInformation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 30
    .local v1, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v2, "terms"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 32
    const-string v2, "license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 34
    const-string v2, "copyright"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 49
    return-void
.end method
