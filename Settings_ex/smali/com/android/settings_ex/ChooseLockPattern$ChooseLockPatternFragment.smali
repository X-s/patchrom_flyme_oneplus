.class public Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
        Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;,
        Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    }
.end annotation


# static fields
.field public static final CONFIRM_EXISTING_REQUEST:I = 0x37

.field private static final ID_EMPTY_MESSAGE:I = -0x1

.field static final INFORMATION_MSG_TIMEOUT_MS:I = 0xbb8

.field private static final KEY_CURRENT_PATTERN:Ljava/lang/String; = "currentPattern"

.field private static final KEY_PATTERN_CHOICE:Ljava/lang/String; = "chosenPattern"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "uiStage"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0


# instance fields
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

.field private mDone:Z

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field private mHasChallenge:Z

.field protected mHeaderText:Landroid/widget/TextView;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 172
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v4, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 211
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 369
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 370
    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mDone:Z

    .line 372
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->doFinish()V

    return-void
.end method

.method private doFinish()V
    .locals 1

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mDone:Z

    .line 742
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 649
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 650
    return-void
.end method

.method private saveChosenPatternAndFinish()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    .line 653
    iget-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mDone:Z

    if-eqz v8, :cond_0

    .line 700
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    .line 655
    .local v5, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v8

    if-nez v8, :cond_3

    move v1, v7

    .line 657
    .local v1, "lockVirgin":Z
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    .line 659
    .local v6, "wasSecureBefore":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "extra_require_password"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 662
    .local v2, "required":Z
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 663
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 664
    if-eqz v1, :cond_1

    .line 665
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 668
    :cond_1
    iget-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    if-eqz v8, :cond_4

    .line 672
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-wide v10, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v5, v8, v10, v11, v9}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 678
    .local v4, "token":[B
    :goto_2
    if-nez v4, :cond_2

    .line 679
    const-string v8, "ChooseLockPattern"

    const-string v9, "critical: no token returned for known good pattern"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 684
    .local v3, "result":Landroid/content/Intent;
    const-string v8, "hw_auth_token"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 687
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 688
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->doFinish()V

    goto :goto_0

    .line 655
    .end local v1    # "lockVirgin":Z
    .end local v2    # "required":Z
    .end local v3    # "result":Landroid/content/Intent;
    .end local v4    # "token":[B
    .end local v6    # "wasSecureBefore":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 674
    .restart local v1    # "lockVirgin":Z
    .restart local v2    # "required":Z
    .restart local v6    # "wasSecureBefore":Z
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const/4 v4, 0x0

    .restart local v4    # "token":[B
    goto :goto_2

    .line 697
    .end local v0    # "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    .end local v4    # "token":[B
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->setResult(I)V

    .line 698
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->doFinish()V

    goto :goto_0
.end method

.method private startVerifyPattern(Lcom/android/internal/widget/LockPatternUtils;Z)V
    .locals 6
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "wasSecureBefore"    # Z

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    .line 704
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 708
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-wide v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    new-instance v5, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$3;-><init>(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 737
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 261
    const/16 v0, 0x1d

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    invoke-static {p1}, Lcom/android/settings_ex/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleLeftButton()V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_0

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 487
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 488
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 495
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 490
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 492
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

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
    .line 498
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_2

    .line 499
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_0
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 520
    :cond_1
    :goto_0
    return-void

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_4

    .line 506
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_3

    .line 507
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->saveChosenPatternAndFinish()V

    goto :goto_0

    .line 511
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_1

    .line 512
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_5

    .line 513
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 517
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 518
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
    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 184
    packed-switch p1, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 186
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 194
    :goto_1
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 190
    :cond_0
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    goto :goto_1

    .line 184
    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->handleLeftButton()V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->handleRightButton()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 388
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 389
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/ChooseLockPattern;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Fragment contained in wrong activity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 397
    const v0, 0x7f040022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 531
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_0

    .line 533
    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 541
    :goto_0
    return v0

    .line 537
    :cond_0
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_1

    .line 538
    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 541
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 473
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 474
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 478
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 467
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 468
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 469
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 545
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 547
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 548
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 554
    const-string v0, "currentPattern"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 402
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 403
    const v5, 0x7f12003c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 404
    const v5, 0x7f120042

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView;

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 405
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 406
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 409
    const v5, 0x7f120043

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    .line 411
    const v5, 0x7f120044

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 412
    const v5, 0x7f120045

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 414
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    const v5, 0x7f120041

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 425
    .local v4, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "confirm_credentials"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 429
    .local v0, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 430
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "password"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 431
    const-string v5, "has_challenge"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    .line 433
    const-string v5, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    .line 435
    if-nez p2, :cond_2

    .line 436
    if-eqz v0, :cond_1

    .line 439
    sget-object v5, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 440
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    const/16 v6, 0x37

    const v7, 0x7f0c042a

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v9}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    .line 444
    .local v2, "launchedConfirmationActivity":Z
    if-nez v2, :cond_0

    .line 445
    sget-object v5, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 462
    .end local v2    # "launchedConfirmationActivity":Z
    :cond_0
    :goto_0
    iput-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mDone:Z

    .line 463
    return-void

    .line 448
    :cond_1
    sget-object v5, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 452
    :cond_2
    const-string v5, "chosenPattern"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "patternString":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 454
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 457
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 458
    const-string v5, "currentPattern"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 460
    :cond_4
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v5

    const-string v6, "uiStage"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0
.end method

.method protected setRightButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 201
    return-void
.end method

.method protected setRightButtonText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 8
    .param p1, "stage"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 568
    .local v1, "previousStage":Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 572
    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v2, :cond_3

    .line 573
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    :goto_0
    iget v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 581
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    :goto_1
    iget-object v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v2, v3, :cond_0

    .line 587
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    :cond_0
    iget-object v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v2, v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonText(I)V

    .line 597
    iget-object v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v2, v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 600
    iget-boolean v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v2, :cond_5

    .line 601
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 608
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 609
    const/4 v0, 0x0

    .line 611
    .local v0, "announceAlways":Z
    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$1;->$SwitchMap$com$android$settings$ChooseLockPattern$ChooseLockPatternFragment$Stage:[I

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v3}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 639
    :goto_3
    :pswitch_0
    if-ne v1, p1, :cond_1

    if-eqz v0, :cond_2

    .line 640
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 642
    :cond_2
    return-void

    .line 578
    .end local v0    # "announceAlways":Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 583
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 603
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_2

    .line 613
    .restart local v0    # "announceAlways":Z
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_3

    .line 616
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_3

    .line 619
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 620
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    .line 621
    const/4 v0, 0x1

    .line 622
    goto :goto_3

    .line 626
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_3

    .line 629
    :pswitch_5
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 630
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    .line 631
    const/4 v0, 0x1

    .line 632
    goto :goto_3

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
