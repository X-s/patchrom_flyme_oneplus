.class public Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
.super Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;
.source "SetupChooseLockGeneric.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SetupChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockGenericFragment"
.end annotation


# static fields
.field public static final EXTRA_PASSWORD_QUALITY:Ljava/lang/String; = ":settings:password_quality"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addHeaderView()V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 161
    const v0, 0x7f040197

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setHeaderView(I)V

    .line 159
    :goto_0
    return-void

    .line 163
    :cond_0
    const v0, 0x7f040198

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setHeaderView(I)V

    goto :goto_0
.end method

.method protected addPreferences()V
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-super {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    .line 217
    :goto_0
    return-void

    .line 221
    :cond_0
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 2
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .prologue
    .line 212
    const/high16 v1, 0x10000

    .line 211
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 213
    .local v0, "newQuality":I
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 205
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z
    .param p4, "unlockMethodIntent"    # Landroid/content/Intent;

    .prologue
    .line 311
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ex/SetupEncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 314
    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJI)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "challenge"    # J
    .param p8, "userId"    # I

    .prologue
    .line 257
    invoke-static/range {p1 .. p7}, Lcom/android/settings_ex/SetupChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v0

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 264
    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    .line 270
    invoke-static/range {p1 .. p6}, Lcom/android/settings_ex/SetupChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 276
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 277
    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "confirmCredentials"    # Z
    .param p7, "userId"    # I

    .prologue
    .line 243
    invoke-static/range {p1 .. p6}, Lcom/android/settings_ex/SetupChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v0

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 250
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .prologue
    .line 293
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ex/SetupChooseLockPattern;->createIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v0

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 296
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 302
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/SetupChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 305
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "confirmCredentials"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 284
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/SetupChooseLockPattern;->createIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 286
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 287
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 169
    if-eqz p2, :cond_1

    .line 170
    if-nez p3, :cond_0

    .line 171
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "data":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 175
    .restart local p3    # "data":Landroid/content/Intent;
    :cond_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 176
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v3, ":settings:password_quality"

    .line 177
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    .line 176
    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 180
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.settings_ex"

    .line 181
    const-string/jumbo v4, "com.android.settings_ex.SetupRedactionInterstitial"

    .line 180
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 185
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 168
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    move-object v0, p2

    .line 194
    check-cast v0, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;

    .line 195
    .local v0, "layout":Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    return-object v1
.end method

.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 320
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 318
    :cond_0
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "unlock_set_do_later"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 231
    const-string/jumbo v3, ":settings:frp_supported"

    const/4 v4, 0x0

    .line 230
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/SetupSkipDialog;->newInstance(Z)Lcom/android/settings_ex/fingerprint/SetupSkipDialog;

    move-result-object v0

    .line 232
    .local v0, "dialog":Lcom/android/settings_ex/fingerprint/SetupSkipDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/fingerprint/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    .line 233
    const/4 v2, 0x1

    return v2

    .line 235
    .end local v0    # "dialog":Lcom/android/settings_ex/fingerprint/SetupSkipDialog;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 128
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v1, p1

    .line 131
    check-cast v1, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;

    .line 132
    .local v1, "layout":Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 133
    const v5, 0x7f0f0059

    .line 132
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setDividerInset(I)V

    .line 134
    invoke-virtual {v1}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v2

    .line 135
    .local v2, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v2}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v3

    .line 136
    .local v3, "nextButton":Landroid/widget/Button;
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    invoke-virtual {v2, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 139
    const v4, 0x7f0201bf

    .line 140
    const v5, 0x7f0202f5

    .line 139
    invoke-virtual {v1, v4, v5}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setIllustration(II)V

    .line 142
    const v4, 0x7f0201f2

    invoke-virtual {v1, v4}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setBackgroundTile(I)V

    .line 144
    iget-boolean v4, p0, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v4, :cond_0

    .line 145
    const v4, 0x7f0e0659

    invoke-virtual {v1, v4}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setHeaderText(I)V

    .line 150
    :goto_0
    invoke-virtual {v1}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 151
    .local v0, "headText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b038a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-void

    .line 147
    .end local v0    # "headText":Landroid/widget/TextView;
    :cond_0
    const v4, 0x7f0e0657

    invoke-virtual {v1, v4}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setHeaderText(I)V

    goto :goto_0
.end method
