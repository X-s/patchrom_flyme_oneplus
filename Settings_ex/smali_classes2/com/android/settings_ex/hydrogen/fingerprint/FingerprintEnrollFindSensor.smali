.class public Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;
.super Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFindSensor.java"


# static fields
.field private static final CONFIRM_REQUEST:I = 0x1

.field private static final ENROLLING:I = 0x2

.field public static final EXTRA_KEY_LAUNCHED_CONFIRM:Ljava/lang/String; = "launched_confirm_lock"

.field private static final FINGERPRINT_ENROLL_HARDWARE_UNAVAILABLE:I = 0x1

.field private static final FINGERPRINT_ENROLL_TIME_OUT:I = 0x3


# instance fields
.field private mAnimation:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintFindSensorAnimation;

.field private mLaunchedConfirmLock:Z

.field private mNextClicked:Z

.field private mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->proceedToEnrolling()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 9

    .prologue
    const v8, 0x7f0e0608

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 208
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    .line 209
    .local v6, "challenge":J
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 210
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/4 v0, 0x0

    .line 211
    .local v0, "launchedConfirmationActivity":Z
    iget v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mUserId:I

    const/16 v5, -0x2710

    if-ne v3, v5, :cond_0

    .line 213
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 212
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    .line 220
    .local v0, "launchedConfirmationActivity":Z
    :goto_0
    if-nez v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->finish()V

    .line 207
    :goto_1
    return-void

    .line 217
    .local v0, "launchedConfirmationActivity":Z
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 218
    iget v8, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mUserId:I

    move-object v5, v4

    .line 216
    invoke-virtual/range {v1 .. v8}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    .local v0, "launchedConfirmationActivity":Z
    goto :goto_0

    .line 225
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    goto :goto_1
.end method

.method private proceedToEnrolling()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 163
    iput-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    return-void
.end method

.method private startLookingForFingerprint()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "sidecar"

    .line 93
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    const-string/jumbo v2, "sidecar"

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    new-instance v1, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f040238

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 231
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

    .line 171
    if-ne p1, v3, :cond_1

    .line 172
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 173
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    .line 174
    const v3, 0x7f050032

    const v4, 0x7f050033

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->overridePendingTransition(II)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "hw_auth_token"

    iget-object v5, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 176
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    .line 170
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 180
    :cond_1
    if-ne p1, v4, :cond_6

    .line 181
    if-ne p2, v3, :cond_2

    .line 182
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 184
    :cond_2
    if-ne p2, v4, :cond_3

    .line 185
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 187
    :cond_3
    if-ne p2, v5, :cond_4

    .line 188
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 191
    :cond_4
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 192
    .local v1, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 193
    .local v0, "enrolled":I
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 194
    const v4, 0x10e00a1

    .line 193
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 195
    .local v2, "max":I
    if-lt v0, v2, :cond_5

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 199
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    goto :goto_0

    .line 203
    .end local v0    # "enrolled":I
    .end local v1    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v2    # "max":I
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->setContentView(I)V

    .line 52
    const v0, 0x7f0e061b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->setHeaderText(I)V

    .line 53
    const v0, 0x7f0b038a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->setHeaderTextColor(I)V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    const-string/jumbo v0, "launched_confirm_lock"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    .line 57
    const-string/jumbo v0, "hw_auth_token"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    .line 61
    :cond_0
    const v0, 0x7f110160

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintFindSensorAnimation;

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintFindSensorAnimation;

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onDestroy()V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintFindSensorAnimation;->stopAnimation()V

    .line 138
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 3

    .prologue
    .line 152
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zhuyang--mNextClicked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->proceedToEnrolling()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onPause()V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    if-eqz v0, :cond_2

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-eqz v0, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->launchConfirmLock()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    const-string/jumbo v0, "launched_confirm_lock"

    iget-boolean v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 144
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintFindSensorAnimation;->startAnimation()V

    .line 69
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintFindSensorAnimation;->pauseAnimation()V

    .line 132
    return-void
.end method
