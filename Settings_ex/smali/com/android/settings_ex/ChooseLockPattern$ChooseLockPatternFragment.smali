.class public Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;,
        Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$2;,
        Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;,
        Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-settings-ChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues:[I = null

.field public static final CONFIRM_EXISTING_REQUEST:I = 0x37

.field private static final FRAGMENT_TAG_SAVE_AND_FINISH:Ljava/lang/String; = "save_and_finish_worker"

.field private static final ID_EMPTY_MESSAGE:I = -0x1

.field static final INFORMATION_MSG_TIMEOUT_MS:I = 0xbb8

.field private static final KEY_CURRENT_PATTERN:Ljava/lang/String; = "currentPattern"

.field private static final KEY_PATTERN_CHOICE:Ljava/lang/String; = "chosenPattern"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "uiStage"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private choose_lock_scrollview:Landroid/widget/ScrollView;

.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCurrentPattern:Ljava/lang/String;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field private mFooterView:Landroid/view/View;

.field private mHasChallenge:Z

.field protected mHeaderText:Landroid/widget/TextView;

.field private mHideDrawer:Z

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

.field private mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->choose_lock_scrollview:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method private static synthetic -getcom-android-settings-ChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->-com-android-settings-ChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->-com-android-settings-ChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->-com-android-settings-ChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 151
    iput-boolean v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHideDrawer:Z

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    .line 165
    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    .line 166
    invoke-static {v2, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    .line 167
    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    .line 168
    invoke-static {v4, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 164
    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 203
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V

    .line 202
    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 364
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 366
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 127
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 696
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 694
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 700
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 701
    const-string/jumbo v0, "ChooseLockPattern"

    const-string/jumbo v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void

    .line 705
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 707
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;-><init>(Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    .line 708
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 710
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    .line 711
    const-string/jumbo v3, "save_and_finish_worker"

    .line 710
    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 712
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 714
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 715
    const-string/jumbo v1, "extra_require_password"

    const/4 v3, 0x1

    .line 714
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 716
    .local v2, "required":Z
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 717
    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    iget-wide v4, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 716
    invoke-virtual/range {v0 .. v8}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;Ljava/lang/String;I)V

    .line 699
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0x1d

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 530
    iget v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings_ex/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleLeftButton()V
    .locals 3

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_0

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 536
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 537
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 533
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 541
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 541
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    const-string/jumbo v2, " doesn\'t make sense"

    .line 541
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleRightButton()V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_2

    .line 548
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 550
    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 550
    const-string/jumbo v2, " when button is "

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 551
    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 546
    :cond_1
    :goto_0
    return-void

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_4

    .line 555
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_3

    .line 556
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 557
    const-string/jumbo v2, " when button is "

    .line 556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 557
    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->startSaveAndFinish()V

    goto :goto_0

    .line 560
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_1

    .line 561
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_5

    .line 562
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 563
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 566
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 567
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 175
    packed-switch p1, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 177
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 185
    :goto_1
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 182
    :cond_0
    const-string/jumbo v0, "password"

    .line 181
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    goto :goto_1

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 3
    .param p1, "wasSecureBefore"    # Z
    .param p2, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 724
    if-nez p1, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 726
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 727
    const-string/jumbo v1, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHideDrawer:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 728
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 731
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 721
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->handleLeftButton()V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->handleRightButton()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 382
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 383
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 384
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/ChooseLockPattern;

    if-nez v1, :cond_0

    .line 385
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Fragment contained in wrong activity"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 389
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings_ex/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 392
    const-string/jumbo v1, "for_cred_req_boot"

    .line 391
    invoke-virtual {v9, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;-><init>(Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;)V

    .line 394
    .local v0, "w":Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 395
    const-string/jumbo v4, "extra_require_password"

    .line 394
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 397
    .local v2, "required":Z
    const-string/jumbo v1, "password"

    .line 396
    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 398
    .local v7, "current":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->setBlocking(Z)V

    .line 399
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 400
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 401
    const-wide/16 v4, 0x0

    invoke-static {v7}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iget v8, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 400
    invoke-virtual/range {v0 .. v8}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;Ljava/lang/String;I)V

    .line 403
    .end local v0    # "w":Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;
    .end local v2    # "required":Z
    .end local v7    # "current":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, ":settings:hide_drawer"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHideDrawer:Z

    .line 381
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 409
    const v0, 0x7f04003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 580
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 582
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 583
    return v3

    .line 586
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_1

    .line 587
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 588
    return v3

    .line 590
    :cond_1
    return v2
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 523
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 524
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 522
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 512
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 513
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 515
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 511
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 594
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 596
    const-string/jumbo v0, "uiStage"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 597
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 598
    const-string/jumbo v0, "chosenPattern"

    .line 599
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 603
    const-string/jumbo v0, "currentPattern"

    .line 604
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 603
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/16 v7, 0x8

    .line 414
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 415
    const v5, 0x7f1100d7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 416
    const v5, 0x7f1100de

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView;

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 417
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 418
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 419
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v6

    .line 418
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 421
    const v5, 0x7f1100df

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    .line 423
    const v5, 0x7f1100e1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 424
    const v5, 0x7f1100e2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 426
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    const v5, 0x7f1100e0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterView:Landroid/view/View;

    .line 430
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 431
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    const v5, 0x7f1100dc

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->choose_lock_scrollview:Landroid/widget/ScrollView;

    .line 443
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->choose_lock_scrollview:Landroid/widget/ScrollView;

    if-eqz v5, :cond_2

    .line 444
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v6, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$3;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$3;-><init>(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 468
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 469
    const-string/jumbo v6, "confirm_credentials"

    .line 468
    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 470
    .local v0, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 471
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "password"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 473
    const-string/jumbo v5, "has_challenge"

    const/4 v6, 0x0

    .line 472
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    .line 474
    const-string/jumbo v5, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    .line 476
    if-nez p2, :cond_4

    .line 477
    if-eqz v0, :cond_3

    .line 480
    sget-object v5, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 482
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 484
    const v6, 0x7f0e062f

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 485
    iget v7, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 483
    const/16 v8, 0x37

    .line 482
    invoke-virtual {v5, v8, v6, v9, v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    .line 486
    .local v2, "launchedConfirmationActivity":Z
    if-nez v2, :cond_1

    .line 487
    sget-object v5, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 413
    .end local v2    # "launchedConfirmationActivity":Z
    :cond_1
    :goto_1
    return-void

    .line 463
    .end local v0    # "confirmCredentials":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const v5, 0x7f1100dd

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 464
    .local v4, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    goto :goto_0

    .line 490
    .end local v4    # "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    .restart local v0    # "confirmCredentials":Z
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v5, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_1

    .line 494
    :cond_4
    const-string/jumbo v5, "chosenPattern"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, "patternString":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 496
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 499
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-nez v5, :cond_6

    .line 500
    const-string/jumbo v5, "currentPattern"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 502
    :cond_6
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v5

    const-string/jumbo v6, "uiStage"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 505
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 506
    const-string/jumbo v6, "save_and_finish_worker"

    .line 505
    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    goto :goto_1
.end method

.method protected setRightButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 190
    return-void
.end method

.method protected setRightButtonText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 194
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 8
    .param p1, "stage"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 617
    .local v1, "previousStage":Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 621
    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v2, :cond_3

    .line 622
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 623
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 624
    iget v4, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 623
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 625
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 623
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 622
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    :goto_0
    iget v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 630
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    :goto_1
    iget-object v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v2, v3, :cond_0

    .line 636
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 644
    :cond_0
    iget-object v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v2, v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonText(I)V

    .line 645
    iget-object v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v2, v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 648
    iget-boolean v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v2, :cond_5

    .line 649
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 656
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 657
    const/4 v0, 0x0

    .line 659
    .local v0, "announceAlways":Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->-getcom-android-settings-ChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v3}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 687
    :goto_3
    :pswitch_0
    if-ne v1, p1, :cond_1

    if-eqz v0, :cond_2

    .line 688
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 614
    :cond_2
    return-void

    .line 627
    .end local v0    # "announceAlways":Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 632
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 651
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_2

    .line 661
    .restart local v0    # "announceAlways":Z
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_3

    .line 664
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_3

    .line 667
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 668
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    .line 669
    const/4 v0, 0x1

    .line 670
    goto :goto_3

    .line 674
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_3

    .line 677
    :pswitch_5
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 678
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    .line 679
    const/4 v0, 0x1

    .line 680
    goto :goto_3

    .line 659
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
