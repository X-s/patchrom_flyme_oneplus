.class public Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;
.super Landroid/support/v14/preference/EditTextPreferenceDialogFragment;
.source "CustomEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CustomEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getCustomizablePreference()Lcom/android/settings_ex/CustomEditTextPreference;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/CustomEditTextPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v1, Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;-><init>()V

    .line 83
    .local v1, "fragment":Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 84
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    return-object v1
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings_ex/CustomEditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/CustomEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings_ex/CustomEditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ex/CustomEditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 113
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->onDialogClosed(Z)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings_ex/CustomEditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/CustomEditTextPreference;->onDialogClosed(Z)V

    .line 107
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings_ex/CustomEditTextPreference;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settings_ex/CustomEditTextPreference;->-wrap0(Lcom/android/settings_ex/CustomEditTextPreference;Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;)V

    .line 103
    invoke-direct {p0}, Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings_ex/CustomEditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/settings_ex/CustomEditTextPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    return-void
.end method
