.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFinish.java"


# instance fields
.field private mLaunchingEnroll:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private setFingerprintEnrolling(Z)V
    .locals 5
    .param p1, "enrolling"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    iget-boolean v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->mLaunchingEnroll:Z

    if-eqz v3, :cond_0

    .line 118
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 122
    const-string/jumbo v4, "oem_acc_fingerprint_enrolling"

    .line 121
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 123
    .local v0, "isEnrolling":Z
    :goto_0
    if-eq p1, v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 125
    const-string/jumbo v4, "oem_acc_fingerprint_enrolling"

    if-eqz p1, :cond_3

    .line 124
    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    :cond_1
    return-void

    .end local v0    # "isEnrolling":Z
    :cond_2
    move v0, v2

    .line 121
    goto :goto_0

    .restart local v0    # "isEnrolling":Z
    :cond_3
    move v1, v2

    .line 125
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0xf2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f110163

    if-ne v1, v2, :cond_0

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->mLaunchingEnroll:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->startActivity(Landroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->finish()V

    .line 99
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setTheme()V

    .line 66
    const v4, 0x7f040237

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setContentView(I)V

    .line 67
    const v4, 0x7f0e0625

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setHeaderText(I)V

    .line 68
    const v4, 0x7f110163

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 70
    .local v0, "addButton":Landroid/widget/Button;
    const-string/jumbo v4, "fingerprint"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 71
    .local v2, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->mUserId:I

    invoke-virtual {v2, v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 72
    .local v1, "enrolled":I
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 73
    const v5, 0x10e00a1

    .line 72
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 74
    .local v3, "max":I
    if-lt v1, v3, :cond_0

    .line 76
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onNextButtonClick()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setResult(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->finish()V

    .line 83
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setFingerprintEnrolling(Z)V

    .line 113
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onPause()V

    .line 111
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->mLaunchingEnroll:Z

    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setFingerprintEnrolling(Z)V

    .line 107
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onResume()V

    .line 104
    return-void
.end method

.method public setTheme()V
    .locals 4

    .prologue
    .line 43
    const v2, 0x7f100407

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setTheme(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 45
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    const v2, 0x7f0e01ea

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    const/16 v1, 0x2500

    .line 59
    .local v1, "systemUiVisibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 42
    return-void

    .line 57
    .end local v1    # "systemUiVisibility":I
    :cond_1
    const/16 v1, 0x500

    .restart local v1    # "systemUiVisibility":I
    goto :goto_0
.end method
