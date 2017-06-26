.class public Lcom/android/settings_ex/LegalSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LegalSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final KEY_COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final KEY_LEGAL_NOTICES:Ljava/lang/String; = "op_legal_notices"

.field private static final KEY_LEGAL_NOTICES_TYPE:I = 0x1

.field private static final KEY_LICENSE:Ljava/lang/String; = "license"

.field private static final KEY_NOTICES_TYPE:Ljava/lang/String; = "op_legal_notices_type"

.field private static final KEY_PRIVACE_POLICY:Ljava/lang/String; = "op_privacy_policy"

.field private static final KEY_PRIVACE_POLICY_TYPE:I = 0x3

.field private static final KEY_TERMS:Ljava/lang/String; = "terms"

.field private static final KEY_USER_AGREEMENT:Ljava/lang/String; = "op_user_agreements"

.field private static final KEY_USER_AGREEMENT_TYPE:I = 0x2

.field private static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper_attributions"

.field private static final KEY_WEBVIEW_LICENSE:Ljava/lang/String; = "webview_license"

.field private static final OPLEGAL_NOTICES_ACTION:Ljava/lang/String; = "android.oem.intent.action.OP_LEGAL"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/settings_ex/LegalSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/LegalSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/LegalSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0xe1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/high16 v2, 0x7f080000

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/LegalSettings;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/LegalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 62
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings_ex/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 63
    .local v1, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v2, "terms"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 65
    const-string v2, "license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 67
    const-string v2, "copyright"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 69
    const-string v2, "webview_license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/LegalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "oem.op_legal_information.support"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    const-string v2, "op_legal_notices"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 73
    const-string v2, "op_user_agreements"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    const-string v2, "op_privacy_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    const-string v2, "wallpaper_attributions"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0c025a

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 84
    :try_start_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "op_legal_notices"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "op_legal_notices_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LegalSettings;->startActivity(Landroid/content/Intent;)V

    .line 102
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 89
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "op_user_agreements"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "op_legal_notices_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LegalSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 102
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    .line 94
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "op_privacy_policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "op_legal_notices_type"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LegalSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
