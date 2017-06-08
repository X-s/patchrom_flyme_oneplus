.class Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;
.super Ljava/lang/Object;
.source "ApplockerConfirmPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    iput-object p2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;->val$pin:Ljava/lang/String;

    iput p4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;->val$intent:Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;->val$intent:Landroid/content/Intent;

    const-string v1, "password"

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;->val$pin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    iget-object v0, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$6;->val$localEffectiveUserId:I

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 259
    return-void
.end method
