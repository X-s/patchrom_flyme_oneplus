.class Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patternInProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e09a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->-get2(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->-get3(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 246
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
    .line 242
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->-get1(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3
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
    .line 215
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_3

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 217
    const-string/jumbo v1, "null chosen pattern in stage \'need to confirm"

    .line 216
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->handleRightButton()V

    .line 214
    :goto_0
    return-void

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_6

    .line 227
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->handleRightButton()V

    goto :goto_0

    .line 237
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    const-string/jumbo v2, "entering the pattern."

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->-get1(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 207
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;->patternInProgress()V

    .line 205
    return-void
.end method
