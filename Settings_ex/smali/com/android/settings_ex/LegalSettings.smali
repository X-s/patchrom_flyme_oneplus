.class public Lcom/android/settings_ex/LegalSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LegalSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/LegalSettings$1;
    }
.end annotation


# static fields
.field private static final KEY_COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final KEY_LEGAL_NOTICES:Ljava/lang/String; = "op_legal_notices"

.field private static final KEY_LEGAL_NOTICES_TYPE:I = 0x1

.field private static final KEY_LICENSE:Ljava/lang/String; = "license"

.field private static final KEY_NOTICES_TYPE:Ljava/lang/String; = "op_legal_notices_type"

.field private static final KEY_PERMISSION_AGREEMENT:Ljava/lang/String; = "op_permission_agreement"

.field private static final KEY_PERMISSION_AGREEMENT_TYPE:I = 0x4

.field private static final KEY_PRIVACE_POLICY:Ljava/lang/String; = "op_privacy_policy"

.field private static final KEY_PRIVACE_POLICY_TYPE:I = 0x3

.field private static final KEY_TERMS:Ljava/lang/String; = "terms"

.field private static final KEY_USER_AGREEMENT:Ljava/lang/String; = "op_user_agreements"

.field private static final KEY_USER_AGREEMENT_TYPE:I = 0x2

.field private static final KEY_WALLPAPER_ATTRIBUTIONS:Ljava/lang/String; = "wallpaper_attributions"

.field private static final KEY_WEBVIEW_LICENSE:Ljava/lang/String; = "webview_license"

.field private static final ONEPLUS_A5000:Ljava/lang/String; = "ONEPLUS A5000"

.field private static final OPLEGAL_NOTICES_ACTION:Ljava/lang/String; = "android.oem.intent.action.OP_LEGAL"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/android/settings_ex/LegalSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/LegalSettings$1;-><init>()V

    .line 138
    sput-object v0, Lcom/android/settings_ex/LegalSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0xe1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/high16 v3, 0x7f080000

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LegalSettings;->addPreferencesFromResource(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/LegalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings_ex/LegalSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 79
    .local v2, "parentPreference":Landroid/support/v7/preference/PreferenceGroup;
    const-string/jumbo v3, "terms"

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 81
    const-string/jumbo v3, "license"

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 83
    const-string/jumbo v3, "copyright"

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 85
    const-string/jumbo v3, "webview_license"

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 88
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const-string/jumbo v3, "op_permission_agreement"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 93
    :cond_0
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v4, "ONEPLUS A5000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    const-string/jumbo v3, "wallpaper_attributions"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 95
    .local v1, "mWallpaperAttributtonsPreference":Landroid/support/v7/preference/Preference;
    const v3, 0x7f0e04b0

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 96
    const-string/jumbo v3, "icon_attributions"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 98
    .end local v1    # "mWallpaperAttributtonsPreference":Landroid/support/v7/preference/Preference;
    :cond_1
    const-string/jumbo v3, "op_legal_notices"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 72
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 107
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "op_legal_notices"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "op_legal_notices_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/LegalSettings;->startActivity(Landroid/content/Intent;)V

    .line 111
    return v4

    .line 112
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "op_user_agreements"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "op_legal_notices_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/LegalSettings;->startActivity(Landroid/content/Intent;)V

    .line 116
    return v4

    .line 117
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "op_privacy_policy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "op_legal_notices_type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/LegalSettings;->startActivity(Landroid/content/Intent;)V

    .line 121
    return v4

    .line 122
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "op_permission_agreement"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "op_legal_notices_type"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/LegalSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    .line 127
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method
