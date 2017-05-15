.class public Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;
.super Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;
.source "ApplockerConfirmPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDeleteButton:Landroid/widget/TextView;

.field private mDisappearing:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mKeyPad:Landroid/widget/LinearLayout;

.field private mOkButton:Landroid/view/View;

.field public mPasswordInputCountCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

.field private mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

.field private final mResetErrorRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mDisappearing:Z

    .line 43
    new-instance v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$1;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordInputCountCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHandler:Landroid/os/Handler;

    .line 369
    new-instance v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$9;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$9;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mResetErrorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mDeleteButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->checkPassword()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->handleNext()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getDefaultHeader()I

    move-result v0

    return v0
.end method

.method private checkPassword()V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$4;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)V

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    return-void
.end method

.method private getActiveViews()[Landroid/view/View;
    .locals 2

    .prologue
    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPackageIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mKeyPad:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    return-object v1
.end method

.method private getDefaultHeader()I
    .locals 1

    .prologue
    .line 393
    const v0, 0x7f0c01d4

    return v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 304
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->stopListening()V

    .line 306
    new-instance v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;JJ)V

    invoke-virtual {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 330
    return-void
.end method

.method private handleNext()V
    .locals 4

    .prologue
    .line 188
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mDisappearing:Z

    if-eqz v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "pin":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->reset(Z)V

    .line 195
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private init(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 118
    const v0, 0x7f120025

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPackageIcon:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPackageIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->setBackgroundColor()V

    .line 124
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 125
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mEffectiveUserId:I

    .line 127
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPreferences:Landroid/content/SharedPreferences;

    .line 128
    if-eqz p1, :cond_1

    .line 129
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    .line 133
    :cond_1
    const v0, 0x7f120027

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHeaderTextView:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f120026

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 135
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mFingerprintIcon:Landroid/widget/ImageView;

    const v0, 0x7f120028

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, v2, v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;)V

    iput-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->setHeaderTextView(Landroid/widget/TextView;)V

    .line 140
    const v0, 0x7f12002b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordInputCountCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setCallBack(Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;)V

    .line 142
    const v0, 0x7f12002c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mKeyPad:Landroid/widget/LinearLayout;

    .line 143
    const v0, 0x7f12003a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mDeleteButton:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    new-instance v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$2;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setTextEmptyListener(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;)V

    .line 161
    const v0, 0x7f12003c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mOkButton:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$3;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getDefaultHeader()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 172
    .local v8, "headerMessage":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v0, Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x40000000    # 2.0f

    const v1, 0x10c000e

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    .line 177
    new-instance v1, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    const-wide/16 v3, 0x6e

    const/high16 v6, 0x3f000000    # 0.5f

    const v0, 0x10c000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    if-nez v0, :cond_2

    .line 183
    new-instance v0, Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-direct {v0}, Lcom/android/settings_ex/CredentialCheckResultTracker;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 185
    :cond_2
    return-void
.end method

.method private onPasswordChecked(ZLandroid/content/Intent;II)V
    .locals 10
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 271
    const-string v1, "ApplockerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPasswordChecked: matched = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeoutMs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mNumWrongConfirmAttempts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v1, v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 273
    if-eqz p1, :cond_0

    .line 274
    iput v8, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    .line 275
    sget-object v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v5, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    invoke-direct {p0, p2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 300
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    if-nez v1, :cond_1

    .line 280
    sget-object v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    :cond_1
    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    const/4 v4, 0x5

    if-lt v1, v4, :cond_2

    .line 287
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x7530

    invoke-virtual {v1, p4, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    .line 289
    .local v2, "deadline":J
    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->handleAttemptLockout(J)V

    goto :goto_0

    .line 291
    .end local v2    # "deadline":J
    :cond_2
    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    const/4 v4, 0x2

    if-le v1, v4, :cond_3

    .line 292
    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    rsub-int/lit8 v0, v1, 0x5

    .line 293
    .local v0, "count":I
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f130001

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    .end local v0    # "count":I
    :cond_3
    const v1, 0x7f0c01d5

    invoke-direct {p0, v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->showError(I)V

    goto :goto_0
.end method

.method private showError(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 367
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->showError(IJ)V

    .line 368
    return-void
.end method

.method private showError(IJ)V
    .locals 6
    .param p1, "msg"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "wrongPasswordTips":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0737

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0179

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "finalWrongPasswordTips":Ljava/lang/String;
    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->showError(Ljava/lang/CharSequence;J)V

    .line 381
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;J)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "timeout"    # J

    .prologue
    .line 384
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 387
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    :cond_0
    return-void
.end method

.method private startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 242
    iget v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mEffectiveUserId:I

    .line 243
    .local v0, "localEffectiveUserId":I
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {v1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 261
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 336
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mDisappearing:Z

    .line 337
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 8
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 218
    .local v2, "challenge":J
    iget v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mEffectiveUserId:I

    .line 219
    .local v4, "localEffectiveUserId":I
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v5, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$5;

    invoke-direct {v5, p0, p2, v4}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$5;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;Landroid/content/Intent;I)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 239
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 426
    :goto_0
    return-void

    .line 400
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->handleNext()V

    goto :goto_0

    .line 404
    :sswitch_1
    invoke-virtual {p0, v4}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->setResult(I)V

    .line 405
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->finish()V

    goto :goto_0

    .line 409
    :sswitch_2
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "OP_APP_LOCKER_BLOCKING_APP"

    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getBlockingApp()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 413
    const-string v1, "ApplockerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancel Pressed: hash code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getBlockingApp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getBlockingApp()I

    move-result v1

    if-nez v1, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->launchHome()V

    .line 419
    :cond_1
    invoke-virtual {p0, v4, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->setResult(ILandroid/content/Intent;)V

    .line 420
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->finish()V

    goto :goto_0

    .line 422
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->deleteLastChar()V

    goto :goto_0

    .line 398
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f12003a -> :sswitch_2
        0x7f120057 -> :sswitch_1
        0x7f120058 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->setContentView(I)V

    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->init(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;II)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 266
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->onPasswordChecked(ZLandroid/content/Intent;II)V

    .line 267
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->onDestroy()V

    .line 431
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 435
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->onPause()V

    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->reset(Z)V

    .line 72
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 76
    invoke-super {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->onResume()V

    .line 78
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 79
    .local v1, "passwordQuality":I
    const/high16 v4, 0x20000

    if-eq v1, v4, :cond_0

    const/high16 v4, 0x30000

    if-eq v1, v4, :cond_0

    .line 81
    invoke-virtual {p0, v9}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->setResult(I)V

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->finish()V

    .line 85
    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 86
    .local v2, "deadline":J
    cmp-long v4, v2, v10

    if-eqz v4, :cond_1

    .line 87
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->clearResult()V

    .line 88
    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->handleAttemptLockout(J)V

    .line 91
    :cond_1
    sget-object v4, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    .line 95
    const-string v4, "ApplockerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume: deadline = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mNumWrongConfirmAttempts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    cmp-long v4, v2, v10

    if-nez v4, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->registerFingerprintDelayed()V

    .line 99
    iget v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    .line 100
    iput v9, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    .line 101
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->clearResult()V

    .line 104
    :cond_2
    iget v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    const/4 v5, 0x2

    if-gt v4, v5, :cond_4

    .line 105
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getDefaultHeader()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 113
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 114
    return-void

    .line 107
    :cond_4
    iget v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    rsub-int/lit8 v0, v4, 0x5

    .line 108
    .local v0, "count":I
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f130001

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
