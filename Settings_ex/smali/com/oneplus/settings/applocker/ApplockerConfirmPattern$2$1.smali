.class Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$1;
.super Ljava/lang/Object;
.source "ApplockerConfirmPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$1;->this$1:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;

    iput-object p2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$1;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 4
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    .line 251
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$1;->this$1:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;

    iget-object v1, v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    const/4 v2, 0x0

    # setter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$202(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "matched":Z
    if-eqz p1, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 255
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$1;->val$intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$1;->this$1:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;

    iget-object v1, v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    iget-object v1, v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$1;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$1;->val$localEffectiveUserId:I

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 261
    return-void
.end method
