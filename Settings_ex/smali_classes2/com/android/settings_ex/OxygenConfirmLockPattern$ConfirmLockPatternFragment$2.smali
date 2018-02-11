.class Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;
.super Ljava/lang/Object;
.source "OxygenConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$InternalActivity;

    return v0
.end method

.method private startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 7
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
    const/4 v1, 0x0

    .line 488
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    iget v4, v2, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    move-object v2, p2

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-wrap0(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;ZLandroid/content/Intent;IIZ)V

    .line 491
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    iget v6, v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 495
    .local v6, "localEffectiveUserId":I
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    .line 496
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v1, v1, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 499
    new-instance v2, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2$2;

    invoke-direct {v2, p0, p2, p1, v6}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2$2;-><init>(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;Landroid/content/Intent;Ljava/util/List;I)V

    .line 495
    invoke-static {v1, p1, v6, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-set0(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 487
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
    .line 455
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    iget v8, v2, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 456
    .local v8, "localEffectiveUserId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    iget v6, v2, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    .line 457
    .local v6, "localUserId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 458
    const-string/jumbo v3, "challenge"

    const-wide/16 v10, 0x0

    .line 457
    invoke-virtual {v2, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 460
    .local v4, "challenge":J
    new-instance v7, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1, v8}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2$1;-><init>(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;Landroid/content/Intent;I)V

    .line 477
    .local v7, "onVerifyCallback":Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    move-object/from16 v16, v0

    if-ne v8, v6, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, v2, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v3, p1

    .line 478
    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    .line 477
    :goto_0
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-set0(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 454
    return-void

    .line 482
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v9, v2, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 483
    const/4 v11, 0x1

    move-wide v12, v4

    move v14, v6

    move-object v15, v7

    .line 481
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
    .line 422
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-get3(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-get0(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 418
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

    .line 427
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-get4(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-get2(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    :cond_0
    return-void

    .line 431
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-get3(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 433
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 434
    const-string/jumbo v3, "has_challenge"

    .line 433
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 435
    .local v1, "verifyChallenge":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 437
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->isInternalActivity()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 438
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V

    .line 439
    return-void

    .line 442
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V

    .line 443
    return-void

    .line 446
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-get1(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings_ex/CredentialCheckResultTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    iget v3, v3, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v4, v0, v4, v3}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 426
    return-void
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-get3(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-get0(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 414
    return-void
.end method
