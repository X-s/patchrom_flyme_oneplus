.class public Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "OxygenChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OxygenChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;,
        Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$2;,
        Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;,
        Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-settings-OxygenChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues:[I = null

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

.field private mHasChallenge:Z

.field protected mHeaderText:Landroid/widget/TextView;

.field private mHideDrawer:Z

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

.field private mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->choose_lock_scrollview:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method private static synthetic -getcom-android-settings-OxygenChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-com-android-settings-OxygenChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-com-android-settings-OxygenChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-com-android-settings-OxygenChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues:[I

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

    .line 129
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 153
    iput-boolean v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mHideDrawer:Z

    .line 166
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    .line 167
    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    .line 168
    invoke-static {v2, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    .line 169
    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    .line 170
    invoke-static {v4, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 166
    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 165
    iput-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 205
    new-instance v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)V

    .line 204
    iput-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 360
    sget-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 362
    new-instance v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 129
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 686
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 684
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 690
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 691
    const-string/jumbo v0, "ChooseLockPattern"

    const-string/jumbo v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-void

    .line 695
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 697
    new-instance v0, Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;-><init>(Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;)V

    iput-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

    .line 698
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 700
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

    .line 701
    const-string/jumbo v3, "save_and_finish_worker"

    .line 700
    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 702
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 704
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 705
    const-string/jumbo v1, "extra_require_password"

    const/4 v3, 0x1

    .line 704
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 706
    .local v2, "required":Z
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 707
    iget-boolean v3, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    iget-wide v4, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-object v7, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 706
    invoke-virtual/range {v0 .. v8}, Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;Ljava/lang/String;I)V

    .line 689
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 252
    const/16 v0, 0x1d

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 521
    iget v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings_ex/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleLeftButton()V
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_0

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 527
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 528
    sget-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 524
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 532
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 533
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 533
    const-string/jumbo v2, " doesn\'t make sense"

    .line 532
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
    .line 538
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_2

    .line 539
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_0

    .line 540
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 541
    sget-object v2, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 541
    const-string/jumbo v2, " when button is "

    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    sget-object v2, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    sget-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_4

    .line 546
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_3

    .line 547
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    const-string/jumbo v2, " when button is "

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    sget-object v2, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->startSaveAndFinish()V

    goto :goto_0

    .line 551
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_5

    .line 553
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 554
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 557
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 558
    sget-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 177
    packed-switch p1, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 179
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 187
    :goto_1
    sget-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 184
    :cond_0
    const-string/jumbo v0, "password"

    .line 183
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    goto :goto_1

    .line 177
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
    .line 712
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 714
    if-nez p1, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 716
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 717
    const-string/jumbo v1, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mHideDrawer:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 718
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 721
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 711
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 564
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->handleLeftButton()V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->handleRightButton()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 378
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 379
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 380
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/OxygenChooseLockPattern;

    if-nez v1, :cond_0

    .line 381
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Fragment contained in wrong activity"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 385
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings_ex/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 388
    const-string/jumbo v1, "for_cred_req_boot"

    .line 387
    invoke-virtual {v9, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    new-instance v0, Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;-><init>(Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;)V

    .line 390
    .local v0, "w":Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 391
    const-string/jumbo v4, "extra_require_password"

    .line 390
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 393
    .local v2, "required":Z
    const-string/jumbo v1, "password"

    .line 392
    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 394
    .local v7, "current":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;->setBlocking(Z)V

    .line 395
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 396
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 397
    const-wide/16 v4, 0x0

    invoke-static {v7}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iget v8, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 396
    invoke-virtual/range {v0 .. v8}, Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;Ljava/lang/String;I)V

    .line 399
    .end local v0    # "w":Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;
    .end local v2    # "required":Z
    .end local v7    # "current":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, ":settings:hide_drawer"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mHideDrawer:Z

    .line 377
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 406
    const v1, 0x7f040120

    const/4 v2, 0x0

    .line 405
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/GlifLayout;

    .line 407
    .local v0, "layout":Lcom/android/setupwizardlib/GlifLayout;
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 408
    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 571
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 573
    sget-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 574
    return v3

    .line 577
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_1

    .line 578
    sget-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 579
    return v3

    .line 581
    :cond_1
    return v2
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 514
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 515
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 513
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 503
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 504
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 506
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 502
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 585
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 587
    const-string/jumbo v0, "uiStage"

    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 589
    const-string/jumbo v0, "chosenPattern"

    .line 590
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 589
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 594
    const-string/jumbo v0, "currentPattern"

    .line 595
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 594
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 413
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 414
    const v5, 0x7f1100d7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 415
    const v5, 0x7f1100de

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView;

    iput-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 416
    iget-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 417
    iget-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 418
    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v6

    .line 417
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 420
    const v5, 0x7f1100df

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    .line 422
    const v5, 0x7f1100e1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 423
    const v5, 0x7f1100e2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 425
    iget-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    const v5, 0x7f11030d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->choose_lock_scrollview:Landroid/widget/ScrollView;

    .line 434
    iget-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->choose_lock_scrollview:Landroid/widget/ScrollView;

    if-eqz v5, :cond_1

    .line 435
    iget-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v6, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$3;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$3;-><init>(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 459
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 460
    const-string/jumbo v6, "confirm_credentials"

    .line 459
    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 461
    .local v0, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 462
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "password"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 464
    const-string/jumbo v5, "has_challenge"

    const/4 v6, 0x0

    .line 463
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    .line 465
    const-string/jumbo v5, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    .line 467
    if-nez p2, :cond_3

    .line 468
    if-eqz v0, :cond_2

    .line 471
    sget-object v5, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 473
    iget-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 475
    const v6, 0x7f0e062f

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 476
    iget v7, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 474
    const/16 v8, 0x37

    .line 473
    invoke-virtual {v5, v8, v6, v9, v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    .line 477
    .local v2, "launchedConfirmationActivity":Z
    if-nez v2, :cond_0

    .line 478
    sget-object v5, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 412
    .end local v2    # "launchedConfirmationActivity":Z
    :cond_0
    :goto_1
    return-void

    .line 454
    .end local v0    # "confirmCredentials":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const v5, 0x7f1100dd

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 455
    .local v4, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    goto :goto_0

    .line 481
    .end local v4    # "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    .restart local v0    # "confirmCredentials":Z
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v5, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_1

    .line 485
    :cond_3
    const-string/jumbo v5, "chosenPattern"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "patternString":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 487
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 490
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 491
    const-string/jumbo v5, "currentPattern"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 493
    :cond_5
    invoke-static {}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v5

    const-string/jumbo v6, "uiStage"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 497
    const-string/jumbo v6, "save_and_finish_worker"

    .line 496
    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

    iput-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPattern$SaveAndFinishWorker;

    goto :goto_1
.end method

.method protected setRightButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 192
    return-void
.end method

.method protected setRightButtonText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 196
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 8
    .param p1, "stage"    # Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .prologue
    const/4 v7, 0x0

    .line 606
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 608
    .local v1, "previousStage":Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;
    iput-object p1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 612
    sget-object v2, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v2, :cond_2

    .line 613
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 614
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 615
    iget v4, p1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 614
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 616
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 614
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 613
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    :goto_0
    iget v2, p1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 621
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    :goto_1
    iget-object v2, p1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v3, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v2, v3, :cond_4

    .line 627
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 634
    :goto_2
    iget-object v2, p1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v2, v2, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->setRightButtonText(I)V

    .line 635
    iget-object v2, p1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v2, v2, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 638
    iget-boolean v2, p1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v2, :cond_5

    .line 639
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 646
    :goto_3
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 647
    const/4 v0, 0x0

    .line 649
    .local v0, "announceAlways":Z
    invoke-static {}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-getcom-android-settings-OxygenChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v3}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 677
    :goto_4
    :pswitch_0
    if-ne v1, p1, :cond_0

    if-eqz v0, :cond_1

    .line 678
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 605
    :cond_1
    return-void

    .line 618
    .end local v0    # "announceAlways":Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 623
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 629
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v3, v3, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 631
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v3, v3, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 641
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_3

    .line 651
    .restart local v0    # "announceAlways":Z
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 654
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v4, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 657
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 658
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    .line 659
    const/4 v0, 0x1

    .line 660
    goto :goto_4

    .line 664
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 667
    :pswitch_5
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 668
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    .line 669
    const/4 v0, 0x1

    .line 670
    goto :goto_4

    .line 649
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
