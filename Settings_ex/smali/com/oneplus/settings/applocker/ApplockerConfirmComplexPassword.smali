.class public Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;
.super Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;
.source "ApplockerConfirmComplexPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mEffectiveUserId:I

.field private mErrorTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field private mUsingFingerprint:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mDisappearing:Z

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHandler:Landroid/os/Handler;

    .line 53
    iput-boolean v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mUsingFingerprint:Z

    .line 228
    new-instance v0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$3;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mResetErrorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;Ljava/lang/CharSequence;J)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # J

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->showError(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->resetState()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getDefaultHeader()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getActiveViews()[Landroid/view/View;
    .locals 2

    .prologue
    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPackageIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mDetailsTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    return-object v1
.end method

.method private getDefaultDetails()I
    .locals 1

    .prologue
    .line 217
    const v0, 0x7f0c0735

    return v0
.end method

.method private getDefaultHeader()I
    .locals 1

    .prologue
    .line 213
    const v0, 0x7f0c072a

    return v0
.end method

.method private getErrorMessage()I
    .locals 1

    .prologue
    .line 221
    const v0, 0x7f0c0737

    return v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 351
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 352
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mFingerprintIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->stopListening()V

    .line 355
    new-instance v0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;JJ)V

    invoke-virtual {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 378
    return-void
.end method

.method private handleNext()V
    .locals 4

    .prologue
    .line 407
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mDisappearing:Z

    if-eqz v2, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 413
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "pin":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private init(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 66
    const-string v0, "ApplockerActivity"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 68
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mEffectiveUserId:I

    .line 70
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPreferences:Landroid/content/SharedPreferences;

    .line 71
    if-eqz p1, :cond_0

    .line 72
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v11

    .line 78
    .local v11, "storedQuality":I
    const v0, 0x7f120029

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 80
    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 82
    const v0, 0x7f120025

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPackageIcon:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPackageIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->setBackgroundColor()V

    .line 87
    :cond_1
    const v0, 0x7f120027

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHeaderTextView:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f120060

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mDetailsTextView:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f120028

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mErrorTextView:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f120026

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 91
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mFingerprintIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mErrorTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->setHeaderTextView(Landroid/widget/TextView;)V

    .line 96
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 99
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 100
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v10, :cond_4

    .line 101
    const-string v0, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 103
    .local v9, "headerMessage":Ljava/lang/CharSequence;
    const-string v0, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 105
    .local v8, "detailsMessage":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getDefaultHeader()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 108
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getDefaultDetails()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mDetailsTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .end local v8    # "detailsMessage":Ljava/lang/CharSequence;
    .end local v9    # "headerMessage":Ljava/lang/CharSequence;
    :cond_4
    new-instance v0, Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x40000000    # 2.0f

    const v1, 0x10c000e

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    .line 122
    new-instance v1, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    const-wide/16 v3, 0x6e

    const/high16 v6, 0x3f000000    # 0.5f

    const v0, 0x10c000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    if-nez v0, :cond_5

    .line 128
    new-instance v0, Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-direct {v0}, Lcom/android/settings_ex/CredentialCheckResultTracker;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 130
    :cond_5
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

    .line 312
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

    iget v5, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v1, v9}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 314
    if-eqz p1, :cond_0

    .line 315
    iput v8, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    .line 316
    sget-object v1, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v5, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    invoke-direct {p0, p2}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 342
    :goto_0
    return-void

    .line 320
    :cond_0
    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    if-nez v1, :cond_1

    .line 321
    sget-object v1, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 327
    :cond_1
    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    const/4 v4, 0x5

    if-lt v1, v4, :cond_2

    .line 328
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x7530

    invoke-virtual {v1, p4, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    .line 330
    .local v2, "deadline":J
    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->handleAttemptLockout(J)V

    goto :goto_0

    .line 332
    .end local v2    # "deadline":J
    :cond_2
    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    const/4 v4, 0x2

    if-le v1, v4, :cond_3

    .line 333
    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    rsub-int/lit8 v0, v1, 0x5

    .line 334
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f130001

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0xbb8

    invoke-direct {p0, v1, v4, v5}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->showError(Ljava/lang/CharSequence;J)V

    goto :goto_0

    .line 338
    .end local v0    # "count":I
    :cond_3
    const v1, 0x7f0c01d5

    invoke-direct {p0, v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->showError(I)V

    goto :goto_0
.end method

.method private resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$2;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 204
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mErrorTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getDefaultHeader()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method private shouldAutoShowSoftKeyboard()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private showError(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 225
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->showError(IJ)V

    .line 226
    return-void
.end method

.method private showError(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->showError(Ljava/lang/CharSequence;J)V

    .line 245
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;J)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "timeout"    # J

    .prologue
    .line 235
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    :cond_0
    return-void
.end method

.method private startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 252
    iget v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mEffectiveUserId:I

    .line 253
    .local v0, "localEffectiveUserId":I
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {v1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 271
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 274
    iget-boolean v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 279
    iput-boolean v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mDisappearing:Z

    .line 280
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 392
    :goto_0
    return-void

    .line 384
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->handleNext()V

    goto :goto_0

    .line 388
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->setResult(I)V

    .line 389
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->finish()V

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x7f120057
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->setContentView(I)V

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->init(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;II)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 347
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->onPasswordChecked(ZLandroid/content/Intent;II)V

    .line 348
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 425
    invoke-super {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->onDestroy()V

    .line 426
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 430
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 397
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->handleNext()V

    .line 401
    const/4 v0, 0x1

    .line 403
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->onPause()V

    .line 249
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 134
    invoke-super {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->onResume()V

    .line 136
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 137
    .local v1, "passwordQuality":I
    const/high16 v4, 0x50000

    if-eq v1, v4, :cond_0

    const/high16 v4, 0x40000

    if-eq v1, v4, :cond_0

    const/high16 v4, 0x60000

    if-eq v1, v4, :cond_0

    .line 140
    invoke-virtual {p0, v9}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->setResult(I)V

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->finish()V

    .line 144
    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 146
    .local v2, "deadline":J
    cmp-long v4, v2, v10

    if-eqz v4, :cond_3

    .line 147
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->clearResult()V

    .line 148
    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->handleAttemptLockout(J)V

    .line 153
    :goto_0
    sget-object v4, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    .line 157
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

    iget v6, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    cmp-long v4, v2, v10

    if-nez v4, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->registerFingerprintDelayed()V

    .line 160
    iget v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 161
    iput v9, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    .line 162
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->clearResult()V

    .line 165
    :cond_1
    iget v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    const/4 v5, 0x2

    if-gt v4, v5, :cond_4

    .line 166
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getDefaultHeader()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 175
    return-void

    .line 150
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->resetState()V

    goto :goto_0

    .line 168
    :cond_4
    iget v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    rsub-int/lit8 v0, v4, 0x5

    .line 169
    .local v0, "count":I
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getResources()Landroid/content/res/Resources;

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

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->onWindowFocusChanged(Z)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$1;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method
