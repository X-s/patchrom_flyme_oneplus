.class Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 488
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 489
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f050002

    const v2, 0x7f050003

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 492
    return-void
.end method
