.class Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;
.super Ljava/lang/Object;
.source "OxygenChooseLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patternInProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e09a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-get2(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-get3(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 242
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
    .line 238
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-get1(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 212
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
    .line 217
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_3

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 219
    const-string/jumbo v1, "null chosen pattern in stage \'need to confirm"

    .line 218
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 216
    :goto_0
    return-void

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_6

    .line 226
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 233
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    const-string/jumbo v2, "entering the pattern."

    .line 233
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
    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-get1(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 209
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$1;->patternInProgress()V

    .line 207
    return-void
.end method
