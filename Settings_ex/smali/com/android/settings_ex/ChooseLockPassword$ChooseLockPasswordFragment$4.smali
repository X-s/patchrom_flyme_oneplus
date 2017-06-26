.class Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$4;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

.field final synthetic val$wasSecureBefore:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Z)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    iput-boolean p2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$4;->val$wasSecureBefore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 3
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    .line 649
    if-nez p1, :cond_0

    .line 650
    const-string v1, "ChooseLockPassword"

    const-string v2, "critical: no token returned from known good password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$502(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 657
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 658
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 661
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 662
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-boolean v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$4;->val$wasSecureBefore:Z

    # invokes: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->finishConfirmStage(Z)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$600(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Z)V

    .line 663
    return-void
.end method
