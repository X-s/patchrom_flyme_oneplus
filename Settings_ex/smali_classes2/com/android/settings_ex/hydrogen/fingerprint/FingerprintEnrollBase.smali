.class public abstract Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;
.super Lcom/android/settings_ex/InstrumentedActivity;
.source "FingerprintEnrollBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final RESULT_FINISHED:I = 0x1

.field static final RESULT_SKIP:I = 0x2

.field static final RESULT_TIMEOUT:I = 0x3


# instance fields
.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings_ex"

    const-class v2, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 206
    iget v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 207
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    :cond_0
    return-object v0
.end method

.method protected getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;
    .locals 1

    .prologue
    .line 144
    const v0, 0x7f110304

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/view/NavigationBar;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 189
    const v0, 0x7f1100da

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f110157

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v0
.end method

.method protected initViews()V
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 125
    const/16 v3, 0x2500

    .line 124
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    .line 134
    .local v0, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    if-eqz v0, :cond_0

    .line 135
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/setupwizardlib/view/NavigationBar;->setVisibility(I)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    .line 138
    .local v1, "nextButton":Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_1
    return-void

    .line 127
    .end local v0    # "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    .end local v1    # "nextButton":Landroid/widget/Button;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 128
    const/16 v3, 0x500

    .line 127
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onNextButtonClick()V

    .line 193
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v2, 0x7f0b038a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->setHeaderTextColor(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 67
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    const/16 v1, 0x2500

    .line 81
    .local v1, "systemUiVisibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 85
    const-string/jumbo v3, "hw_auth_token"

    .line 84
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->mToken:[B

    .line 86
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->mToken:[B

    if-nez v2, :cond_1

    .line 88
    const-string/jumbo v2, "hw_auth_token"

    .line 87
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->mToken:[B

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->mUserId:I

    .line 58
    return-void

    .line 79
    .end local v1    # "systemUiVisibility":I
    :cond_2
    const/16 v1, 0x500

    .restart local v1    # "systemUiVisibility":I
    goto :goto_0
.end method

.method protected onNextButtonClick()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->finish()V

    .line 99
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->initViews()V

    .line 112
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 106
    return-void
.end method

.method protected setBackgroudColor(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x106000d

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected setHeaderText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->setHeaderText(IZ)V

    .line 165
    return-void
.end method

.method protected setHeaderText(IZ)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .prologue
    .line 151
    return-void
.end method

.method protected setHeaderTextColor(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 172
    .local v1, "headText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "headText":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
