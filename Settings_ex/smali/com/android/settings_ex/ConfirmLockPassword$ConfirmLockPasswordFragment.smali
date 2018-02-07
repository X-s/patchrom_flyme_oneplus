.class public Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;
.implements Landroid/text/TextWatcher;


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

.field private static final FRAGMENT_TAG_CHECK_LOCK_RESULT:Ljava/lang/String; = "check_lock_result"

.field private static final KEY_NUM_WRONG_CONFIRM_ATTEMPTS:Ljava/lang/String; = "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

.field private static final KEY_TIME_WRONG_CONFIRM_ATTEMPTS:Ljava/lang/String; = "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

.field private static final LOCKOUT_TIME_OUT:I = 0xea60

.field private static final MAX_LOCK_PASSWORD_SIZE:I = 0x10

.field private static final MIN_LOCK_PASSWORD_SIZE:I = 0x4

.field private static mPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

.field private mBlockImm:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlpha:Z

.field private mNextButton:Landroid/widget/Button;

.field private mNumWrongConfirmAttempts:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordMinLength:I

.field private mPattenString:Ljava/lang/String;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mUsingFingerprint:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings_ex/CredentialCheckResultTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 106
    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    .line 130
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordMinLength:I

    .line 133
    return-void
.end method

.method private getActiveViews()[Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1
    new-array v1, v2, [Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    return-object v1
.end method

.method private getDefaultDetails()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v5, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 250
    invoke-static {v2, v5}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v1

    .line 253
    .local v1, "isProfile":Z
    iget-boolean v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsStrongAuthRequired:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    shl-int/lit8 v5, v2, 0x2

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v5

    .line 254
    iget-boolean v5, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v5, :cond_2

    .line 253
    :goto_2
    add-int v0, v2, v3

    .line 255
    .local v0, "index":I
    invoke-static {}, Lcom/android/settings_ex/ConfirmLockPassword;->-get0()[I

    move-result-object v2

    aget v2, v2, v0

    return v2

    .end local v0    # "index":I
    :cond_0
    move v2, v4

    .line 253
    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 254
    goto :goto_2
.end method

.method private getDefaultHeader()I
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e0984

    :goto_0
    return v0

    .line 246
    :cond_0
    const v0, 0x7f0e0986

    goto :goto_0
.end method

.method private getErrorMessage()I
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e099a

    :goto_0
    return v0

    .line 260
    :cond_0
    const v0, 0x7f0e0999

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 587
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 588
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;

    .line 589
    sub-long v2, p1, v6

    .line 590
    const-wide/16 v4, 0x3e8

    move-object v1, p0

    .line 588
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 585
    return-void
.end method

.method private handleNext()V
    .locals 7

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 416
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v3, :cond_1

    .line 417
    :cond_0
    return-void

    .line 422
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_2

    .line 424
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0e066a

    invoke-virtual {p0, v5, v4}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    return-void

    .line 427
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 428
    const-string/jumbo v4, "has_challenge"

    .line 427
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 429
    .local v2, "verifyChallenge":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 430
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 431
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 432
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V

    .line 433
    return-void

    .line 436
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V

    .line 437
    return-void

    .line 440
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    iget v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v6, v0, v6, v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 415
    return-void
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/ConfirmLockPassword$InternalActivity;

    return v0
.end method

.method private onPasswordChecked(ZLandroid/content/Intent;IIZ)V
    .locals 10
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I
    .param p5, "newResult"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 537
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 538
    if-eqz p1, :cond_2

    .line 539
    if-eqz p5, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->reportSuccessfullAttempt()V

    .line 542
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 543
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->checkForPendingIntent()V

    .line 536
    :cond_1
    :goto_0
    return-void

    .line 546
    :cond_2
    iget v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    if-nez v4, :cond_3

    .line 547
    sget-object v4, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 550
    const-string/jumbo v5, "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 547
    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 553
    :cond_3
    iget v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    .line 554
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 555
    const v5, 0xea60

    .line 554
    invoke-virtual {v4, p4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 556
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    .line 568
    .end local v0    # "deadline":J
    :goto_1
    if-eqz p5, :cond_1

    .line 569
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->reportFailedAttempt()V

    goto :goto_0

    .line 559
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e04a7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "wrongPasswordTips":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e099a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 561
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e02c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 560
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, "finalWrongPasswordTips":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 380
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 386
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 387
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 379
    :cond_1
    return-void
.end method

.method private shouldAutoShowSoftKeyboard()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 393
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 479
    iget v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 481
    .local v0, "localEffectiveUserId":I
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPattenString:Ljava/lang/String;

    .line 484
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 487
    new-instance v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 483
    invoke-static {v1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 478
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 506
    return-void

    .line 508
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    .line 510
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    const v1, 0x7f100414

    if-ne v0, v1, :cond_1

    .line 511
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    .line 504
    :goto_0
    return-void

    .line 528
    :cond_1
    const-string/jumbo v0, "power_on_psw"

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPattenString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 16
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 449
    const-string/jumbo v3, "challenge"

    const-wide/16 v10, 0x0

    .line 448
    invoke-virtual {v2, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 450
    .local v4, "challenge":J
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 451
    .local v8, "localEffectiveUserId":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserId:I

    .line 453
    .local v6, "localUserId":I
    new-instance v7, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1, v6}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$3;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;I)V

    .line 470
    .local v7, "onVerifyCallback":Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    if-ne v8, v6, :cond_0

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v3, p1

    .line 471
    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    .line 470
    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 447
    return-void

    .line 474
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v11, 0x0

    move-object/from16 v10, p1

    move-wide v12, v4

    move v14, v6

    move-object v15, v7

    .line 473
    invoke-static/range {v9 .. v15}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    goto :goto_0
.end method

.method private updateNextButton()V
    .locals 4

    .prologue
    .line 234
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "password":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 236
    .local v0, "length":I
    iget v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordMinLength:I

    if-lt v0, v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 233
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->updateNextButton()V

    .line 222
    return-void
.end method

.method protected authenticationSucceeded()V
    .locals 5

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 370
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 227
    return-void
.end method

.method protected getLastTryErrorMessage()I
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e0667

    :goto_0
    return v0

    .line 266
    :cond_0
    const v0, 0x7f0e0666

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 338
    const/16 v0, 0x1e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 619
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 618
    :goto_0
    return-void

    .line 621
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 625
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 626
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x7f1100d9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    .line 142
    if-eqz p1, :cond_0

    .line 144
    const-string/jumbo v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    .line 138
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 153
    iget v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 152
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v11

    .line 154
    .local v11, "storedQuality":I
    const v0, 0x7f040045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 156
    .local v12, "view":Landroid/view/View;
    const v0, 0x7f1100d8

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 159
    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    const v0, 0x7f1100d9

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v0, 0x7f1100da

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->updateNextButton()V

    .line 168
    const v0, 0x7f1100d7

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f1100f0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f1100f3

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 171
    const/high16 v0, 0x40000

    if-eq v0, v11, :cond_0

    .line 172
    const/high16 v0, 0x50000

    if-ne v0, v11, :cond_5

    .line 171
    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 177
    const-string/jumbo v1, "input_method"

    .line 176
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 180
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v10, :cond_3

    .line 182
    const-string/jumbo v0, "com.android.settings_ex.ConfirmCredentials.header"

    .line 181
    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 184
    .local v9, "headerMessage":Ljava/lang/CharSequence;
    const-string/jumbo v0, "com.android.settings_ex.ConfirmCredentials.details"

    .line 183
    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 185
    .local v8, "detailsMessage":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 188
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultDetails()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .end local v8    # "detailsMessage":Ljava/lang/CharSequence;
    .end local v9    # "headerMessage":Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v7

    .line 195
    .local v7, "currentType":I
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v1, :cond_7

    .end local v7    # "currentType":I
    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 197
    new-instance v0, Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 198
    const-wide/16 v2, 0xdc

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 200
    const v5, 0x10c000e

    .line 199
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 198
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 197
    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    .line 201
    new-instance v0, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 202
    const-wide/16 v2, 0x6e

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000f

    .line 203
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 202
    const/high16 v4, 0x3f800000    # 1.0f

    .line 203
    const/high16 v5, 0x3f000000    # 0.5f

    .line 201
    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 208
    const-string/jumbo v1, "check_lock_result"

    .line 207
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/CredentialCheckResultTracker;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    if-nez v0, :cond_4

    .line 210
    new-instance v0, Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-direct {v0}, Lcom/android/settings_ex/CredentialCheckResultTracker;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 211
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 212
    const-string/jumbo v2, "check_lock_result"

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 217
    return-object v12

    .line 173
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_5
    const/high16 v0, 0x60000

    if-eq v0, v11, :cond_0

    .line 174
    const/high16 v0, 0x80000

    if-ne v0, v11, :cond_6

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 196
    .restart local v7    # "currentType":I
    .restart local v10    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v7, 0x12

    goto/16 :goto_1
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;IIZ)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I
    .param p5, "newResult"    # Z

    .prologue
    .line 577
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(ZLandroid/content/Intent;IIZ)V

    .line 576
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 325
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onDestroy()V

    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 328
    iput-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 331
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    const-string/jumbo v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    const/4 v2, 0x0

    .line 331
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 634
    if-eqz p2, :cond_0

    .line 635
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 637
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 638
    const/4 v0, 0x1

    return v0

    .line 636
    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 640
    return v1
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    .line 375
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 308
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 315
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 316
    const-string/jumbo v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    .line 317
    iget v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    .line 315
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 343
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 344
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 345
    .local v0, "deadline":J
    cmp-long v2, v0, v6

    if-eqz v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->clearResult()V

    .line 347
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    .line 357
    :cond_0
    :goto_0
    iput v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    .line 358
    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    .line 359
    sget-object v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    .line 360
    const-string/jumbo v3, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    .line 359
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    .line 342
    :goto_1
    return-void

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V

    .line 350
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->isProfileChallenge()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 353
    iget v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 352
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->updateErrorMessage(I)V

    goto :goto_0

    .line 362
    :cond_2
    iput v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    .line 363
    sget-object v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 364
    const-string/jumbo v3, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    .line 363
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method protected onShowError()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 230
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 397
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 396
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    .line 270
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .prologue
    .line 296
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method
