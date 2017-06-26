.class Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->val$pin:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$602(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 470
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # invokes: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$800(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->val$intent:Landroid/content/Intent;

    const-string v2, "type"

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$900(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->val$intent:Landroid/content/Intent;

    const-string v1, "password"

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->val$pin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->val$localEffectiveUserId:I

    # invokes: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(ZLandroid/content/Intent;II)V
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1000(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;ZLandroid/content/Intent;II)V

    .line 478
    return-void

    .line 471
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method
