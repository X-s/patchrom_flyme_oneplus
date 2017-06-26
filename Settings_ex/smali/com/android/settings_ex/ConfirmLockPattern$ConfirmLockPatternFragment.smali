.class public Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/settings_exlib/animation/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;",
        "Lcom/android/settings_exlib/animation/AppearAnimationCreator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field private static final KEY_NUM_WRONG_ATTEMPTS:Ljava/lang/String; = "num_wrong_attempts"

.field private static final KEY_NUM_WRONG_CONFIRM_ATTEMPTS:Ljava/lang/String; = "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

.field private static final KEY_TIME_WRONG_CONFIRM_ATTEMPTS:Ljava/lang/String; = "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

.field private static final LOCKOUT_TIME_OUT:I = 0xea60

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static mPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDetailsText:Ljava/lang/CharSequence;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

.field private mEffectiveUserId:I

.field private mErrorTextView:Landroid/widget/TextView;

.field private mForPasswordToggleToPowerOn:Z

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mLeftSpacerLandscape:Landroid/view/View;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNumWrongConfirmAttempts:I

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mRightSpacerLandscape:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 341
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 393
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # J

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mForPasswordToggleToPowerOn:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mForPasswordToggleToPowerOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$904(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method private getActiveViews()[[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v6, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 270
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v0

    .line 273
    .local v0, "cellStates":[[Lcom/android/internal/widget/LockPatternView$CellState;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 274
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v5, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v6, v0, v1

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 276
    aget-object v6, v0, v1

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 278
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v2    # "j":I
    .end local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 281
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_3
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

    .line 284
    .local v4, "resultArr":[[Ljava/lang/Object;
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 285
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 286
    .restart local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 287
    aget-object v6, v4, v1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 284
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 290
    .end local v2    # "j":I
    .end local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    return-object v4
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 522
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V

    .line 523
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 524
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 548
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    const v1, 0x7f0d0077

    if-ne v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settings_exlib/animation/AppearAnimationCreator;)V

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private updateStage(Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    .prologue
    const/4 v2, 0x1

    .line 301
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPattern$1;->$SwitchMap$com$android$settings$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 339
    return-void

    .line 303
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 318
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0262

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 322
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0c026d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 329
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected authenticationSucceeded()V
    .locals 1

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 357
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
    .line 555
    instance-of v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;

    if-eqz v0, :cond_4

    move-object v1, p1

    .line 556
    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    .line 557
    .local v1, "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

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

    .line 567
    .end local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :goto_4
    return-void

    .line 557
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

    .line 564
    .end local v1    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

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

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 222
    const/16 v0, 0x1f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPreferences:Landroid/content/SharedPreferences;

    .line 126
    if-eqz p1, :cond_0

    .line 127
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    .line 130
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 135
    const v0, 0x7f040026

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 136
    .local v10, "view":Landroid/view/View;
    const v0, 0x7f12003c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f120042

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 139
    const v0, 0x7f12004b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f12004d

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    .line 141
    const v0, 0x7f12004e

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    .line 145
    const v0, 0x7f120041

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 147
    .local v9, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v9, v0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 150
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_0

    .line 151
    const-string v0, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    .line 153
    const-string v0, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    .line 155
    const-string v0, "for_password_toggle_to_poweron"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mForPasswordToggleToPowerOn:Z

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 160
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 163
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V

    .line 165
    if-eqz p3, :cond_3

    .line 166
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    .line 176
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x3fa66666    # 1.3f

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10c000e

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    .line 180
    new-instance v0, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x7d

    const/high16 v4, 0x40800000    # 4.0f

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10c000f

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    new-instance v7, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settings_exlib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 191
    return-object v10

    :cond_2
    move v0, v1

    .line 160
    goto :goto_0

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onDestroy()V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 218
    :cond_0
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 384
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 384
    goto :goto_0

    :cond_2
    move v1, v2

    .line 385
    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 202
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 207
    :cond_0
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    return-void
.end method

.method public onResume()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 227
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 228
    sget-object v6, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

    invoke-interface {v6, v7, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 230
    .local v4, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 232
    .local v0, "currentTime":J
    sub-long v6, v0, v4

    const-wide/32 v8, 0xea60

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 233
    sget-object v6, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    .line 244
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 245
    .local v2, "deadline":J
    cmp-long v6, v2, v12

    if-eqz v6, :cond_2

    .line 246
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    .line 253
    :cond_0
    :goto_1
    return-void

    .line 237
    .end local v2    # "deadline":J
    :cond_1
    iput v10, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    .line 238
    sget-object v6, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v8, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 247
    .restart local v2    # "deadline":J
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 262
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 263
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .prologue
    .line 295
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settings_exlib/animation/AppearAnimationCreator;)V

    .line 298
    return-void
.end method
