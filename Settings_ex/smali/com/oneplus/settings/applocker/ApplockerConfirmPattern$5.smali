.class Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;
.super Ljava/lang/Object;
.source "ApplockerConfirmPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->startDisappearAnimation(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    iput-object p2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    invoke-virtual {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;->val$intent:Landroid/content/Intent;

    const-string v1, "OP_APP_LOCKER_PACKAGE"

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    invoke-virtual {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getUnlockPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;->val$intent:Landroid/content/Intent;

    const-string v1, "OP_APP_LOCKER_BLOCKING_APP"

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    invoke-virtual {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getBlockingApp()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->setResult(ILandroid/content/Intent;)V

    .line 433
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    invoke-virtual {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->finish()V

    .line 434
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    const v1, 0x7f050007

    const v2, 0x7f050008

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->overridePendingTransition(II)V

    goto :goto_0
.end method
