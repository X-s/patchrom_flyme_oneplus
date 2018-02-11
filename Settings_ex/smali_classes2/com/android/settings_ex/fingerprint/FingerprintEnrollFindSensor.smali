.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFindSensor.java"


# static fields
.field private static final CONFIRM_REQUEST:I = 0x1

.field private static final ENROLLING:I = 0x2

.field public static final EXTRA_KEY_LAUNCHED_CONFIRM:Ljava/lang/String; = "launched_confirm_lock"


# instance fields
.field private mAnimation:Lcom/android/settings_ex/fingerprint/FingerprintFindSensorAnimation;

.field private mLaunchedConfirmLock:Z

.field private mNextClicked:Z

.field private mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->proceedToEnrolling()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 9

    .prologue
    const v8, 0x7f0e0608

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 205
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    .line 206
    .local v6, "challenge":J
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 207
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/4 v0, 0x0

    .line 208
    .local v0, "launchedConfirmationActivity":Z
    iget v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mUserId:I

    const/16 v5, -0x2710

    if-ne v3, v5, :cond_0

    .line 210
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 209
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    .line 217
    .local v0, "launchedConfirmationActivity":Z
    :goto_0
    if-nez v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    .line 204
    :goto_1
    return-void

    .line 214
    .local v0, "launchedConfirmationActivity":Z
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    iget v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mUserId:I

    move-object v5, v4

    .line 213
    invoke-virtual/range {v1 .. v8}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    .local v0, "launchedConfirmationActivity":Z
    goto :goto_0

    .line 222
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    goto :goto_1
.end method

.method private proceedToEnrolling()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    return-void
.end method

.method private startLookingForFingerprint()V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "sidecar"

    .line 103
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    const-string/jumbo v2, "sidecar"

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f040080

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 228
    const/16 v0, 0xf1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 168
    if-ne p1, v3, :cond_1

    .line 169
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 170
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    .line 171
    const v3, 0x7f050032

    const v4, 0x7f050033

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->overridePendingTransition(II)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "hw_auth_token"

    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 173
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    .line 167
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 177
    :cond_1
    if-ne p1, v4, :cond_6

    .line 178
    if-ne p2, v3, :cond_2

    .line 179
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 181
    :cond_2
    if-ne p2, v4, :cond_3

    .line 182
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 184
    :cond_3
    if-ne p2, v5, :cond_4

    .line 185
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 188
    :cond_4
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 189
    .local v1, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 190
    .local v0, "enrolled":I
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 191
    const v4, 0x10e00a1

    .line 190
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 192
    .local v2, "max":I
    if-lt v0, v2, :cond_5

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 196
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    goto :goto_0

    .line 200
    .end local v0    # "enrolled":I
    .end local v1    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v2    # "max":I
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setTheme()V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setContentView(I)V

    .line 77
    const v0, 0x7f0e061b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setHeaderText(I)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string/jumbo v0, "launched_confirm_lock"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    .line 81
    const-string/jumbo v0, "hw_auth_token"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    if-eqz v0, :cond_3

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-eqz v0, :cond_2

    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    .line 89
    :cond_2
    :goto_0
    const v0, 0x7f110160

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fingerprint/FingerprintFindSensorAnimation;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/fingerprint/FingerprintFindSensorAnimation;

    .line 71
    return-void

    .line 84
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->launchConfirmLock()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onDestroy()V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings_ex/fingerprint/FingerprintFindSensorAnimation;->stopAnimation()V

    .line 140
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->proceedToEnrolling()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    const-string/jumbo v0, "launched_confirm_lock"

    iget-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 146
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings_ex/fingerprint/FingerprintFindSensorAnimation;->startAnimation()V

    .line 97
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings_ex/fingerprint/FingerprintFindSensorAnimation;->pauseAnimation()V

    .line 134
    return-void
.end method

.method public setTheme()V
    .locals 4

    .prologue
    .line 50
    const v2, 0x7f100407

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setTheme(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 52
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 54
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    const v2, 0x7f0e061b

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    const/16 v1, 0x2500

    .line 66
    .local v1, "systemUiVisibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 49
    return-void

    .line 64
    .end local v1    # "systemUiVisibility":I
    :cond_1
    const/16 v1, 0x500

    .restart local v1    # "systemUiVisibility":I
    goto :goto_0
.end method
