.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f1200ba

    if-ne v1, v2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->finish()V

    .line 71
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v4, 0x7f040062

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setContentView(I)V

    .line 42
    const v4, 0x7f0c0400

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setHeaderText(I)V

    .line 43
    const v4, 0x7f1200ba

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 45
    .local v0, "addButton":Landroid/widget/Button;
    const-string v4, "fingerprint"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 46
    .local v2, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 47
    .local v1, "enrolled":I
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 49
    .local v3, "max":I
    if-lt v1, v3, :cond_0

    .line 51
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onNextButtonClick()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setResult(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->finish()V

    .line 61
    return-void
.end method
