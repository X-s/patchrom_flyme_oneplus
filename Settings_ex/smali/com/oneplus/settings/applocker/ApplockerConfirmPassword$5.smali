.class Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$5;
.super Ljava/lang/Object;
.source "ApplockerConfirmPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    iput-object p2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$5;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$5;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 4
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    .line 227
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "matched":Z
    if-eqz p1, :cond_0

    .line 230
    const/4 v0, 0x1

    .line 231
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$5;->val$intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$5;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    iget-object v1, v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$5;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$5;->val$localEffectiveUserId:I

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 237
    return-void
.end method
