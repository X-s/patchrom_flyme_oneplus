.class public Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OxygenEncryptionInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OxygenEncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionInterstitialFragment"
.end annotation


# static fields
.field private static final ACCESSIBILITY_WARNING_DIALOG:I = 0x1

.field private static final KEY_ENCRYPT_DONT_REQUIRE_PASSWORD:Ljava/lang/String; = "encrypt_dont_require_password"

.field private static final KEY_ENCRYPT_REQUIRE_PASSWORD:Ljava/lang/String; = "encrypt_require_password"


# instance fields
.field private mDontRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

.field private mPasswordRequired:Z

.field private mRequestedPasswordQuality:I

.field private mRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

.field private mUnlockMethodIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setRequirePasswordState(Z)V
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    .line 262
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x30

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 189
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 190
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->finish()V

    .line 188
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 268
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 269
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v6, 0x7f080073

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->addPreferencesFromResource(I)V

    .line 106
    const-string/jumbo v6, "encrypt_dont_require_password"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 107
    const v7, 0x7f110014

    .line 106
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 109
    const-string/jumbo v6, "encrypt_require_password"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

    .line 110
    const-string/jumbo v6, "encrypt_dont_require_password"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 112
    const-string/jumbo v7, "for_fingerprint"

    .line 111
    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 113
    .local v2, "forFingerprint":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 114
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "extra_password_quality"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    .line 115
    const-string/jumbo v6, "extra_unlock_method_intent"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    iput-object v6, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    .line 119
    iget v6, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    sparse-switch v6, :sswitch_data_0

    .line 136
    if-eqz v2, :cond_2

    .line 137
    const v5, 0x7f0e0efe

    .line 139
    .local v5, "msgId":I
    :goto_0
    const v1, 0x7f0e0f01

    .line 140
    .local v1, "enableId":I
    const v0, 0x7f0e0f04

    .line 143
    .local v0, "disableId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 144
    const v7, 0x7f04007a

    const/4 v8, 0x0

    .line 143
    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 145
    .local v4, "message":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 146
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setHeaderView(Landroid/view/View;)V

    .line 148
    iget-object v6, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 150
    iget-object v6, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 153
    const-string/jumbo v7, "extra_require_password"

    const/4 v8, 0x1

    .line 152
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 100
    return-void

    .line 121
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v4    # "message":Landroid/widget/TextView;
    .end local v5    # "msgId":I
    :sswitch_0
    if-eqz v2, :cond_0

    .line 122
    const v5, 0x7f0e0efd

    .line 124
    .restart local v5    # "msgId":I
    :goto_2
    const v1, 0x7f0e0f00

    .line 125
    .restart local v1    # "enableId":I
    const v0, 0x7f0e0f03

    .line 126
    .restart local v0    # "disableId":I
    goto :goto_1

    .line 123
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v5    # "msgId":I
    :cond_0
    const v5, 0x7f0e0efa

    .restart local v5    # "msgId":I
    goto :goto_2

    .line 129
    .end local v5    # "msgId":I
    :sswitch_1
    if-eqz v2, :cond_1

    .line 130
    const v5, 0x7f0e0efc

    .line 132
    .restart local v5    # "msgId":I
    :goto_3
    const v1, 0x7f0e0eff

    .line 133
    .restart local v1    # "enableId":I
    const v0, 0x7f0e0f02

    .line 134
    .restart local v0    # "disableId":I
    goto :goto_1

    .line 131
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v5    # "msgId":I
    :cond_1
    const v5, 0x7f0e0ef9

    .restart local v5    # "msgId":I
    goto :goto_3

    .line 138
    .end local v5    # "msgId":I
    :cond_2
    const v5, 0x7f0e0efb

    .restart local v5    # "msgId":I
    goto :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 217
    packed-switch p1, :pswitch_data_0

    .line 258
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 221
    :pswitch_0
    iget v4, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    sparse-switch v4, :sswitch_data_0

    .line 232
    const v3, 0x7f0e0f07

    .line 233
    .local v3, "titleId":I
    const v2, 0x7f0e0f0a

    .line 239
    .local v2, "messageId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 241
    const/4 v5, -0x1

    .line 239
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 243
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    const-string/jumbo v0, ""

    .line 250
    .local v0, "exampleAccessibility":Ljava/lang/CharSequence;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 252
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {p0, v2, v5}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 254
    const v5, 0x104000a

    .line 250
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 255
    const/high16 v5, 0x1040000

    .line 250
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 223
    .end local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v2    # "messageId":I
    .end local v3    # "titleId":I
    :sswitch_0
    const v3, 0x7f0e0f06

    .line 224
    .restart local v3    # "titleId":I
    const v2, 0x7f0e0f09

    .line 225
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 228
    .end local v2    # "messageId":I
    .end local v3    # "titleId":I
    :sswitch_1
    const v3, 0x7f0e0f05

    .line 229
    .restart local v3    # "titleId":I
    const v2, 0x7f0e0f08

    .line 230
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 247
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 248
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 247
    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    goto :goto_1

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 221
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    move-object v0, p2

    .line 173
    check-cast v0, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    .line 174
    .local v0, "layout":Lcom/android/setupwizardlib/GlifPreferenceLayout;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    return-object v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 198
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "encrypt_require_password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 201
    .local v0, "accEn":Z
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    if-eqz v2, :cond_1

    .line 205
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    .line 212
    .end local v0    # "accEn":Z
    :goto_0
    return v3

    .line 202
    .restart local v0    # "accEn":Z
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 203
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->showDialog(I)V

    goto :goto_0

    .line 209
    .end local v0    # "accEn":Z
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v0, p1

    .line 159
    check-cast v0, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    .line 160
    .local v0, "layout":Lcom/android/setupwizardlib/GlifPreferenceLayout;
    new-instance v1, Lcom/android/settings_ex/utils/SettingsDividerItemDecoration;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/utils/SettingsDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020115

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method

.method protected startLockIntent()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    const-string/jumbo v1, "extra_require_password"

    iget-boolean v2, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/OxygenEncryptionInterstitial;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "no unlock intent to start"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->finish()V

    goto :goto_0
.end method
