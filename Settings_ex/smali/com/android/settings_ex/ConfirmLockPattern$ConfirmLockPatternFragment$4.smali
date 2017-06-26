.class Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;
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
.field final synthetic this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;Ljava/util/List;ZLandroid/content/Intent;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/content/Intent;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 394
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->onPatternChecked(Ljava/util/List;ZLandroid/content/Intent;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/ConfirmLockPattern$InternalActivity;

    return v0
.end method

.method private onPatternChecked(Ljava/util/List;ZLandroid/content/Intent;II)V
    .locals 8
    .param p2, "matched"    # Z
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "timeoutMs"    # I
    .param p5, "effectiveUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;Z",
            "Landroid/content/Intent;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 492
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v5}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 493
    if-eqz p2, :cond_4

    .line 494
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # invokes: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V
    invoke-static {v5, p3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$700(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/content/Intent;)V

    .line 495
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mForPasswordToggleToPowerOn:Z
    invoke-static {v5}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$800(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 496
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v5}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "require_password_to_decrypt"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 497
    .local v2, "requiredPasswordToDecrypt":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v5}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "require_password_to_decrypt"

    if-eqz v2, :cond_2

    move v5, v4

    :goto_1
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 498
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    if-nez v2, :cond_3

    :goto_2
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 499
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v3, p1, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 500
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # setter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mForPasswordToggleToPowerOn:Z
    invoke-static {v3, v4}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$802(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Z)Z

    .line 518
    .end local v2    # "requiredPasswordToDecrypt":Z
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v2, v4

    .line 496
    goto :goto_0

    .restart local v2    # "requiredPasswordToDecrypt":Z
    :cond_2
    move v5, v3

    .line 497
    goto :goto_1

    :cond_3
    move v3, v4

    .line 498
    goto :goto_2

    .line 503
    .end local v2    # "requiredPasswordToDecrypt":Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$900(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v3

    if-nez v3, :cond_5

    .line 504
    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1000()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 508
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # ++operator for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$904(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_6

    .line 510
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    const v4, 0xea60

    invoke-virtual {v3, p5, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 512
    .local v0, "deadline":J
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # invokes: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
    invoke-static {v3, v0, v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1100(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;J)V

    goto :goto_3

    .line 514
    .end local v0    # "deadline":J
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v4, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    # invokes: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1200(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V

    .line 515
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # invokes: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V
    invoke-static {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1300(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    goto :goto_3
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
    const/4 v2, 0x0

    .line 464
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$300(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->onPatternChecked(Ljava/util/List;ZLandroid/content/Intent;II)V

    .line 488
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$300(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v6

    .line 470
    .local v6, "localEffectiveUserId":I
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;

    invoke-direct {v2, p0, p2, p1, v6}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;Landroid/content/Intent;Ljava/util/List;I)V

    invoke-static {v1, p1, v6, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$202(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 8
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
    .line 437
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$300(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v4

    .line 438
    .local v4, "localEffectiveUserId":I
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 440
    .local v2, "challenge":J
    iget-object v6, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    new-instance v5, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    invoke-direct {v5, p0, p2, p1, v4}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;-><init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;Landroid/content/Intent;Ljava/util/List;I)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    # setter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v6, v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$202(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 460
    return-void
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
    .line 406
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 402
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 6
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
    const/4 v5, 0x0

    .line 409
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 410
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 413
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 414
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 417
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "has_challenge"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 419
    .local v2, "verifyChallenge":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 420
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 421
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V

    goto :goto_0

    .line 425
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 398
    return-void
.end method
