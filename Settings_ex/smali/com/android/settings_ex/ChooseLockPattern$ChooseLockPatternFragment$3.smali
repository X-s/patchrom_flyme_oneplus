.class Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$3;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->startVerifyPattern(Lcom/android/internal/widget/LockPatternUtils;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 3
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    .line 716
    if-nez p1, :cond_0

    .line 717
    const-string v1, "ChooseLockPattern"

    const-string v2, "critical: no token returned for known good pattern"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v1, v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 721
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->access$402(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 730
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 731
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 733
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 734
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    # invokes: Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->doFinish()V
    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->access$500(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V

    .line 735
    return-void
.end method
