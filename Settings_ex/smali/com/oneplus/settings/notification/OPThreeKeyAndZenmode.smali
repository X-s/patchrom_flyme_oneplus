.class public Lcom/oneplus/settings/notification/OPThreeKeyAndZenmode;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPThreeKeyAndZenmode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPThreeKeyAndZenmode;->addPreferencesFromResource(I)V

    .line 21
    return-void
.end method
