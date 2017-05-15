.class Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;
.super Ljava/lang/Object;
.source "ApplockerConfirmPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 4
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 268
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$500(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0c01d8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 269
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 270
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 293
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mEffectiveUserId:I
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$400(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)I

    move-result v0

    .line 275
    .local v0, "localEffectiveUserId":I
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    iget-object v2, v2, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$2;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;Landroid/content/Intent;Ljava/util/List;I)V

    invoke-static {v2, p1, v0, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    # setter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$202(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 8
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mEffectiveUserId:I
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$400(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)I

    move-result v4

    .line 241
    .local v4, "localEffectiveUserId":I
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    invoke-virtual {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 243
    .local v2, "challenge":J
    iget-object v6, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    iget-object v0, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v5, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$1;

    invoke-direct {v5, p0, p2, v4}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2$1;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;Landroid/content/Intent;I)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    # setter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v6, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$202(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 263
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$000(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 212
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v4, 0x0

    .line 219
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$200(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Landroid/os/AsyncTask;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mDisappearing:Z
    invoke-static {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$300(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 225
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    invoke-virtual {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_challenge"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 227
    .local v1, "verifyChallenge":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 231
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$000(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method
