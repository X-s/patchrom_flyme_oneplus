.class Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;
.super Ljava/lang/Object;
.source "ApplockerConfirmPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->startDisappearAnimation(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    iput-object p2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    invoke-virtual {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;->val$intent:Landroid/content/Intent;

    const-string v1, "OP_APP_LOCKER_PACKAGE"

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    invoke-virtual {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getUnlockPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;->val$intent:Landroid/content/Intent;

    const-string v1, "OP_APP_LOCKER_BLOCKING_APP"

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    invoke-virtual {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getBlockingApp()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->setResult(ILandroid/content/Intent;)V

    .line 348
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    invoke-virtual {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->finish()V

    .line 349
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$8;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    const v1, 0x7f050007

    const v2, 0x7f050008

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->overridePendingTransition(II)V

    goto :goto_0
.end method
