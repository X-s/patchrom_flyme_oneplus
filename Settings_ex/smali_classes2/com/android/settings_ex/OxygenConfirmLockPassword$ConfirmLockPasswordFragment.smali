.class public Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;
.super Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;
.source "OxygenConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OxygenConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field private static final FRAGMENT_TAG_CHECK_LOCK_RESULT:Ljava/lang/String; = "check_lock_result"


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

.field private mBlockImm:Z

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlpha:Z

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

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
.method static synthetic -get0(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings_ex/CredentialCheckResultTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 99
    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    .line 111
    return-void
.end method

.method private getActiveViews()[Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
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

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v5, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 187
    invoke-static {v2, v5}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v1

    .line 190
    .local v1, "isProfile":Z
    iget-boolean v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mIsStrongAuthRequired:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    shl-int/lit8 v5, v2, 0x2

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v5

    .line 191
    iget-boolean v5, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v5, :cond_2

    .line 190
    :goto_2
    add-int v0, v2, v3

    .line 192
    .local v0, "index":I
    invoke-static {}, Lcom/android/settings_ex/OxygenConfirmLockPassword;->-get0()[I

    move-result-object v2

    aget v2, v2, v0

    return v2

    .end local v0    # "index":I
    :cond_0
    move v2, v4

    .line 190
    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 191
    goto :goto_2
.end method

.method private getDefaultHeader()I
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e09b2

    :goto_0
    return v0

    .line 183
    :cond_0
    const v0, 0x7f0e09b4

    goto :goto_0
.end method

.method private getErrorMessage()I
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e09c8

    :goto_0
    return v0

    .line 197
    :cond_0
    const v0, 0x7f0e09c7

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 467
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 468
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 469
    new-instance v0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$6;

    .line 470
    sub-long v2, p1, v6

    .line 471
    const-wide/16 v4, 0x3e8

    move-object v1, p0

    .line 469
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$6;-><init>(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 466
    return-void
.end method

.method private handleNext()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 319
    iget-object v3, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v3, :cond_1

    .line 320
    :cond_0
    return-void

    .line 323
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "pin":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    return-void

    .line 328
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 330
    const-string/jumbo v4, "has_challenge"

    .line 329
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 332
    .local v2, "verifyChallenge":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 334
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 335
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V

    .line 336
    return-void

    .line 339
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V

    .line 340
    return-void

    .line 343
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    iget v4, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v5, v0, v5, v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 318
    return-void
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/OxygenConfirmLockPassword$InternalActivity;

    return v0
.end method

.method private onPasswordChecked(ZLandroid/content/Intent;IIZ)V
    .locals 6
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I
    .param p5, "newResult"    # Z

    .prologue
    .line 434
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 435
    if-eqz p1, :cond_2

    .line 436
    if-eqz p5, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->reportSuccessfullAttempt()V

    .line 439
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->checkForPendingIntent()V

    .line 433
    :cond_1
    :goto_0
    return-void

    .line 442
    :cond_2
    if-lez p3, :cond_3

    .line 443
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 445
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    .line 449
    .end local v0    # "deadline":J
    :goto_1
    if-eqz p5, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->reportFailedAttempt()V

    goto :goto_0

    .line 447
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getErrorMessage()I

    move-result v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->showError(IJ)V

    goto :goto_1
.end method

.method private resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 287
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 290
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 286
    :cond_1
    return-void
.end method

.method private shouldAutoShowSoftKeyboard()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

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
    .line 382
    iget v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 384
    .local v0, "localEffectiveUserId":I
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 387
    new-instance v2, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$4;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$4;-><init>(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 383
    invoke-static {v1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 381
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 406
    return-void

    .line 408
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    .line 410
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    const v1, 0x7f10041c

    if-ne v0, v1, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$5;-><init>(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    .line 404
    :goto_0
    return-void

    .line 427
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 16
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 352
    const-string/jumbo v3, "challenge"

    const-wide/16 v10, 0x0

    .line 351
    invoke-virtual {v2, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 353
    .local v4, "challenge":J
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 354
    .local v8, "localEffectiveUserId":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mUserId:I

    .line 356
    .local v6, "localUserId":I
    new-instance v7, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1, v6}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$3;-><init>(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;I)V

    .line 373
    .local v7, "onVerifyCallback":Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    if-ne v8, v6, :cond_0

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v3, p1

    .line 374
    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    .line 373
    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 350
    return-void

    .line 377
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v11, 0x0

    move-object/from16 v10, p1

    move-wide v12, v4

    move v14, v6

    move-object v15, v7

    .line 376
    invoke-static/range {v9 .. v15}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected authenticationSucceeded()V
    .locals 5

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 277
    return-void
.end method

.method protected getLastTryErrorMessage()I
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e0695

    :goto_0
    return v0

    .line 203
    :cond_0
    const v0, 0x7f0e0694

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 255
    const/16 v0, 0x1e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 493
    :goto_0
    return-void

    .line 496
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 500
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 501
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x7f1100d9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 124
    iget v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 123
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v11

    .line 125
    .local v11, "storedQuality":I
    const v0, 0x7f04023f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 127
    .local v12, "view":Landroid/view/View;
    const v0, 0x7f1100d8

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 129
    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 131
    const v0, 0x7f1100d7

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f1100f0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f1100f3

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 134
    const/high16 v0, 0x40000

    if-eq v0, v11, :cond_0

    .line 135
    const/high16 v0, 0x50000

    if-ne v0, v11, :cond_5

    .line 134
    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "input_method"

    .line 139
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 143
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v10, :cond_3

    .line 145
    const-string/jumbo v0, "com.android.settings_ex.ConfirmCredentials.header"

    .line 144
    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 147
    .local v9, "headerMessage":Ljava/lang/CharSequence;
    const-string/jumbo v0, "com.android.settings_ex.ConfirmCredentials.details"

    .line 146
    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 148
    .local v8, "detailsMessage":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 151
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultDetails()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .end local v8    # "detailsMessage":Ljava/lang/CharSequence;
    .end local v9    # "headerMessage":Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v7

    .line 158
    .local v7, "currentType":I
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v1, :cond_7

    .end local v7    # "currentType":I
    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 160
    new-instance v0, Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 161
    const-wide/16 v2, 0xdc

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 163
    const v5, 0x10c000e

    .line 162
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 161
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 160
    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    .line 164
    new-instance v0, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 165
    const-wide/16 v2, 0x6e

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000f

    .line 166
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 165
    const/high16 v4, 0x3f800000    # 1.0f

    .line 166
    const/high16 v5, 0x3f000000    # 0.5f

    .line 164
    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 171
    const-string/jumbo v1, "check_lock_result"

    .line 170
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/CredentialCheckResultTracker;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    if-nez v0, :cond_4

    .line 173
    new-instance v0, Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-direct {v0}, Lcom/android/settings_ex/CredentialCheckResultTracker;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 175
    const-string/jumbo v2, "check_lock_result"

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 178
    :cond_4
    return-object v12

    .line 136
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_5
    const/high16 v0, 0x60000

    if-eq v0, v11, :cond_0

    .line 137
    const/high16 v0, 0x80000

    if-ne v0, v11, :cond_6

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 159
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
    .line 458
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(ZLandroid/content/Intent;IIZ)V

    .line 457
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 509
    if-eqz p2, :cond_0

    .line 510
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 512
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 513
    const/4 v0, 0x1

    return v0

    .line 511
    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 515
    return v1
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    .line 282
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 248
    iput-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 244
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 260
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 261
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 262
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->clearResult()V

    .line 264
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    .line 273
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 259
    return-void

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V

    .line 267
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->isProfileChallenge()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 270
    iget v3, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 269
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->updateErrorMessage(I)V

    goto :goto_0
.end method

.method protected onShowError()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 300
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z

    .line 207
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method
