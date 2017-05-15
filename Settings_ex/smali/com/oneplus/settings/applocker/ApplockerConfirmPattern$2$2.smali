.class Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;
.super Ljava/lang/Object;
.source "ApplockerConfirmPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;->this$1:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;

    iput-object p2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;->val$pattern:Ljava/util/List;

    iput p4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;->this$1:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;

    iget-object v0, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$202(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 283
    if-eqz p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;->val$intent:Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;->val$intent:Landroid/content/Intent;

    const-string v1, "password"

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;->val$pattern:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;->this$1:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;

    iget-object v0, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    iget-object v0, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;->val$localEffectiveUserId:I

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 291
    return-void
.end method
