.class Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
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
    .line 440
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$pin:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 6
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$602(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 444
    const/4 v2, 0x0

    .line 445
    .local v2, "matched":Z
    if-eqz p1, :cond_0

    .line 446
    const/4 v2, 0x1

    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$pin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    iget v5, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$localEffectiveUserId:I

    move v4, p2

    # invokes: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(Ljava/lang/String;ZLandroid/content/Intent;II)V
    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$700(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/String;ZLandroid/content/Intent;II)V

    .line 456
    return-void
.end method
