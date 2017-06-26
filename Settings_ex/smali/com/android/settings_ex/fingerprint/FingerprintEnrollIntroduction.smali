.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollIntroduction.java"


# instance fields
.field private mHasPassword:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private launchFingerprintHelp()V
    .locals 3

    .prologue
    .line 91
    const v1, 0x7f0c0bd7

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/settings_ex/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, "helpIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getOnboardIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollOnboard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 71
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 72
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->setResult(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f12003e

    if-ne v0, v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1200bc

    if-ne v0, v1, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->launchFingerprintHelp()V

    .line 87
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f040064

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->setContentView(I)V

    .line 40
    const v1, 0x7f0c03f0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    .line 41
    const v1, 0x7f12003e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v1, 0x7f1200bc

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 45
    .local v0, "passwordQuality":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onNextButtonClick()V
    .locals 2

    .prologue
    .line 51
    iget-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->getOnboardIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    return-void

    .line 56
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->getFindSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method
