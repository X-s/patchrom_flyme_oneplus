.class public Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;
.super Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;
.source "OxygenConfirmLockPattern.java"

# interfaces
.implements Lcom/android/settings_exlib/animation/AppearAnimationCreator;
.implements Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OxygenConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$1;,
        Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;",
        "Lcom/android/settings_exlib/animation/AppearAnimationCreator",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;"
    }
.end annotation


# static fields
.field private static final synthetic -com-android-settings-OxygenConfirmLockPattern$StageSwitchesValues:[I = null

.field private static final FRAGMENT_TAG_CHECK_LOCK_RESULT:Ljava/lang/String; = "check_lock_result"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

.field private mDetailsText:Ljava/lang/CharSequence;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mIsScale:Z

.field private mLeftSpacerLandscape:Landroid/view/View;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mRightSpacerLandscape:Landroid/view/View;

.field private final mScale:F


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings_ex/CredentialCheckResultTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method private static synthetic -getcom-android-settings-OxygenConfirmLockPattern$StageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-com-android-settings-OxygenConfirmLockPattern$StageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-com-android-settings-OxygenConfirmLockPattern$StageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;->values()[Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-com-android-settings-OxygenConfirmLockPattern$StageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;ZLandroid/content/Intent;IIZ)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I
    .param p5, "newResult"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;)V
    .locals 0
    .param p1, "stage"    # Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 89
    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mIsScale:Z

    .line 104
    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mScale:F

    .line 349
    new-instance v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 412
    new-instance v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)V

    .line 411
    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 107
    return-void
.end method

