.class Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/ConfirmLockPattern$InternalActivity;

    return v0
.end method

.method private startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 4
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v3, 0x0

    .line 575
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-get2(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings_ex/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v2, v2, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v1, v3, p2, v3, v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 577
    return-void

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-set1(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 582
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v0, v1, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 583
    .local v0, "localEffectiveUserId":I
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .line 584
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, v2, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 587
    new-instance v3, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;Landroid/content/Intent;Ljava/util/List;I)V

    .line 583
    invoke-static {v2, p1, v0, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-set2(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 574
    return-void
.end method

.method private startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 17
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v8, v2, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 543
    .local v8, "localEffectiveUserId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v6, v2, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    .line 544
    .local v6, "localUserId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 545
    const-string/jumbo v3, "challenge"

    const-wide/16 v10, 0x0

    .line 544
    invoke-virtual {v2, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 547
    .local v4, "challenge":J
    new-instance v7, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1, v8}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;Landroid/content/Intent;I)V

    .line 564
    .local v7, "onVerifyCallback":Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    move-object/from16 v16, v0

    if-ne v8, v6, :cond_0

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, v2, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v3, p1

    .line 565
    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    .line 564
    :goto_0
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-set2(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 541
    return-void

    .line 569
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v9, v2, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 570
    const/4 v11, 0x1

    move-wide v12, v4

    move v14, v6

    move-object v15, v7

    .line 568
    invoke-static/range {v9 .. v15}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-get5(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-get1(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 504
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v4, 0x0

    .line 513
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-get7(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-get3(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    :cond_0
    return-void

    .line 517
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-get5(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 519
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 520
    const-string/jumbo v3, "has_challenge"

    .line 519
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 521
    .local v1, "verifyChallenge":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 522
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 523
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->isInternalActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 524
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V

    .line 512
    :cond_2
    return-void

    .line 529
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V

    .line 530
    return-void
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-get5(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-get1(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 500
    return-void
.end method
