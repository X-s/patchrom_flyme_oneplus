.class Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;
.super Ljava/lang/Object;
.source "ApplockerConfirmComplexPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->startDisappearAnimation(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    iput-object p2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    invoke-virtual {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;->val$intent:Landroid/content/Intent;

    const-string v1, "OP_APP_LOCKER_PACKAGE"

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    invoke-virtual {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getUnlockPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;->val$intent:Landroid/content/Intent;

    const-string v1, "OP_APP_LOCKER_BLOCKING_APP"

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    invoke-virtual {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getBlockingApp()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->setResult(ILandroid/content/Intent;)V

    .line 290
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    invoke-virtual {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->finish()V

    .line 291
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    const v1, 0x7f050007

    const v2, 0x7f050008

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->overridePendingTransition(II)V

    goto :goto_0
.end method