.method private getActiveViews()[[Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v6, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 276
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v0

    .line 279
    .local v0, "cellStates":[[Lcom/android/internal/widget/LockPatternView$CellState;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 280
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v5, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v6, v0, v1

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 282
    aget-object v6, v0, v1

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 284
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v2    # "j":I
    .end local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 287
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_3
    const-class v6, Ljava/lang/Object;

    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    aput v8, v7, v9

    aget-object v8, v0, v9

    array-length v8, v8

    const/4 v9, 0x1

    aput v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/Object;

    .line 290
    .local v4, "resultArr":[[Ljava/lang/Object;
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 291
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 292
    .restart local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 293
    aget-object v6, v4, v1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 290
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 296
    .end local v2    # "j":I
    .end local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    return-object v4
.end method

.method private getDefaultDetails()I
    .locals 3

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 258
    invoke-static {v1, v2}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    .line 260
    .local v0, "isProfile":Z
    if-eqz v0, :cond_1

    .line 261
    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mIsStrongAuthRequired:Z

    if-eqz v1, :cond_0

    .line 262
    const v1, 0x7f0e0996

    .line 261
    :goto_0
    return v1

    .line 263
    :cond_0
    const v1, 0x7f0e0990

    goto :goto_0

    .line 265
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mIsStrongAuthRequired:Z

    if-eqz v1, :cond_2

    .line 266
    const v1, 0x7f0e0993

    .line 265
    :goto_1
    return v1

    .line 267
    :cond_2
    const v1, 0x7f0e098d

    goto :goto_1
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 553
    sget-object v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;)V

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 555
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$5;

    .line 556
    sub-long v2, p1, v6

    .line 557
    const-wide/16 v4, 0x3e8

    move-object v1, p0

    .line 555
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$5;-><init>(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 552
    return-void
.end method

.method private onPatternChecked(ZLandroid/content/Intent;IIZ)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I
    .param p5, "newResult"    # Z

    .prologue
    .line 518
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 519
    if-eqz p1, :cond_2

    .line 520
    if-eqz p5, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->reportSuccessfullAttempt()V

    .line 523
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->checkForPendingIntent()V

    .line 517
    :cond_1
    :goto_0
    return-void

    .line 526
    :cond_2
    if-lez p3, :cond_3

    .line 527
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->refreshLockScreen()V

    .line 528
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 530
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    .line 535
    .end local v0    # "deadline":J
    :goto_1
    if-eqz p5, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->reportFailedAttempt()V

    goto :goto_0

    .line 532
    :cond_3
    sget-object v2, Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;)V

    .line 533
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_1
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 359
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    return-void
.end method

.method private resizePattern()V
    .locals 3

    .prologue
    const v2, 0x3f266666    # 0.65f

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mIsScale:Z

    .line 225
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 226
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 227
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 228
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    .line 373
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    const v1, 0x7f100414

    if-ne v0, v1, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v1

    .line 376
    new-instance v2, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$4;-><init>(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;Landroid/content/Intent;)V

    .line 375
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settings_exlib/animation/AppearAnimationCreator;)V

    .line 367
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private updateStage(Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;

    .prologue
    const/4 v2, 0x1

    .line 307
    invoke-static {}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-getcom-android-settings-OxygenConfirmLockPattern$StageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 306
    return-void

    .line 309
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->isProfileChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 322
    iget v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 321
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->updateErrorMessage(I)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0e0985

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getDefaultDetails()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 330
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    const v1, 0x7f0e099b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 337
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 340
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected authenticationSucceeded()V
    .locals 5

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 363
    return-void
.end method

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
    .line 579
    instance-of v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;

    if-eqz v0, :cond_4

    move-object v1, p1

    .line 580
    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    .line 581
    .local v1, "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 582
    if-eqz p7, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 583
    :goto_0
    if-eqz p7, :cond_1

    move/from16 v4, p6

    .line 584
    :goto_1
    if-eqz p7, :cond_2

    const/4 v5, 0x0

    .line 585
    :goto_2
    if-eqz p7, :cond_3

    const/4 v6, 0x0

    .line 582
    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 585
    const/high16 v7, 0x3f800000    # 1.0f

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 581
    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 578
    .end local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :goto_4
    return-void

    .line 582
    .restart local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 583
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move/from16 v5, p6

    .line 584
    goto :goto_2

    .line 585
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3

    .line 588
    .end local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

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

.method protected getLastTryErrorMessage()I
    .locals 1

    .prologue
    .line 549
    const v0, 0x7f0e0665

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 202
    const/16 v0, 0x1f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 119
    const v0, 0x7f040236

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 120
    .local v10, "view":Landroid/view/View;
    const v0, 0x7f1100d7

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f1100de

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 122
    const v0, 0x7f1100f0

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f1100f3

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f1100f4

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    .line 125
    const v0, 0x7f1100f5

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    .line 127
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->resizePattern()V

    .line 132
    const v0, 0x7f1100dd

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 133
    .local v9, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v9, v0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 136
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_0

    .line 138
    const-string/jumbo v0, "com.android.settings_ex.ConfirmCredentials.header"

    .line 137
    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    .line 140
    const-string/jumbo v0, "com.android.settings_ex.ConfirmCredentials.details"

    .line 139
    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 146
    iget v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 145
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 148
    sget-object v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;)V

    .line 150
    if-nez p3, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 159
    :cond_1
    new-instance v0, Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10c000e

    .line 161
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 160
    const-wide/16 v2, 0xdc

    const/high16 v4, 0x40000000    # 2.0f

    .line 161
    const v5, 0x3fa66666    # 1.3f

    .line 159
    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    .line 163
    new-instance v0, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 164
    const-wide/16 v2, 0x7d

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000f

    .line 165
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 167
    new-instance v7, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$3;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)V

    .line 164
    const/high16 v4, 0x40800000    # 4.0f

    .line 165
    const v5, 0x3e99999a    # 0.3f

    .line 163
    invoke-direct/range {v0 .. v7}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settings_exlib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "check_lock_result"

    .line 175
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/CredentialCheckResultTracker;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    if-nez v0, :cond_2

    .line 178
    new-instance v0, Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-direct {v0}, Lcom/android/settings_ex/CredentialCheckResultTracker;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 180
    const-string/jumbo v2, "check_lock_result"

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 182
    :cond_2
    return-object v10

    .line 145
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;IIZ)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I
    .param p5, "newResult"    # Z

    .prologue
    .line 544
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;IIZ)V

    .line 543
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 402
    iget-object v3, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 402
    goto :goto_0

    :cond_2
    move v1, v2

    .line 403
    goto :goto_1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const v2, 0x3f266666    # 0.65f

    .line 234
    invoke-super {p0, p1}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;->onMultiWindowModeChanged(Z)V

    .line 235
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mIsScale:Z

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 237
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 238
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 239
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-super {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 191
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 210
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 211
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->clearResult()V

    .line 213
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    .line 219
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 206
    return-void

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    sget-object v2, Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    return-void
.end method

.method protected onShowError()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-super {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 248
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .prologue
    .line 301
    invoke-super {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 303
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settings_exlib/animation/AppearAnimationCreator;)V

    .line 300
    return-void
.end method
