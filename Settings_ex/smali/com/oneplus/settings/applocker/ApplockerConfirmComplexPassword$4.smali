.class Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;
.super Ljava/lang/Object;
.source "ApplockerConfirmComplexPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    iput-object p2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;->val$pin:Ljava/lang/String;

    iput p4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->access$402(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;->val$intent:Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;->val$intent:Landroid/content/Intent;

    const-string v1, "password"

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;->val$pin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    iget-object v0, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$4;->val$localEffectiveUserId:I

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 269
    return-void
.end method
