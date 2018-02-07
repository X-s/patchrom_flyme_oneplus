.class public abstract Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.super Lcom/android/settings_ex/InstrumentedActivity;
.source "FingerprintEnrollBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final RESULT_FINISHED:I = 0x1

.field static final RESULT_SKIP:I = 0x2

.field static final RESULT_TIMEOUT:I = 0x3


# instance fields
.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings_ex"

    const-class v2, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 148
    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 149
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    :cond_0
    return-object v0
.end method

.method protected getLayout()Lcom/android/setupwizardlib/GlifLayout;
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f110157

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/GlifLayout;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f1100da

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected initViews()V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    .line 104
    .local v0, "nextButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onNextButtonClick()V

    .line 135
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 63
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const/16 v1, 0x2500

    .line 77
    .local v1, "systemUiVisibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 81
    const-string/jumbo v3, "hw_auth_token"

    .line 80
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->mToken:[B

    .line 82
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->mToken:[B

    if-nez v2, :cond_1

    .line 84
    const-string/jumbo v2, "hw_auth_token"

    .line 83
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->mToken:[B

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->mUserId:I

    .line 54
    return-void

    .line 75
    .end local v1    # "systemUiVisibility":I
    :cond_2
    const/16 v1, 0x500

    .restart local v1    # "systemUiVisibility":I
    goto :goto_0
.end method

.method protected onNextButtonClick()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->initViews()V

    .line 96
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 90
    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->setHeaderText(IZ)V

    .line 126
    return-void
.end method

.method protected setHeaderText(IZ)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 115
    .local v0, "layoutTitle":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 116
    .local v1, "previousTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 117
    .local v2, "title":Ljava/lang/CharSequence;
    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_2

    .line 118
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    :cond_2
    return-void
.end method
