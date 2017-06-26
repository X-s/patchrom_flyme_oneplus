.class public Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field private static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field private static final KEY_NUM_WRONG_CONFIRM_ATTEMPTS:Ljava/lang/String; = "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

.field private static final KEY_TIME_WRONG_CONFIRM_ATTEMPTS:Ljava/lang/String; = "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

.field private static final LOCKOUT_TIME_OUT:I = 0xea60

.field private static mPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

.field private mBlockImm:Z

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDeleteButton:Landroid/widget/TextView;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

.field private mEffectiveUserId:I

.field private mErrorTextView:Landroid/widget/TextView;

.field private mForPasswordToggleToPowerOn:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlpha:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNumWrongConfirmAttempts:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field public mPasswordInputCountCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

.field private mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    .line 118
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordInputCountCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    .line 626
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$8;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;ZLandroid/content/Intent;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(ZLandroid/content/Intent;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$1400()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/String;ZLandroid/content/Intent;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/content/Intent;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 87
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(Ljava/lang/String;ZLandroid/content/Intent;II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    return v0
.end method

.method private getActiveViews()[Landroid/view/View;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_1
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
    .line 253
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0764

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c0763

    goto :goto_0
.end method

.method private getDefaultHeader()I
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0268

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c026a

    goto :goto_0
.end method

.method private getErrorMessage()I
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0766

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c0765

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 562
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 564
    .local v6, "elapsedRealtime":J
    const v0, 0x7f0c0263

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(IJ)V

    .line 565
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 566
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$7;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 598
    return-void
.end method

.method private handleNext()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 401
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v4, :cond_0

    .line 402
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v4, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 405
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v4}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "pin":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->reset(Z)V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 408
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 425
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "has_challenge"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 413
    .local v3, "verifyChallenge":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 414
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 415
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 416
    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 420
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 424
    :cond_3
    iget v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-direct {p0, v6, v1, v6, v4}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(ZLandroid/content/Intent;II)V

    goto :goto_0
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/ConfirmLockPassword$InternalActivity;

    return v0
.end method

.method private onPasswordChecked(Ljava/lang/String;ZLandroid/content/Intent;II)V
    .locals 8
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "matched"    # Z
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "timeoutMs"    # I
    .param p5, "effectiveUserId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 533
    if-eqz p2, :cond_4

    .line 534
    invoke-direct {p0, p3}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 535
    iget-boolean v5, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mForPasswordToggleToPowerOn:Z

    if-eqz v5, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "require_password_to_decrypt"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 537
    .local v2, "requiredPasswordToDecrypt":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "require_password_to_decrypt"

    if-eqz v2, :cond_2

    move v5, v4

    :goto_1
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v2, :cond_3

    :goto_2
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 539
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v3, p1, p1, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 542
    iput-boolean v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mForPasswordToggleToPowerOn:Z

    .line 560
    .end local v2    # "requiredPasswordToDecrypt":Z
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v2, v4

    .line 536
    goto :goto_0

    .restart local v2    # "requiredPasswordToDecrypt":Z
    :cond_2
    move v5, v3

    .line 537
    goto :goto_1

    :cond_3
    move v3, v4

    .line 538
    goto :goto_2

    .line 545
    .end local v2    # "requiredPasswordToDecrypt":Z
    :cond_4
    iget v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    if-nez v3, :cond_5

    .line 546
    sget-object v3, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 552
    :cond_5
    iget v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_6

    .line 553
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const v4, 0xea60

    invoke-virtual {v3, p5, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 555
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    goto :goto_3

    .line 557
    .end local v0    # "deadline":J
    :cond_6
    const v3, 0x7f0c026d

    invoke-direct {p0, v3}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    goto :goto_3
.end method

.method private onPasswordChecked(ZLandroid/content/Intent;II)V
    .locals 6
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 503
    if-eqz p1, :cond_0

    .line 504
    invoke-direct {p0, p2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 521
    :goto_0
    return-void

    .line 506
    :cond_0
    iget v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    if-nez v2, :cond_1

    .line 507
    sget-object v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 513
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 514
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const v3, 0xea60

    invoke-virtual {v2, p4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 516
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 518
    .end local v0    # "deadline":J
    :cond_2
    const v2, 0x7f0c026d

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    goto :goto_0
.end method

.method private resetState()V
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_0

    .line 373
    :cond_0
    return-void
.end method

.method private shouldAutoShowSoftKeyboard()Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method private showError(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 623
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(IJ)V

    .line 624
    return-void
.end method

.method private showError(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 644
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    .line 645
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;J)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "timeout"    # J

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 638
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 641
    :cond_0
    return-void
.end method

.method private startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 461
    iget v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 462
    .local v0, "localEffectiveUserId":I
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {v1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 480
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    const v1, 0x7f0d0077

    if-ne v0, v1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    .line 498
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 8
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 434
    .local v2, "challenge":J
    iget v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 435
    .local v4, "localEffectiveUserId":I
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v5, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;

    invoke-direct {v5, p0, p2, p1, v4}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 458
    return-void
.end method


# virtual methods
.method protected authenticationSucceeded()V
    .locals 1

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 358
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 313
    const/16 v0, 0x1e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 601
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 620
    :goto_0
    return-void

    .line 603
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 607
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 608
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 612
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->deleteLastChar()V

    goto :goto_0

    .line 601
    :sswitch_data_0
    .sparse-switch
        0x7f12003e -> :sswitch_1
        0x7f12003f -> :sswitch_0
        0x7f12011f -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-super {p0, p1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    .line 144
    if-eqz p1, :cond_0

    .line 145
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    .line 148
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v10

    .line 155
    .local v10, "storedQuality":I
    const v0, 0x7f04008f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 169
    .local v11, "view":Landroid/view/View;
    const v0, 0x7f12003e

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    const v0, 0x7f12003f

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    const v0, 0x7f12010f

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordInputCountCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setCallBack(Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;)V

    .line 175
    const v0, 0x7f12011f

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    new-instance v1, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setTextEmptyListener(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;)V

    .line 209
    const v0, 0x7f12003c

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 211
    const/high16 v0, 0x40000

    if-eq v0, v10, :cond_0

    const/high16 v0, 0x50000

    if-eq v0, v10, :cond_0

    const/high16 v0, 0x60000

    if-ne v0, v10, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    .line 215
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 219
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_3

    .line 220
    const-string v0, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 222
    .local v8, "headerMessage":Ljava/lang/CharSequence;
    const-string v0, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 224
    .local v7, "detailsMessage":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 227
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultDetails()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 230
    :cond_2
    const-string v0, "for_password_toggle_to_poweron"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mForPasswordToggleToPowerOn:Z

    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .end local v7    # "detailsMessage":Ljava/lang/CharSequence;
    .end local v8    # "headerMessage":Ljava/lang/CharSequence;
    :cond_3
    new-instance v0, Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v12, 0x10c000e

    invoke-static {v6, v12}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    .line 239
    new-instance v0, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x6e

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v12, 0x10c000f

    invoke-static {v6, v12}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 244
    return-object v11

    .line 211
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onDestroy()V

    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 347
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 650
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 654
    const/4 v0, 0x1

    .line 656
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    .line 363
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 301
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 302
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 309
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 318
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 319
    sget-object v6, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

    invoke-interface {v6, v7, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 320
    .local v4, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 322
    .local v0, "currentTime":J
    sub-long v6, v0, v4

    const-wide/32 v8, 0xea60

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 323
    sget-object v6, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    .line 331
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 332
    .local v2, "deadline":J
    cmp-long v6, v2, v12

    if-eqz v6, :cond_1

    .line 333
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    .line 337
    :goto_1
    return-void

    .line 326
    .end local v2    # "deadline":J
    :cond_0
    iput v10, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    .line 327
    sget-object v6, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 335
    .restart local v2    # "deadline":J
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 351
    invoke-super {p0, p1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 352
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 380
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_0

    .line 397
    :cond_0
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    .line 271
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .prologue
    .line 289
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$3;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method
