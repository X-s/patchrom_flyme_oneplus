.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollIntroduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;


# static fields
.field protected static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x1

.field protected static final FINGERPRINT_FIND_SENSOR_REQUEST:I = 0x2

.field protected static final LEARN_MORE_REQUEST:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FingerprintIntro"


# instance fields
.field private mFingerprintUnlockDisabledByAdmin:Z

.field private mHasPassword:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private launchChooseLock()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 125
    .local v2, "intent":Landroid/content/Intent;
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    .line 126
    .local v0, "challenge":J
    const-string/jumbo v3, "minimum_quality"

    .line 127
    const/high16 v4, 0x10000

    .line 126
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string/jumbo v3, "hide_disabled_prefs"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    const-string/jumbo v3, "has_challenge"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const-string/jumbo v3, "challenge"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 131
    const-string/jumbo v3, "for_fingerprint"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    iget v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    .line 133
    const-string/jumbo v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    :cond_0
    invoke-virtual {p0, v2, v5}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    return-void
.end method

.method private launchFindSensor([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->getFindSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 141
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 143
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 144
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    return-void
.end method

.method private updatePasswordQuality()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 102
    new-instance v2, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v3

    .line 102
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 104
    .local v0, "passwordQuality":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    .line 101
    return-void
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 192
    const/16 v0, 0xf3

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f110166

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected initViews()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->initViews()V

    .line 203
    const v1, 0x7f110164

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 204
    .local v0, "description":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    if-eqz v1, :cond_0

    .line 205
    const v1, 0x7f0e0611

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 200
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x2

    .line 159
    if-ne p2, v3, :cond_2

    const/4 v0, 0x1

    .line 160
    .local v0, "isResultFinished":Z
    :goto_0
    if-ne p1, v1, :cond_3

    .line 161
    if-nez v0, :cond_0

    if-ne p2, v1, :cond_5

    .line 162
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 163
    .local v1, "result":I
    :cond_1
    invoke-virtual {p0, v1, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 165
    return-void

    .line 159
    .end local v0    # "isResultFinished":Z
    .end local v1    # "result":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isResultFinished":Z
    goto :goto_0

    .line 167
    :cond_3
    if-ne p1, v3, :cond_4

    .line 168
    if-eqz v0, :cond_5

    .line 169
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->updatePasswordQuality()V

    .line 171
    const-string/jumbo v3, "hw_auth_token"

    .line 170
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 172
    .local v2, "token":[B
    invoke-direct {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->launchFindSensor([B)V

    .line 173
    return-void

    .line 175
    .end local v2    # "token":[B
    :cond_4
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    .line 176
    const v3, 0x7f050030

    const v4, 0x7f050031

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->overridePendingTransition(II)V

    .line 178
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 158
    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 0

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 195
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f110165

    if-ne v0, v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->onCancelButtonClick()V

    .line 182
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Lcom/android/setupwizardlib/span/LinkSpan;)V
    .locals 6
    .param p1, "span"    # Lcom/android/setupwizardlib/span/LinkSpan;

    .prologue
    .line 212
    const-string/jumbo v3, "url"

    invoke-virtual {p1}, Lcom/android/setupwizardlib/span/LinkSpan;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    const v3, 0x7f0e0db5

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/settings_exlib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 215
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 216
    const-string/jumbo v3, "FingerprintIntro"

    const-string/jumbo v4, "Null help intent."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 222
    :cond_0
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 223
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "FingerprintIntro"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity was not found for intent, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->setTheme()V

    .line 84
    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v2, 0x20

    .line 83
    invoke-static {p0, v2, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    .line 86
    const v1, 0x7f040084

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->setContentView(I)V

    .line 87
    iget-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    if-eqz v1, :cond_1

    .line 88
    const v1, 0x7f0e060f

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    .line 94
    :goto_1
    const v1, 0x7f110165

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 95
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    .line 98
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->updatePasswordQuality()V

    .line 80
    return-void

    .line 83
    .end local v0    # "cancelButton":Landroid/widget/Button;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    :cond_1
    const v1, 0x7f0e060e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    goto :goto_1
.end method

.method protected onNextButtonClick()V
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->launchChooseLock()V

    .line 113
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->launchFindSensor([B)V

    goto :goto_0
.end method

.method public setTheme()V
    .locals 4

    .prologue
    .line 59
    const v2, 0x7f100407

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->setTheme(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 61
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 63
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    const v2, 0x7f0e060e

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    const/16 v1, 0x2500

    .line 75
    .local v1, "systemUiVisibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 58
    return-void

    .line 73
    .end local v1    # "systemUiVisibility":I
    :cond_1
    const/16 v1, 0x500

    .restart local v1    # "systemUiVisibility":I
    goto :goto_0
.end method
