.class public Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;
.super Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;
.source "ApplockerConfirmPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$6;,
        Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;
    }
.end annotation


# static fields
.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mEffectiveUserId:I

.field private mErrorTextView:Landroid/widget/TextView;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mDisappearing:Z

    .line 203
    new-instance v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 403
    new-instance v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$4;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mDisappearing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    .prologue
    .line 39
    iget v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mEffectiveUserId:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;
    .param p1, "x1"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->updateStage(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;)V

    return-void
.end method

.method private getActiveViews()[[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 443
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPackageIcon:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mErrorTextView:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v6, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v0

    .line 448
    .local v0, "cellStates":[[Lcom/android/internal/widget/LockPatternView$CellState;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 449
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v5, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v6, v0, v1

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 451
    aget-object v6, v0, v1

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 453
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    .end local v2    # "j":I
    .end local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    aget-object v7, v0, v7

    array-length v7, v7

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/Object;

    .line 457
    .local v4, "resultArr":[[Ljava/lang/Object;
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 458
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 459
    .restart local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 460
    aget-object v6, v4, v1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 457
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 463
    .end local v2    # "j":I
    .end local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    return-object v4
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 338
    sget-object v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;->LockedOut:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->updateStage(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;)V

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 340
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->stopListening()V

    .line 341
    new-instance v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$3;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;JJ)V

    invoke-virtual {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 362
    return-void
.end method

.method private onPatternChecked(ZLandroid/content/Intent;II)V
    .locals 10
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 305
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v9}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 306
    const-string v1, "ApplockerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPatternChecked: match = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeoutMs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-eqz p1, :cond_0

    .line 308
    iput v8, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    .line 309
    sget-object v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v5, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    invoke-direct {p0, p2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 335
    :goto_0
    return-void

    .line 314
    :cond_0
    const-string v1, "ApplockerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPatternChecked: mNumWrongConfirmAttempts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    if-nez v1, :cond_1

    .line 316
    sget-object v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 320
    :cond_1
    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    const/4 v4, 0x5

    if-lt v1, v4, :cond_2

    .line 321
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x7530

    invoke-virtual {v1, p4, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    .line 323
    .local v2, "deadline":J
    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->handleAttemptLockout(J)V

    goto :goto_0

    .line 325
    .end local v2    # "deadline":J
    :cond_2
    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    const/4 v4, 0x2

    if-le v1, v4, :cond_3

    .line 326
    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    rsub-int/lit8 v0, v1, 0x5

    .line 327
    .local v0, "count":I
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f130001

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .end local v0    # "count":I
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->postClearPatternRunnable()V

    goto :goto_0

    .line 330
    :cond_3
    sget-object v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;->NeedToUnlockWrong:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->updateStage(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;)V

    goto :goto_1
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 412
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 413
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 414
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 420
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mDisappearing:Z

    .line 421
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 422
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settings_exlib/animation/AppearAnimationCreator;)V

    goto :goto_0
.end method

.method private updateStage(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;)V
    .locals 7
    .param p1, "stage"    # Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 365
    const-string v2, "ApplockerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget-object v2, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$6;->$SwitchMap$com$oneplus$settings$applocker$ApplockerConfirmPattern$Stage:[I

    invoke-virtual {p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 400
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 401
    return-void

    .line 368
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mErrorTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 377
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 378
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderTextView:Landroid/widget/TextView;

    const v3, 0x7f0c01d6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 381
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "wrongPatternTips":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0738

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0179

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "finalWrongPatternTips":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderTextView:Landroid/widget/TextView;

    const v3, 0x7f0c01d7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 386
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 387
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 388
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 391
    .end local v0    # "finalWrongPatternTips":Ljava/lang/String;
    .end local v1    # "wrongPatternTips":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 394
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 14
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    .line 471
    instance-of v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;

    if-eqz v0, :cond_4

    move-object v1, p1

    .line 472
    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    .line 473
    .local v1, "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p7, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p7, :cond_1

    move/from16 v4, p6

    :goto_1
    if-eqz p7, :cond_2

    const/4 v5, 0x0

    :goto_2
    if-eqz p7, :cond_3

    const/4 v6, 0x0

    :goto_3
    const/high16 v7, 0x3f800000    # 1.0f

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 483
    .end local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :goto_4
    return-void

    .line 473
    .restart local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move/from16 v5, p6

    goto :goto_2

    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3

    .line 480
    .end local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    move-object v3, p1

    check-cast v3, Landroid/view/View;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f120028

    const/4 v1, 0x0

    .line 74
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 75
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mEffectiveUserId:I

    .line 77
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPreferences:Landroid/content/SharedPreferences;

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    .line 83
    :cond_0
    const v0, 0x7f120025

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPackageIcon:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPackageIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->setBackgroundColor()V

    .line 89
    :cond_1
    const v0, 0x7f120027

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderTextView:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f120026

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 91
    new-instance v2, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    iget-object v3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v2, v3, v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;)V

    iput-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->setHeaderTextView(Landroid/widget/TextView;)V

    .line 96
    const v0, 0x7f12003d

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 98
    invoke-virtual {p0, v4}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mErrorTextView:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f120023

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 104
    .local v9, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v9, v0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 107
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_2

    .line 108
    const-string v0, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderText:Ljava/lang/CharSequence;

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 114
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mEffectiveUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 117
    sget-object v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;->NeedToUnlock:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->updateStage(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;)V

    .line 119
    if-nez p1, :cond_6

    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    const-string v0, "OP_APP_LOCKER_BLOCKING_APP"

    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getBlockingApp()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v8}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->setResult(ILandroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->finish()V

    .line 131
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x3fa66666    # 1.3f

    const v1, 0x10c000e

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    .line 135
    new-instance v0, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    const-wide/16 v2, 0x7d

    const/high16 v4, 0x40800000    # 4.0f

    const v5, 0x3e99999a    # 0.3f

    const v1, 0x10c000f

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    new-instance v7, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$1;

    invoke-direct {v7, p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$1;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settings_exlib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    if-nez v0, :cond_4

    .line 147
    new-instance v0, Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-direct {v0}, Lcom/android/settings_ex/CredentialCheckResultTracker;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 149
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 114
    goto :goto_0

    .line 129
    :cond_6
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f040014

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->setContentView(I)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->init(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;II)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->onPatternChecked(ZLandroid/content/Intent;II)V

    .line 301
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 487
    invoke-super {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->onDestroy()V

    .line 488
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 492
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 153
    invoke-super {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->onResume()V

    .line 155
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 156
    .local v1, "passwordQuality":I
    const/high16 v4, 0x10000

    if-eq v1, v4, :cond_0

    .line 157
    invoke-virtual {p0, v9}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->setResult(I)V

    .line 158
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->finish()V

    .line 162
    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 163
    .local v2, "deadline":J
    cmp-long v4, v2, v10

    if-eqz v4, :cond_4

    .line 164
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->clearResult()V

    .line 165
    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->handleAttemptLockout(J)V

    .line 176
    :cond_1
    :goto_0
    sget-object v4, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    .line 179
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

    iget v6, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    cmp-long v4, v2, v10

    if-nez v4, :cond_3

    .line 181
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->registerFingerprintDelayed()V

    .line 182
    iget v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    .line 183
    iput v9, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    .line 184
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->clearResult()V

    .line 187
    :cond_2
    iget v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    const/4 v5, 0x2

    if-gt v4, v5, :cond_5

    .line 188
    sget-object v4, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;->NeedToUnlock:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;

    invoke-direct {p0, v4}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->updateStage(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;)V

    .line 196
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 197
    return-void

    .line 166
    :cond_4
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    sget-object v4, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;->NeedToUnlock:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;

    invoke-direct {p0, v4}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->updateStage(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;)V

    goto :goto_0

    .line 190
    :cond_5
    iget v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    rsub-int/lit8 v0, v4, 0x5

    .line 191
    .local v0, "count":I
    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getResources()Landroid/content/res/Resources;

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
